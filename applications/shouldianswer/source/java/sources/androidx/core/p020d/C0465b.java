package androidx.core.p020d;

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
import androidx.core.graphics.C0573c;
import androidx.core.graphics.C0588i;
import androidx.core.p015a.p016a.C0412c;
import androidx.core.p015a.p016a.C0420f;
import androidx.core.p020d.C0473c;
import androidx.core.p022f.C0502e;
import androidx.p014c.C0380e;
import androidx.p014c.C0387g;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.fabric.sdk.android.services.p068b.AbstractC1468a;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
/* renamed from: androidx.core.d.b */
/* loaded from: classes-dex2jar.jar:androidx/core/d/b.class */
public class C0465b {

    /* renamed from: a */
    static final C0380e<String, Typeface> f1714a = new C0380e<>(16);

    /* renamed from: d */
    private static final C0473c f1717d = new C0473c("fonts", 10, AbstractC1468a.DEFAULT_TIMEOUT);

    /* renamed from: b */
    static final Object f1715b = new Object();

    /* renamed from: c */
    static final C0387g<String, ArrayList<C0473c.AbstractC0478a<C0472c>>> f1716c = new C0387g<>();

    /* renamed from: e */
    private static final Comparator<byte[]> f1718e = new Comparator<byte[]>() { // from class: androidx.core.d.b.4
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v15, types: [int] */
        /* JADX WARN: Type inference failed for: r0v17, types: [int] */
        /* renamed from: a */
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

    /* renamed from: androidx.core.d.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/d/b$a.class */
    public static class C0470a {

        /* renamed from: a */
        private final int f1726a;

        /* renamed from: b */
        private final C0471b[] f1727b;

        public C0470a(int i, C0471b[] c0471bArr) {
            this.f1726a = i;
            this.f1727b = c0471bArr;
        }

        /* renamed from: a */
        public int m6525a() {
            return this.f1726a;
        }

        /* renamed from: b */
        public C0471b[] m6524b() {
            return this.f1727b;
        }
    }

    /* renamed from: androidx.core.d.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/d/b$b.class */
    public static class C0471b {

        /* renamed from: a */
        private final Uri f1728a;

        /* renamed from: b */
        private final int f1729b;

        /* renamed from: c */
        private final int f1730c;

        /* renamed from: d */
        private final boolean f1731d;

        /* renamed from: e */
        private final int f1732e;

        public C0471b(Uri uri, int i, int i2, boolean z, int i3) {
            this.f1728a = (Uri) C0502e.m6462a(uri);
            this.f1729b = i;
            this.f1730c = i2;
            this.f1731d = z;
            this.f1732e = i3;
        }

        /* renamed from: a */
        public Uri m6523a() {
            return this.f1728a;
        }

        /* renamed from: b */
        public int m6522b() {
            return this.f1729b;
        }

        /* renamed from: c */
        public int m6521c() {
            return this.f1730c;
        }

        /* renamed from: d */
        public boolean m6520d() {
            return this.f1731d;
        }

        /* renamed from: e */
        public int m6519e() {
            return this.f1732e;
        }
    }

    /* renamed from: androidx.core.d.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/d/b$c.class */
    public static final class C0472c {

        /* renamed from: a */
        final Typeface f1733a;

        /* renamed from: b */
        final int f1734b;

        C0472c(Typeface typeface, int i) {
            this.f1733a = typeface;
            this.f1734b = i;
        }
    }

    /* renamed from: a */
    public static ProviderInfo m6533a(PackageManager packageManager, C0464a c0464a, Resources resources) {
        String m6544a = c0464a.m6544a();
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(m6544a, 0);
        if (resolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException("No package found for authority: " + m6544a);
        } else if (!resolveContentProvider.packageName.equals(c0464a.m6543b())) {
            throw new PackageManager.NameNotFoundException("Found content provider " + m6544a + ", but package was not " + c0464a.m6543b());
        } else {
            List<byte[]> m6530a = m6530a(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
            Collections.sort(m6530a, f1718e);
            List<List<byte[]>> m6532a = m6532a(c0464a, resources);
            for (int i = 0; i < m6532a.size(); i++) {
                ArrayList arrayList = new ArrayList(m6532a.get(i));
                Collections.sort(arrayList, f1718e);
                if (m6531a(m6530a, arrayList)) {
                    return resolveContentProvider;
                }
            }
            return null;
        }
    }

    /* renamed from: a */
    public static Typeface m6536a(final Context context, final C0464a c0464a, final C0420f.AbstractC0421a abstractC0421a, final Handler handler, boolean z, int i, final int i2) {
        final String str = c0464a.m6539f() + "-" + i2;
        Typeface typeface = f1714a.get(str);
        if (typeface != null) {
            if (abstractC0421a != null) {
                abstractC0421a.onFontRetrieved(typeface);
            }
            return typeface;
        } else if (z && i == -1) {
            C0472c m6537a = m6537a(context, c0464a, i2);
            if (abstractC0421a != null) {
                if (m6537a.f1734b == 0) {
                    abstractC0421a.callbackSuccessAsync(m6537a.f1733a, handler);
                } else {
                    abstractC0421a.callbackFailAsync(m6537a.f1734b, handler);
                }
            }
            return m6537a.f1733a;
        } else {
            Callable<C0472c> callable = new Callable<C0472c>() { // from class: androidx.core.d.b.1
                /* renamed from: a */
                public C0472c call() {
                    C0472c m6537a2 = C0465b.m6537a(context, c0464a, i2);
                    if (m6537a2.f1733a != null) {
                        C0465b.f1714a.put(str, m6537a2.f1733a);
                    }
                    return m6537a2;
                }
            };
            Typeface typeface2 = null;
            if (z) {
                try {
                    typeface2 = ((C0472c) f1717d.m6516a(callable, i)).f1733a;
                } catch (InterruptedException e) {
                }
                return typeface2;
            }
            C0473c.AbstractC0478a<C0472c> abstractC0478a = abstractC0421a == null ? null : new C0473c.AbstractC0478a<C0472c>() { // from class: androidx.core.d.b.2
                /* renamed from: a */
                public void mo6513a(C0472c c0472c) {
                    if (c0472c == null) {
                        abstractC0421a.callbackFailAsync(1, handler);
                    } else if (c0472c.f1734b == 0) {
                        abstractC0421a.callbackSuccessAsync(c0472c.f1733a, handler);
                    } else {
                        abstractC0421a.callbackFailAsync(c0472c.f1734b, handler);
                    }
                }
            };
            synchronized (f1715b) {
                ArrayList<C0473c.AbstractC0478a<C0472c>> arrayList = f1716c.get(str);
                if (arrayList != null) {
                    if (abstractC0478a != null) {
                        arrayList.add(abstractC0478a);
                    }
                    return null;
                }
                if (abstractC0478a != null) {
                    ArrayList<C0473c.AbstractC0478a<C0472c>> arrayList2 = new ArrayList<>();
                    arrayList2.add(abstractC0478a);
                    f1716c.put(str, arrayList2);
                }
                f1717d.m6515a(callable, new C0473c.AbstractC0478a<C0472c>() { // from class: androidx.core.d.b.3
                    /* renamed from: a */
                    public void mo6513a(C0472c c0472c) {
                        synchronized (C0465b.f1715b) {
                            ArrayList<C0473c.AbstractC0478a<C0472c>> arrayList3 = C0465b.f1716c.get(str);
                            if (arrayList3 == null) {
                                return;
                            }
                            C0465b.f1716c.remove(str);
                            for (int i3 = 0; i3 < arrayList3.size(); i3++) {
                                arrayList3.get(i3).mo6513a(c0472c);
                            }
                        }
                    }
                });
                return null;
            }
        }
    }

    /* renamed from: a */
    public static C0470a m6538a(Context context, CancellationSignal cancellationSignal, C0464a c0464a) {
        ProviderInfo m6533a = m6533a(context.getPackageManager(), c0464a, context.getResources());
        return m6533a == null ? new C0470a(1, null) : new C0470a(0, m6535a(context, c0464a, m6533a.authority, cancellationSignal));
    }

    /* renamed from: a */
    static C0472c m6537a(Context context, C0464a c0464a, int i) {
        try {
            C0470a m6538a = m6538a(context, (CancellationSignal) null, c0464a);
            int i2 = -3;
            if (m6538a.m6525a() != 0) {
                if (m6538a.m6525a() == 1) {
                    i2 = -2;
                }
                return new C0472c(null, i2);
            }
            Typeface m6152a = C0573c.m6152a(context, null, m6538a.m6524b(), i);
            if (m6152a != null) {
                i2 = 0;
            }
            return new C0472c(m6152a, i2);
        } catch (PackageManager.NameNotFoundException e) {
            return new C0472c(null, -1);
        }
    }

    /* renamed from: a */
    private static List<List<byte[]>> m6532a(C0464a c0464a, Resources resources) {
        return c0464a.m6541d() != null ? c0464a.m6541d() : C0412c.m6727a(resources, c0464a.m6540e());
    }

    /* renamed from: a */
    private static List<byte[]> m6530a(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    /* renamed from: a */
    public static Map<Uri, ByteBuffer> m6534a(Context context, C0471b[] c0471bArr, CancellationSignal cancellationSignal) {
        HashMap hashMap = new HashMap();
        for (C0471b c0471b : c0471bArr) {
            if (c0471b.m6519e() == 0) {
                Uri m6523a = c0471b.m6523a();
                if (!hashMap.containsKey(m6523a)) {
                    hashMap.put(m6523a, C0588i.m6075a(context, cancellationSignal, m6523a));
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: a */
    private static boolean m6531a(List<byte[]> list, List<byte[]> list2) {
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
    static C0471b[] m6535a(Context context, C0464a c0464a, String str, CancellationSignal cancellationSignal) {
        Cursor cursor;
        ArrayList arrayList = new ArrayList();
        Uri build = new Uri.Builder().scheme(FirebaseAnalytics.Param.CONTENT).authority(str).build();
        Uri build2 = new Uri.Builder().scheme(FirebaseAnalytics.Param.CONTENT).authority(str).appendPath("file").build();
        Cursor cursor2 = null;
        try {
            if (Build.VERSION.SDK_INT > 16) {
                cursor = context.getContentResolver().query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{c0464a.m6542c()}, null, cancellationSignal);
            } else {
                cursor = context.getContentResolver().query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{c0464a.m6542c()}, null);
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
                        arrayList3.add(new C0471b(withAppendedId, i2, i3, z, i));
                    }
                    arrayList2 = arrayList3;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return (C0471b[]) arrayList2.toArray(new C0471b[0]);
        } catch (Throwable th) {
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }
}
