package androidx.core.p033c;

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
import androidx.core.content.res.C0796c;
import androidx.core.content.res.C0804f;
import androidx.core.graphics.C0839d;
import androidx.core.graphics.C0855k;
import androidx.core.p033c.C0780c;
import androidx.core.p036e.C0833d;
import androidx.p023b.C0434e;
import androidx.p023b.C0441g;
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
/* renamed from: androidx.core.c.b */
/* loaded from: classes-dex2jar.jar:androidx/core/c/b.class */
public final class C0772b {

    /* renamed from: a */
    static final C0434e<String, Typeface> f3435a = new C0434e<>(16);

    /* renamed from: d */
    private static final C0780c f3438d = new C0780c("fonts", 10, 10000);

    /* renamed from: b */
    static final Object f3436b = new Object();

    /* renamed from: c */
    static final C0441g<String, ArrayList<C0780c.AbstractC0785a<C0779c>>> f3437c = new C0441g<>();

    /* renamed from: e */
    private static final Comparator<byte[]> f3439e = new Comparator<byte[]>() { // from class: androidx.core.c.b.4
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v20, types: [int] */
        /* JADX WARN: Type inference failed for: r0v22, types: [int] */
        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(byte[] bArr, byte[] bArr2) {
            byte b;
            byte b2;
            byte[] bArr3 = bArr;
            byte[] bArr4 = bArr2;
            if (bArr3.length == bArr4.length) {
                for (int i = 0; i < bArr3.length; i++) {
                    if (bArr3[i] != bArr4[i]) {
                        b = bArr3[i];
                        b2 = bArr4[i];
                    }
                }
                return 0;
            }
            b = bArr3.length;
            b2 = bArr4.length;
            return b - b2;
        }
    };

    /* renamed from: androidx.core.c.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/c/b$a.class */
    public static final class C0777a {

        /* renamed from: a */
        final int f3447a;

        /* renamed from: b */
        final C0778b[] f3448b;

        public C0777a(int i, C0778b[] c0778bArr) {
            this.f3447a = i;
            this.f3448b = c0778bArr;
        }
    }

    /* renamed from: androidx.core.c.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/c/b$b.class */
    public static final class C0778b {

        /* renamed from: a */
        public final Uri f3449a;

        /* renamed from: b */
        public final int f3450b;

        /* renamed from: c */
        public final int f3451c;

        /* renamed from: d */
        public final boolean f3452d;

        /* renamed from: e */
        final int f3453e;

        public C0778b(Uri uri, int i, int i2, boolean z, int i3) {
            this.f3449a = (Uri) C0833d.m44410a(uri);
            this.f3450b = i;
            this.f3451c = i2;
            this.f3452d = z;
            this.f3453e = i3;
        }
    }

    /* renamed from: androidx.core.c.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/c/b$c.class */
    public static final class C0779c {

        /* renamed from: a */
        final Typeface f3454a;

        /* renamed from: b */
        final int f3455b;

        C0779c(Typeface typeface, int i) {
            this.f3454a = typeface;
            this.f3455b = i;
        }
    }

    private C0772b() {
    }

    /* renamed from: a */
    public static Typeface m44518a(final Context context, final C0771a c0771a, final C0804f.AbstractC0805a abstractC0805a, final Handler handler, boolean z, int i, final int i2) {
        final String str = c0771a.f3434f + VerificationLanguage.REGION_PREFIX + i2;
        Typeface typeface = f3435a.get(str);
        if (typeface != null) {
            if (abstractC0805a != null) {
                abstractC0805a.mo10638a(typeface);
            }
            return typeface;
        } else if (z && i == -1) {
            C0779c m44519a = m44519a(context, c0771a, i2);
            if (abstractC0805a != null) {
                if (m44519a.f3455b == 0) {
                    abstractC0805a.m44461a(m44519a.f3454a, handler);
                } else {
                    abstractC0805a.m44462a(m44519a.f3455b, handler);
                }
            }
            return m44519a.f3454a;
        } else {
            final Callable<C0779c> callable = new Callable<C0779c>() { // from class: androidx.core.c.b.1
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ C0779c call() throws Exception {
                    C0779c m44519a2 = C0772b.m44519a(context, c0771a, i2);
                    if (m44519a2.f3454a != null) {
                        C0772b.f3435a.put(str, m44519a2.f3454a);
                    }
                    return m44519a2;
                }
            };
            Typeface typeface2 = null;
            if (z) {
                try {
                    typeface2 = ((C0779c) f3438d.m44512a(callable, i)).f3454a;
                } catch (InterruptedException e) {
                }
                return typeface2;
            }
            C0780c.AbstractC0785a<C0779c> abstractC0785a = abstractC0805a == null ? null : new C0780c.AbstractC0785a<C0779c>() { // from class: androidx.core.c.b.2
                @Override // androidx.core.p033c.C0780c.AbstractC0785a
                /* renamed from: a */
                public final /* bridge */ /* synthetic */ void mo44511a(C0779c c0779c) {
                    C0779c c0779c2 = c0779c;
                    if (c0779c2 == null) {
                        abstractC0805a.m44462a(1, handler);
                    } else if (c0779c2.f3455b == 0) {
                        abstractC0805a.m44461a(c0779c2.f3454a, handler);
                    } else {
                        abstractC0805a.m44462a(c0779c2.f3455b, handler);
                    }
                }
            };
            synchronized (f3436b) {
                C0441g<String, ArrayList<C0780c.AbstractC0785a<C0779c>>> c0441g = f3437c;
                ArrayList<C0780c.AbstractC0785a<C0779c>> arrayList = c0441g.get(str);
                if (arrayList != null) {
                    if (abstractC0785a != null) {
                        arrayList.add(abstractC0785a);
                    }
                    return null;
                }
                if (abstractC0785a != null) {
                    ArrayList<C0780c.AbstractC0785a<C0779c>> arrayList2 = new ArrayList<>();
                    arrayList2.add(abstractC0785a);
                    c0441g.put(str, arrayList2);
                }
                final C0780c c0780c = f3438d;
                final C0780c.AbstractC0785a<C0779c> abstractC0785a2 = new C0780c.AbstractC0785a<C0779c>() { // from class: androidx.core.c.b.3
                    @Override // androidx.core.p033c.C0780c.AbstractC0785a
                    /* renamed from: a */
                    public final /* synthetic */ void mo44511a(C0779c c0779c) {
                        C0779c c0779c2 = c0779c;
                        synchronized (C0772b.f3436b) {
                            ArrayList<C0780c.AbstractC0785a<C0779c>> arrayList3 = C0772b.f3437c.get(str);
                            if (arrayList3 == null) {
                                return;
                            }
                            C0772b.f3437c.remove(str);
                            for (int i3 = 0; i3 < arrayList3.size(); i3++) {
                                arrayList3.get(i3).mo44511a(c0779c2);
                            }
                        }
                    }
                };
                final Handler handler2 = new Handler();
                c0780c.m44513a(new Runnable() { // from class: androidx.core.c.c.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        Object obj;
                        try {
                            obj = callable.call();
                        } catch (Exception e2) {
                            obj = null;
                        }
                        final Object obj2 = obj;
                        handler2.post(new Runnable() { // from class: androidx.core.c.c.2.1
                            {
                                RunnableC07822.this = this;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                abstractC0785a2.mo44511a(obj2);
                            }
                        });
                    }
                });
                return null;
            }
        }
    }

    /* renamed from: a */
    static C0779c m44519a(Context context, C0771a c0771a, int i) {
        ProviderInfo providerInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            Resources resources = context.getResources();
            String str = c0771a.f3429a;
            ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(str, 0);
            if (resolveContentProvider == null) {
                throw new PackageManager.NameNotFoundException("No package found for authority: ".concat(String.valueOf(str)));
            }
            if (!resolveContentProvider.packageName.equals(c0771a.f3430b)) {
                throw new PackageManager.NameNotFoundException("Found content provider " + str + ", but package was not " + c0771a.f3430b);
            }
            List<byte[]> m44514a = m44514a(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
            Collections.sort(m44514a, f3439e);
            List<List<byte[]>> m44477a = c0771a.f3432d != null ? c0771a.f3432d : C0796c.m44477a(resources, c0771a.f3433e);
            int i2 = 0;
            while (true) {
                if (i2 >= m44477a.size()) {
                    providerInfo = null;
                    break;
                }
                ArrayList arrayList = new ArrayList(m44477a.get(i2));
                Collections.sort(arrayList, f3439e);
                if (m44515a(m44514a, arrayList)) {
                    providerInfo = resolveContentProvider;
                    break;
                }
                i2++;
            }
            C0777a c0777a = providerInfo == null ? new C0777a(1, null) : new C0777a(0, m44517a(context, c0771a, providerInfo.authority, null));
            if (c0777a.f3447a == 0) {
                Typeface m44376a = C0839d.m44376a(context, c0777a.f3448b, i);
                return new C0779c(m44376a, m44376a != null ? 0 : -3);
            }
            int i3 = -3;
            if (c0777a.f3447a == 1) {
                i3 = -2;
            }
            return new C0779c(null, i3);
        } catch (PackageManager.NameNotFoundException e) {
            return new C0779c(null, -1);
        }
    }

    /* renamed from: a */
    private static List<byte[]> m44514a(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    /* renamed from: a */
    public static Map<Uri, ByteBuffer> m44516a(Context context, C0778b[] c0778bArr, CancellationSignal cancellationSignal) {
        HashMap hashMap = new HashMap();
        for (C0778b c0778b : c0778bArr) {
            if (c0778b.f3453e == 0) {
                Uri uri = c0778b.f3449a;
                if (!hashMap.containsKey(uri)) {
                    hashMap.put(uri, C0855k.m44308a(context, cancellationSignal, uri));
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: a */
    private static boolean m44515a(List<byte[]> list, List<byte[]> list2) {
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

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private static C0778b[] m44517a(Context context, C0771a c0771a, String str, CancellationSignal cancellationSignal) {
        Cursor cursor;
        ArrayList arrayList = new ArrayList();
        Uri build = new Uri.Builder().scheme(Constants.VAST_TRACKER_CONTENT).authority(str).build();
        Uri build2 = new Uri.Builder().scheme(Constants.VAST_TRACKER_CONTENT).authority(str).appendPath("file").build();
        Cursor cursor2 = null;
        try {
            if (Build.VERSION.SDK_INT > 16) {
                cursor = context.getContentResolver().query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{c0771a.f3431c}, null, null);
            } else {
                cursor = context.getContentResolver().query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{c0771a.f3431c}, null);
            }
            ArrayList arrayList2 = arrayList;
            if (cursor != null) {
                arrayList2 = arrayList;
                if (cursor.getCount() > 0) {
                    Cursor cursor3 = cursor;
                    int columnIndex = cursor.getColumnIndex("result_code");
                    Cursor cursor4 = cursor;
                    Cursor cursor5 = cursor;
                    ArrayList arrayList3 = new ArrayList();
                    Cursor cursor6 = cursor;
                    int columnIndex2 = cursor.getColumnIndex("_id");
                    Cursor cursor7 = cursor;
                    int columnIndex3 = cursor.getColumnIndex("file_id");
                    Cursor cursor8 = cursor;
                    int columnIndex4 = cursor.getColumnIndex("font_ttc_index");
                    Cursor cursor9 = cursor;
                    int columnIndex5 = cursor.getColumnIndex("font_weight");
                    Cursor cursor10 = cursor;
                    int columnIndex6 = cursor.getColumnIndex("font_italic");
                    while (true) {
                        arrayList2 = arrayList3;
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
                        arrayList3.add(new C0778b(withAppendedId, i2, i3, z, i));
                    }
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return (C0778b[]) arrayList2.toArray(new C0778b[0]);
        } catch (Throwable th) {
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }
}
