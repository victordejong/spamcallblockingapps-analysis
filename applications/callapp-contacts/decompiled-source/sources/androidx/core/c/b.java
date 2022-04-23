package androidx.core.c;

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
import androidx.b.e;
import androidx.b.g;
import androidx.core.c.c;
import androidx.core.content.res.f;
import androidx.core.e.d;
import androidx.core.graphics.k;
import com.mopub.common.Constants;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:androidx/core/c/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final e<String, Typeface> f1789a = new e<>(16);

    /* renamed from: d  reason: collision with root package name */
    private static final androidx.core.c.c f1792d = new androidx.core.c.c("fonts", 10, 10000);

    /* renamed from: b  reason: collision with root package name */
    static final Object f1790b = new Object();

    /* renamed from: c  reason: collision with root package name */
    static final g<String, ArrayList<c.a<c>>> f1791c = new g<>();
    private static final Comparator<byte[]> e = new Comparator<byte[]>() { // from class: androidx.core.c.b.4
        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(byte[] bArr, byte[] bArr2) {
            int i;
            int i2;
            byte[] bArr3 = bArr;
            byte[] bArr4 = bArr2;
            if (bArr3.length != bArr4.length) {
                i2 = bArr3.length;
                i = bArr4.length;
            } else {
                for (int i3 = 0; i3 < bArr3.length; i3++) {
                    if (bArr3[i3] != bArr4[i3]) {
                        byte b2 = bArr3[i3];
                        byte b3 = bArr4[i3];
                        i2 = b2;
                        i = b3;
                    }
                }
                return 0;
            }
            return i2 - i;
        }
    };

    /* loaded from: classes-dex2jar.jar:androidx/core/c/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final int f1800a;

        /* renamed from: b  reason: collision with root package name */
        final C0043b[] f1801b;

        public a(int i, C0043b[] bVarArr) {
            this.f1800a = i;
            this.f1801b = bVarArr;
        }
    }

    /* renamed from: androidx.core.c.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/core/c/b$b.class */
    public static final class C0043b {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f1802a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1803b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1804c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f1805d;
        final int e;

        public C0043b(Uri uri, int i, int i2, boolean z, int i3) {
            this.f1802a = (Uri) d.a(uri);
            this.f1803b = i;
            this.f1804c = i2;
            this.f1805d = z;
            this.e = i3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/c/b$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        final Typeface f1806a;

        /* renamed from: b  reason: collision with root package name */
        final int f1807b;

        c(Typeface typeface, int i) {
            this.f1806a = typeface;
            this.f1807b = i;
        }
    }

    private b() {
    }

    public static Typeface a(final Context context, final androidx.core.c.a aVar, final f.a aVar2, final Handler handler, boolean z, int i, final int i2) {
        final String str = aVar.f + VerificationLanguage.REGION_PREFIX + i2;
        Typeface typeface = f1789a.get(str);
        if (typeface != null) {
            if (aVar2 != null) {
                aVar2.a(typeface);
            }
            return typeface;
        } else if (!z || i != -1) {
            final Callable<c> callable = new Callable<c>() { // from class: androidx.core.c.b.1
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ c call() throws Exception {
                    c a2 = b.a(context, aVar, i2);
                    if (a2.f1806a != null) {
                        b.f1789a.put(str, a2.f1806a);
                    }
                    return a2;
                }
            };
            Typeface typeface2 = null;
            if (z) {
                try {
                    typeface2 = ((c) f1792d.a(callable, i)).f1806a;
                } catch (InterruptedException e2) {
                }
                return typeface2;
            }
            c.a<c> aVar3 = aVar2 == null ? null : new c.a<c>() { // from class: androidx.core.c.b.2
                @Override // androidx.core.c.c.a
                public final /* bridge */ /* synthetic */ void a(c cVar) {
                    c cVar2 = cVar;
                    if (cVar2 == null) {
                        f.a.this.a(1, handler);
                    } else if (cVar2.f1807b == 0) {
                        f.a.this.a(cVar2.f1806a, handler);
                    } else {
                        f.a.this.a(cVar2.f1807b, handler);
                    }
                }
            };
            synchronized (f1790b) {
                g<String, ArrayList<c.a<c>>> gVar = f1791c;
                ArrayList<c.a<c>> arrayList = gVar.get(str);
                if (arrayList != null) {
                    if (aVar3 != null) {
                        arrayList.add(aVar3);
                    }
                    return null;
                }
                if (aVar3 != null) {
                    ArrayList<c.a<c>> arrayList2 = new ArrayList<>();
                    arrayList2.add(aVar3);
                    gVar.put(str, arrayList2);
                }
                final androidx.core.c.c cVar = f1792d;
                final c.a<c> aVar4 = new c.a<c>() { // from class: androidx.core.c.b.3
                    @Override // androidx.core.c.c.a
                    public final /* synthetic */ void a(c cVar2) {
                        c cVar3 = cVar2;
                        synchronized (b.f1790b) {
                            ArrayList<c.a<c>> arrayList3 = b.f1791c.get(str);
                            if (arrayList3 != null) {
                                b.f1791c.remove(str);
                                for (int i3 = 0; i3 < arrayList3.size(); i3++) {
                                    arrayList3.get(i3).a(cVar3);
                                }
                            }
                        }
                    }
                };
                final Handler handler2 = new Handler();
                cVar.a(new Runnable() { // from class: androidx.core.c.c.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        final Object obj;
                        try {
                            obj = callable.call();
                        } catch (Exception e3) {
                            obj = null;
                        }
                        handler2.post(new Runnable() { // from class: androidx.core.c.c.2.1
                            {
                                AnonymousClass2.this = this;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                aVar4.a(obj);
                            }
                        });
                    }
                });
                return null;
            }
        } else {
            c a2 = a(context, aVar, i2);
            if (aVar2 != null) {
                if (a2.f1807b == 0) {
                    aVar2.a(a2.f1806a, handler);
                } else {
                    aVar2.a(a2.f1807b, handler);
                }
            }
            return a2.f1806a;
        }
    }

    static c a(Context context, androidx.core.c.a aVar, int i) {
        ProviderInfo providerInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            Resources resources = context.getResources();
            String str = aVar.f1785a;
            int i2 = 0;
            ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(str, 0);
            if (resolveContentProvider == null) {
                throw new PackageManager.NameNotFoundException("No package found for authority: ".concat(String.valueOf(str)));
            } else if (resolveContentProvider.packageName.equals(aVar.f1786b)) {
                List<byte[]> a2 = a(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
                Collections.sort(a2, e);
                List<List<byte[]>> a3 = aVar.f1788d != null ? aVar.f1788d : androidx.core.content.res.c.a(resources, aVar.e);
                int i3 = 0;
                while (true) {
                    if (i3 >= a3.size()) {
                        providerInfo = null;
                        break;
                    }
                    ArrayList arrayList = new ArrayList(a3.get(i3));
                    Collections.sort(arrayList, e);
                    if (a(a2, arrayList)) {
                        providerInfo = resolveContentProvider;
                        break;
                    }
                    i3++;
                }
                a aVar2 = providerInfo == null ? new a(1, null) : new a(0, a(context, aVar, providerInfo.authority, null));
                int i4 = -3;
                if (aVar2.f1800a == 0) {
                    Typeface a4 = androidx.core.graphics.d.a(context, aVar2.f1801b, i);
                    if (a4 == null) {
                        i2 = -3;
                    }
                    return new c(a4, i2);
                }
                if (aVar2.f1800a == 1) {
                    i4 = -2;
                }
                return new c(null, i4);
            } else {
                throw new PackageManager.NameNotFoundException("Found content provider " + str + ", but package was not " + aVar.f1786b);
            }
        } catch (PackageManager.NameNotFoundException e2) {
            return new c(null, -1);
        }
    }

    private static List<byte[]> a(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    public static Map<Uri, ByteBuffer> a(Context context, C0043b[] bVarArr, CancellationSignal cancellationSignal) {
        HashMap hashMap = new HashMap();
        for (C0043b bVar : bVarArr) {
            if (bVar.e == 0) {
                Uri uri = bVar.f1802a;
                if (!hashMap.containsKey(uri)) {
                    hashMap.put(uri, k.a(context, cancellationSignal, uri));
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    private static boolean a(List<byte[]> list, List<byte[]> list2) {
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

    private static C0043b[] a(Context context, androidx.core.c.a aVar, String str, CancellationSignal cancellationSignal) {
        Cursor cursor;
        ArrayList arrayList = new ArrayList();
        Uri build = new Uri.Builder().scheme(Constants.VAST_TRACKER_CONTENT).authority(str).build();
        Uri build2 = new Uri.Builder().scheme(Constants.VAST_TRACKER_CONTENT).authority(str).appendPath("file").build();
        Cursor cursor2 = null;
        try {
            if (Build.VERSION.SDK_INT > 16) {
                cursor = context.getContentResolver().query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{aVar.f1787c}, null, null);
            } else {
                cursor = context.getContentResolver().query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{aVar.f1787c}, null);
            }
            ArrayList arrayList2 = arrayList;
            if (cursor != null) {
                arrayList2 = arrayList;
                if (cursor.getCount() > 0) {
                    int columnIndex = cursor.getColumnIndex("result_code");
                    ArrayList arrayList3 = new ArrayList();
                    int columnIndex2 = cursor.getColumnIndex("_id");
                    int columnIndex3 = cursor.getColumnIndex("file_id");
                    int columnIndex4 = cursor.getColumnIndex("font_ttc_index");
                    int columnIndex5 = cursor.getColumnIndex("font_weight");
                    int columnIndex6 = cursor.getColumnIndex("font_italic");
                    while (true) {
                        arrayList2 = arrayList3;
                        cursor2 = cursor;
                        if (!cursor.moveToNext()) {
                            break;
                        }
                        int i = columnIndex != -1 ? cursor.getInt(columnIndex) : 0;
                        arrayList3.add(new C0043b(columnIndex3 == -1 ? ContentUris.withAppendedId(build, cursor.getLong(columnIndex2)) : ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3)), columnIndex4 != -1 ? cursor.getInt(columnIndex4) : 0, columnIndex5 != -1 ? cursor.getInt(columnIndex5) : 400, columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1, i));
                    }
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return (C0043b[]) arrayList2.toArray(new C0043b[0]);
        } catch (Throwable th) {
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }
}
