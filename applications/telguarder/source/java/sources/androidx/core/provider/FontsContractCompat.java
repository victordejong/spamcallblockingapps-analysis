package androidx.core.provider;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import android.provider.BaseColumns;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.graphics.TypefaceCompatUtil;
import androidx.core.provider.SelfDestructiveThread;
import androidx.core.util.Preconditions;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.j256.ormlite.field.FieldType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:androidx/core/provider/FontsContractCompat.class */
public class FontsContractCompat {
    private static final int BACKGROUND_THREAD_KEEP_ALIVE_DURATION_MS = 10000;
    public static final String PARCEL_FONT_RESULTS = "font_results";
    static final int RESULT_CODE_PROVIDER_NOT_FOUND = -1;
    static final int RESULT_CODE_WRONG_CERTIFICATES = -2;
    static final LruCache<String, Typeface> sTypefaceCache = new LruCache<>(16);
    private static final SelfDestructiveThread sBackgroundThread = new SelfDestructiveThread("fonts", 10, 10000);
    static final Object sLock = new Object();
    static final SimpleArrayMap<String, ArrayList<SelfDestructiveThread.ReplyCallback<TypefaceResult>>> sPendingReplies = new SimpleArrayMap<>();
    private static final Comparator<byte[]> sByteArrayComparator = new Comparator<byte[]>() { // from class: androidx.core.provider.FontsContractCompat.5
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v15, types: [int] */
        /* JADX WARN: Type inference failed for: r0v17, types: [int] */
        public int compare(byte[] bArr, byte[] bArr2) {
            byte b;
            byte b2;
            if (bArr.length == bArr2.length) {
                for (int i = 0; i < bArr.length; i++) {
                    if (bArr[i] != bArr2[i]) {
                        byte b3 = bArr[i];
                        b = bArr2[i];
                        b2 = b3;
                    }
                }
                return 0;
            }
            b2 = bArr.length;
            b = bArr2.length;
            return b2 - b;
        }
    };

    /* loaded from: classes-dex2jar.jar:androidx/core/provider/FontsContractCompat$Columns.class */
    public static final class Columns implements BaseColumns {
        public static final String FILE_ID = "file_id";
        public static final String ITALIC = "font_italic";
        public static final String RESULT_CODE = "result_code";
        public static final int RESULT_CODE_FONT_NOT_FOUND = 1;
        public static final int RESULT_CODE_FONT_UNAVAILABLE = 2;
        public static final int RESULT_CODE_MALFORMED_QUERY = 3;
        public static final int RESULT_CODE_OK = 0;
        public static final String TTC_INDEX = "font_ttc_index";
        public static final String VARIATION_SETTINGS = "font_variation_settings";
        public static final String WEIGHT = "font_weight";
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/provider/FontsContractCompat$FontFamilyResult.class */
    public static class FontFamilyResult {
        public static final int STATUS_OK = 0;
        public static final int STATUS_UNEXPECTED_DATA_PROVIDED = 2;
        public static final int STATUS_WRONG_CERTIFICATES = 1;
        private final FontInfo[] mFonts;
        private final int mStatusCode;

        public FontFamilyResult(int i, FontInfo[] fontInfoArr) {
            this.mStatusCode = i;
            this.mFonts = fontInfoArr;
        }

        public FontInfo[] getFonts() {
            return this.mFonts;
        }

        public int getStatusCode() {
            return this.mStatusCode;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/provider/FontsContractCompat$FontInfo.class */
    public static class FontInfo {
        private final boolean mItalic;
        private final int mResultCode;
        private final int mTtcIndex;
        private final Uri mUri;
        private final int mWeight;

        public FontInfo(Uri uri, int i, int i2, boolean z, int i3) {
            this.mUri = (Uri) Preconditions.checkNotNull(uri);
            this.mTtcIndex = i;
            this.mWeight = i2;
            this.mItalic = z;
            this.mResultCode = i3;
        }

        public int getResultCode() {
            return this.mResultCode;
        }

        public int getTtcIndex() {
            return this.mTtcIndex;
        }

        public Uri getUri() {
            return this.mUri;
        }

        public int getWeight() {
            return this.mWeight;
        }

        public boolean isItalic() {
            return this.mItalic;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/provider/FontsContractCompat$FontRequestCallback.class */
    public static class FontRequestCallback {
        public static final int FAIL_REASON_FONT_LOAD_ERROR = -3;
        public static final int FAIL_REASON_FONT_NOT_FOUND = 1;
        public static final int FAIL_REASON_FONT_UNAVAILABLE = 2;
        public static final int FAIL_REASON_MALFORMED_QUERY = 3;
        public static final int FAIL_REASON_PROVIDER_NOT_FOUND = -1;
        public static final int FAIL_REASON_SECURITY_VIOLATION = -4;
        public static final int FAIL_REASON_WRONG_CERTIFICATES = -2;
        public static final int RESULT_OK = 0;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes-dex2jar.jar:androidx/core/provider/FontsContractCompat$FontRequestCallback$FontRequestFailReason.class */
        public @interface FontRequestFailReason {
        }

        public void onTypefaceRequestFailed(int i) {
        }

        public void onTypefaceRetrieved(Typeface typeface) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/provider/FontsContractCompat$TypefaceResult.class */
    public static final class TypefaceResult {
        final int mResult;
        final Typeface mTypeface;

        TypefaceResult(Typeface typeface, int i) {
            this.mTypeface = typeface;
            this.mResult = i;
        }
    }

    private FontsContractCompat() {
    }

    public static Typeface buildTypeface(Context context, CancellationSignal cancellationSignal, FontInfo[] fontInfoArr) {
        return TypefaceCompat.createFromFontInfo(context, cancellationSignal, fontInfoArr, 0);
    }

    private static List<byte[]> convertToByteArrayList(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    private static boolean equalsByteArrayList(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!Arrays.equals(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    public static FontFamilyResult fetchFonts(Context context, CancellationSignal cancellationSignal, FontRequest fontRequest) throws PackageManager.NameNotFoundException {
        ProviderInfo provider = getProvider(context.getPackageManager(), fontRequest, context.getResources());
        return provider == null ? new FontFamilyResult(1, null) : new FontFamilyResult(0, getFontFromProvider(context, fontRequest, provider.authority, cancellationSignal));
    }

    private static List<List<byte[]>> getCertificates(FontRequest fontRequest, Resources resources) {
        return fontRequest.getCertificates() != null ? fontRequest.getCertificates() : FontResourcesParserCompat.readCerts(resources, fontRequest.getCertificatesArrayResId());
    }

    /* JADX WARN: Finally extract failed */
    static FontInfo[] getFontFromProvider(Context context, FontRequest fontRequest, String str, CancellationSignal cancellationSignal) {
        Cursor cursor;
        ArrayList arrayList = new ArrayList();
        Uri build = new Uri.Builder().scheme(FirebaseAnalytics.Param.CONTENT).authority(str).build();
        Uri build2 = new Uri.Builder().scheme(FirebaseAnalytics.Param.CONTENT).authority(str).appendPath("file").build();
        Cursor cursor2 = null;
        try {
            if (Build.VERSION.SDK_INT > 16) {
                cursor = context.getContentResolver().query(build, new String[]{FieldType.FOREIGN_ID_FIELD_SUFFIX, Columns.FILE_ID, Columns.TTC_INDEX, Columns.VARIATION_SETTINGS, Columns.WEIGHT, Columns.ITALIC, Columns.RESULT_CODE}, "query = ?", new String[]{fontRequest.getQuery()}, null, cancellationSignal);
            } else {
                cursor = context.getContentResolver().query(build, new String[]{FieldType.FOREIGN_ID_FIELD_SUFFIX, Columns.FILE_ID, Columns.TTC_INDEX, Columns.VARIATION_SETTINGS, Columns.WEIGHT, Columns.ITALIC, Columns.RESULT_CODE}, "query = ?", new String[]{fontRequest.getQuery()}, null);
            }
            ArrayList arrayList2 = arrayList;
            if (cursor != null) {
                arrayList2 = arrayList;
                if (cursor.getCount() > 0) {
                    Cursor cursor3 = cursor;
                    int columnIndex = cursor.getColumnIndex(Columns.RESULT_CODE);
                    Cursor cursor4 = cursor;
                    Cursor cursor5 = cursor;
                    ArrayList arrayList3 = new ArrayList();
                    Cursor cursor6 = cursor;
                    int columnIndex2 = cursor.getColumnIndex(FieldType.FOREIGN_ID_FIELD_SUFFIX);
                    Cursor cursor7 = cursor;
                    int columnIndex3 = cursor.getColumnIndex(Columns.FILE_ID);
                    Cursor cursor8 = cursor;
                    int columnIndex4 = cursor.getColumnIndex(Columns.TTC_INDEX);
                    Cursor cursor9 = cursor;
                    int columnIndex5 = cursor.getColumnIndex(Columns.WEIGHT);
                    Cursor cursor10 = cursor;
                    int columnIndex6 = cursor.getColumnIndex(Columns.ITALIC);
                    while (true) {
                        cursor2 = cursor;
                        if (!cursor.moveToNext()) {
                            break;
                        }
                        int i = columnIndex != -1 ? cursor.getInt(columnIndex) : 0;
                        int i2 = columnIndex4 != -1 ? cursor.getInt(columnIndex4) : 0;
                        Uri withAppendedId = columnIndex3 == -1 ? ContentUris.withAppendedId(build, cursor.getLong(columnIndex2)) : ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3));
                        int i3 = columnIndex5 != -1 ? cursor.getInt(columnIndex5) : 400;
                        boolean z = columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1;
                        Cursor cursor11 = cursor;
                        Cursor cursor12 = cursor;
                        arrayList3.add(new FontInfo(withAppendedId, i2, i3, z, i));
                    }
                    arrayList2 = arrayList3;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return (FontInfo[]) arrayList2.toArray(new FontInfo[0]);
        } catch (Throwable th) {
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    static TypefaceResult getFontInternal(Context context, FontRequest fontRequest, int i) {
        try {
            FontFamilyResult fetchFonts = fetchFonts(context, null, fontRequest);
            int i2 = -3;
            if (fetchFonts.getStatusCode() != 0) {
                if (fetchFonts.getStatusCode() == 1) {
                    i2 = -2;
                }
                return new TypefaceResult(null, i2);
            }
            Typeface createFromFontInfo = TypefaceCompat.createFromFontInfo(context, null, fetchFonts.getFonts(), i);
            if (createFromFontInfo != null) {
                i2 = 0;
            }
            return new TypefaceResult(createFromFontInfo, i2);
        } catch (PackageManager.NameNotFoundException e) {
            return new TypefaceResult(null, -1);
        }
    }

    public static Typeface getFontSync(final Context context, final FontRequest fontRequest, final ResourcesCompat.FontCallback fontCallback, final Handler handler, boolean z, int i, final int i2) {
        final String str = fontRequest.getIdentifier() + "-" + i2;
        Typeface typeface = sTypefaceCache.get(str);
        if (typeface != null) {
            if (fontCallback != null) {
                fontCallback.onFontRetrieved(typeface);
            }
            return typeface;
        } else if (z && i == -1) {
            TypefaceResult fontInternal = getFontInternal(context, fontRequest, i2);
            if (fontCallback != null) {
                if (fontInternal.mResult == 0) {
                    fontCallback.callbackSuccessAsync(fontInternal.mTypeface, handler);
                } else {
                    fontCallback.callbackFailAsync(fontInternal.mResult, handler);
                }
            }
            return fontInternal.mTypeface;
        } else {
            Callable<TypefaceResult> callable = new Callable<TypefaceResult>() { // from class: androidx.core.provider.FontsContractCompat.1
                @Override // java.util.concurrent.Callable
                public TypefaceResult call() throws Exception {
                    TypefaceResult fontInternal2 = FontsContractCompat.getFontInternal(context, fontRequest, i2);
                    if (fontInternal2.mTypeface != null) {
                        FontsContractCompat.sTypefaceCache.put(str, fontInternal2.mTypeface);
                    }
                    return fontInternal2;
                }
            };
            Typeface typeface2 = null;
            if (z) {
                try {
                    typeface2 = ((TypefaceResult) sBackgroundThread.postAndWait(callable, i)).mTypeface;
                } catch (InterruptedException e) {
                }
                return typeface2;
            }
            SelfDestructiveThread.ReplyCallback<TypefaceResult> replyCallback = fontCallback == null ? null : new SelfDestructiveThread.ReplyCallback<TypefaceResult>() { // from class: androidx.core.provider.FontsContractCompat.2
                public void onReply(TypefaceResult typefaceResult) {
                    if (typefaceResult == null) {
                        fontCallback.callbackFailAsync(1, handler);
                    } else if (typefaceResult.mResult == 0) {
                        fontCallback.callbackSuccessAsync(typefaceResult.mTypeface, handler);
                    } else {
                        fontCallback.callbackFailAsync(typefaceResult.mResult, handler);
                    }
                }
            };
            synchronized (sLock) {
                SimpleArrayMap<String, ArrayList<SelfDestructiveThread.ReplyCallback<TypefaceResult>>> simpleArrayMap = sPendingReplies;
                ArrayList<SelfDestructiveThread.ReplyCallback<TypefaceResult>> arrayList = simpleArrayMap.get(str);
                if (arrayList != null) {
                    if (replyCallback != null) {
                        arrayList.add(replyCallback);
                    }
                    return null;
                }
                if (replyCallback != null) {
                    ArrayList<SelfDestructiveThread.ReplyCallback<TypefaceResult>> arrayList2 = new ArrayList<>();
                    arrayList2.add(replyCallback);
                    simpleArrayMap.put(str, arrayList2);
                }
                sBackgroundThread.postAndReply(callable, new SelfDestructiveThread.ReplyCallback<TypefaceResult>() { // from class: androidx.core.provider.FontsContractCompat.3
                    public void onReply(TypefaceResult typefaceResult) {
                        synchronized (FontsContractCompat.sLock) {
                            ArrayList<SelfDestructiveThread.ReplyCallback<TypefaceResult>> arrayList3 = FontsContractCompat.sPendingReplies.get(str);
                            if (arrayList3 == null) {
                                return;
                            }
                            FontsContractCompat.sPendingReplies.remove(str);
                            for (int i3 = 0; i3 < arrayList3.size(); i3++) {
                                arrayList3.get(i3).onReply(typefaceResult);
                            }
                        }
                    }
                });
                return null;
            }
        }
    }

    public static ProviderInfo getProvider(PackageManager packageManager, FontRequest fontRequest, Resources resources) throws PackageManager.NameNotFoundException {
        String providerAuthority = fontRequest.getProviderAuthority();
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(providerAuthority, 0);
        if (resolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException("No package found for authority: " + providerAuthority);
        } else if (!resolveContentProvider.packageName.equals(fontRequest.getProviderPackage())) {
            throw new PackageManager.NameNotFoundException("Found content provider " + providerAuthority + ", but package was not " + fontRequest.getProviderPackage());
        } else {
            List<byte[]> convertToByteArrayList = convertToByteArrayList(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
            Collections.sort(convertToByteArrayList, sByteArrayComparator);
            List<List<byte[]>> certificates = getCertificates(fontRequest, resources);
            for (int i = 0; i < certificates.size(); i++) {
                ArrayList arrayList = new ArrayList(certificates.get(i));
                Collections.sort(arrayList, sByteArrayComparator);
                if (equalsByteArrayList(convertToByteArrayList, arrayList)) {
                    return resolveContentProvider;
                }
            }
            return null;
        }
    }

    public static Map<Uri, ByteBuffer> prepareFontData(Context context, FontInfo[] fontInfoArr, CancellationSignal cancellationSignal) {
        HashMap hashMap = new HashMap();
        for (FontInfo fontInfo : fontInfoArr) {
            if (fontInfo.getResultCode() == 0) {
                Uri uri = fontInfo.getUri();
                if (!hashMap.containsKey(uri)) {
                    hashMap.put(uri, TypefaceCompatUtil.mmap(context, cancellationSignal, uri));
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    public static void requestFont(Context context, FontRequest fontRequest, FontRequestCallback fontRequestCallback, Handler handler) {
        requestFontInternal(context.getApplicationContext(), fontRequest, fontRequestCallback, handler);
    }

    private static void requestFontInternal(final Context context, final FontRequest fontRequest, final FontRequestCallback fontRequestCallback, Handler handler) {
        final Handler handler2 = new Handler();
        handler.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    FontFamilyResult fetchFonts = FontsContractCompat.fetchFonts(context, null, fontRequest);
                    if (fetchFonts.getStatusCode() != 0) {
                        int statusCode = fetchFonts.getStatusCode();
                        if (statusCode == 1) {
                            handler2.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    fontRequestCallback.onTypefaceRequestFailed(-2);
                                }
                            });
                            return;
                        } else if (statusCode != 2) {
                            handler2.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.4
                                @Override // java.lang.Runnable
                                public void run() {
                                    fontRequestCallback.onTypefaceRequestFailed(-3);
                                }
                            });
                            return;
                        } else {
                            handler2.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    fontRequestCallback.onTypefaceRequestFailed(-3);
                                }
                            });
                            return;
                        }
                    }
                    FontInfo[] fonts = fetchFonts.getFonts();
                    if (fonts == null || fonts.length == 0) {
                        handler2.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.5
                            @Override // java.lang.Runnable
                            public void run() {
                                fontRequestCallback.onTypefaceRequestFailed(1);
                            }
                        });
                        return;
                    }
                    for (FontInfo fontInfo : fonts) {
                        if (fontInfo.getResultCode() != 0) {
                            final int resultCode = fontInfo.getResultCode();
                            if (resultCode < 0) {
                                handler2.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.6
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        fontRequestCallback.onTypefaceRequestFailed(-3);
                                    }
                                });
                                return;
                            } else {
                                handler2.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.7
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        fontRequestCallback.onTypefaceRequestFailed(resultCode);
                                    }
                                });
                                return;
                            }
                        }
                    }
                    final Typeface buildTypeface = FontsContractCompat.buildTypeface(context, null, fonts);
                    if (buildTypeface == null) {
                        handler2.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.8
                            @Override // java.lang.Runnable
                            public void run() {
                                fontRequestCallback.onTypefaceRequestFailed(-3);
                            }
                        });
                    } else {
                        handler2.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.9
                            @Override // java.lang.Runnable
                            public void run() {
                                fontRequestCallback.onTypefaceRetrieved(buildTypeface);
                            }
                        });
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    handler2.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            fontRequestCallback.onTypefaceRequestFailed(-1);
                        }
                    });
                }
            }
        });
    }

    public static void resetCache() {
        sTypefaceCache.evictAll();
    }
}
