package androidx.core.p023e;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.core.graphics.C0533c;
import androidx.core.graphics.C0548i;
import androidx.core.p017a.p018a.C0441c;
import androidx.core.p017a.p018a.C0449f;
import androidx.core.p023e.C0497c;
import androidx.core.p025g.C0527f;
import androidx.p013b.C0379e;
import androidx.p013b.C0386g;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
/* renamed from: androidx.core.e.b */
/* loaded from: classes-dex2jar.jar:androidx/core/e/b.class */
public class C0489b {

    /* renamed from: a */
    static final C0379e<String, Typeface> f1865a = new C0379e<>(16);

    /* renamed from: d */
    private static final C0497c f1868d = new C0497c("fonts", 10, 10000);

    /* renamed from: b */
    static final Object f1866b = new Object();

    /* renamed from: c */
    static final C0386g<String, ArrayList<C0497c.AbstractC0502a<C0496c>>> f1867c = new C0386g<>();

    /* renamed from: e */
    private static final Comparator<byte[]> f1869e = new Comparator<byte[]>() { // from class: androidx.core.e.b.4
        /* renamed from: a */
        public int compare(byte[] bArr, byte[] bArr2) {
            int i;
            if (bArr.length != bArr2.length) {
                i = bArr.length - bArr2.length;
            } else {
                int i2 = 0;
                while (true) {
                    i = 0;
                    if (i2 >= bArr.length) {
                        break;
                    } else if (bArr[i2] != bArr2[i2]) {
                        i = bArr[i2] - bArr2[i2];
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            return i;
        }
    };

    /* renamed from: androidx.core.e.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/b$a.class */
    public static class C0494a {

        /* renamed from: a */
        private final int f1877a;

        /* renamed from: b */
        private final C0495b[] f1878b;

        public C0494a(int i, C0495b[] c0495bArr) {
            this.f1877a = i;
            this.f1878b = c0495bArr;
        }

        /* renamed from: a */
        public int m20705a() {
            return this.f1877a;
        }

        /* renamed from: b */
        public C0495b[] m20704b() {
            return this.f1878b;
        }
    }

    /* renamed from: androidx.core.e.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/b$b.class */
    public static class C0495b {

        /* renamed from: a */
        private final Uri f1879a;

        /* renamed from: b */
        private final int f1880b;

        /* renamed from: c */
        private final int f1881c;

        /* renamed from: d */
        private final boolean f1882d;

        /* renamed from: e */
        private final int f1883e;

        public C0495b(Uri uri, int i, int i2, boolean z, int i3) {
            this.f1879a = (Uri) C0527f.m20644a(uri);
            this.f1880b = i;
            this.f1881c = i2;
            this.f1882d = z;
            this.f1883e = i3;
        }

        /* renamed from: a */
        public Uri m20703a() {
            return this.f1879a;
        }

        /* renamed from: b */
        public int m20702b() {
            return this.f1880b;
        }

        /* renamed from: c */
        public int m20701c() {
            return this.f1881c;
        }

        /* renamed from: d */
        public boolean m20700d() {
            return this.f1882d;
        }

        /* renamed from: e */
        public int m20699e() {
            return this.f1883e;
        }
    }

    /* renamed from: androidx.core.e.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/b$c.class */
    public static final class C0496c {

        /* renamed from: a */
        final Typeface f1884a;

        /* renamed from: b */
        final int f1885b;

        C0496c(Typeface typeface, int i) {
            this.f1884a = typeface;
            this.f1885b = i;
        }
    }

    /* renamed from: a */
    public static ProviderInfo m20713a(PackageManager packageManager, C0488a c0488a, Resources resources) {
        ProviderInfo providerInfo;
        String m20724a = c0488a.m20724a();
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(m20724a, 0);
        if (resolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException("No package found for authority: " + m20724a);
        }
        if (!resolveContentProvider.packageName.equals(c0488a.m20723b())) {
            throw new PackageManager.NameNotFoundException("Found content provider " + m20724a + ", but package was not " + c0488a.m20723b());
        }
        List<byte[]> m20710a = m20710a(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
        Collections.sort(m20710a, f1869e);
        List<List<byte[]>> m20712a = m20712a(c0488a, resources);
        int i = 0;
        while (true) {
            if (i >= m20712a.size()) {
                providerInfo = null;
                break;
            }
            ArrayList arrayList = new ArrayList(m20712a.get(i));
            Collections.sort(arrayList, f1869e);
            if (m20711a(m20710a, arrayList)) {
                providerInfo = resolveContentProvider;
                break;
            }
            i++;
        }
        return providerInfo;
    }

    /* renamed from: a */
    public static Typeface m20716a(final Context context, final C0488a c0488a, final C0449f.AbstractC0450a abstractC0450a, final Handler handler, boolean z, int i, final int i2) {
        Typeface typeface;
        final String str = c0488a.m20719f() + "-" + i2;
        Typeface m21117a = f1865a.m21117a((C0379e<String, Typeface>) str);
        if (m21117a != null) {
            if (abstractC0450a != null) {
                abstractC0450a.mo2766a(m21117a);
            }
            typeface = m21117a;
        } else if (!z || i != -1) {
            Callable<C0496c> callable = new Callable<C0496c>() { // from class: androidx.core.e.b.1
                /* renamed from: a */
                public C0496c call() {
                    C0496c m20717a = C0489b.m20717a(context, c0488a, i2);
                    if (m20717a.f1884a != null) {
                        C0489b.f1865a.m21116a(str, m20717a.f1884a);
                    }
                    return m20717a;
                }
            };
            if (z) {
                try {
                    typeface = ((C0496c) f1868d.m20696a(callable, i)).f1884a;
                } catch (InterruptedException e) {
                    typeface = null;
                }
            } else {
                C0497c.AbstractC0502a<C0496c> abstractC0502a = abstractC0450a == null ? null : new C0497c.AbstractC0502a<C0496c>() { // from class: androidx.core.e.b.2
                    /* renamed from: a */
                    public void mo20693a(C0496c c0496c) {
                        if (c0496c == null) {
                            abstractC0450a.m20842a(1, handler);
                        } else if (c0496c.f1885b == 0) {
                            abstractC0450a.m20841a(c0496c.f1884a, handler);
                        } else {
                            abstractC0450a.m20842a(c0496c.f1885b, handler);
                        }
                    }
                };
                synchronized (f1866b) {
                    ArrayList<C0497c.AbstractC0502a<C0496c>> arrayList = f1867c.get(str);
                    if (arrayList != null) {
                        if (abstractC0502a != null) {
                            arrayList.add(abstractC0502a);
                        }
                        typeface = null;
                    } else {
                        if (abstractC0502a != null) {
                            ArrayList<C0497c.AbstractC0502a<C0496c>> arrayList2 = new ArrayList<>();
                            arrayList2.add(abstractC0502a);
                            f1867c.put(str, arrayList2);
                        }
                        f1868d.m20695a(callable, new C0497c.AbstractC0502a<C0496c>() { // from class: androidx.core.e.b.3
                            /* renamed from: a */
                            public void mo20693a(C0496c c0496c) {
                                synchronized (C0489b.f1866b) {
                                    ArrayList<C0497c.AbstractC0502a<C0496c>> arrayList3 = C0489b.f1867c.get(str);
                                    if (arrayList3 == null) {
                                        return;
                                    }
                                    C0489b.f1867c.remove(str);
                                    for (int i3 = 0; i3 < arrayList3.size(); i3++) {
                                        arrayList3.get(i3).mo20693a(c0496c);
                                    }
                                }
                            }
                        });
                        typeface = null;
                    }
                }
            }
        } else {
            C0496c m20717a = m20717a(context, c0488a, i2);
            if (abstractC0450a != null) {
                if (m20717a.f1885b == 0) {
                    abstractC0450a.m20841a(m20717a.f1884a, handler);
                } else {
                    abstractC0450a.m20842a(m20717a.f1885b, handler);
                }
            }
            typeface = m20717a.f1884a;
        }
        return typeface;
    }

    /* renamed from: a */
    public static C0494a m20718a(Context context, CancellationSignal cancellationSignal, C0488a c0488a) {
        ProviderInfo m20713a = m20713a(context.getPackageManager(), c0488a, context.getResources());
        return m20713a == null ? new C0494a(1, null) : new C0494a(0, m20715a(context, c0488a, m20713a.authority, cancellationSignal));
    }

    /* renamed from: a */
    static C0496c m20717a(Context context, C0488a c0488a, int i) {
        C0496c c0496c;
        int i2 = -3;
        try {
            C0494a m20718a = m20718a(context, (CancellationSignal) null, c0488a);
            if (m20718a.m20705a() == 0) {
                Typeface m20614a = C0533c.m20614a(context, null, m20718a.m20704b(), i);
                if (m20614a != null) {
                    i2 = 0;
                }
                c0496c = new C0496c(m20614a, i2);
            } else {
                if (m20718a.m20705a() == 1) {
                    i2 = -2;
                }
                c0496c = new C0496c(null, i2);
            }
        } catch (PackageManager.NameNotFoundException e) {
            c0496c = new C0496c(null, -1);
        }
        return c0496c;
    }

    /* renamed from: a */
    private static List<List<byte[]>> m20712a(C0488a c0488a, Resources resources) {
        return c0488a.m20721d() != null ? c0488a.m20721d() : C0441c.m20873a(resources, c0488a.m20720e());
    }

    /* renamed from: a */
    private static List<byte[]> m20710a(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    /* renamed from: a */
    public static Map<Uri, ByteBuffer> m20714a(Context context, C0495b[] c0495bArr, CancellationSignal cancellationSignal) {
        HashMap hashMap = new HashMap();
        for (C0495b c0495b : c0495bArr) {
            if (c0495b.m20699e() == 0) {
                Uri m20703a = c0495b.m20703a();
                if (!hashMap.containsKey(m20703a)) {
                    hashMap.put(m20703a, C0548i.m20537a(context, cancellationSignal, m20703a));
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: a */
    private static boolean m20711a(List<byte[]> list, List<byte[]> list2) {
        boolean z;
        if (list.size() == list2.size()) {
            int i = 0;
            while (true) {
                if (i >= list.size()) {
                    z = true;
                    break;
                }
                z = false;
                if (!Arrays.equals(list.get(i), list2.get(i))) {
                    break;
                }
                i++;
            }
        } else {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x01f5  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static androidx.core.p023e.C0489b.C0495b[] m20715a(android.content.Context r9, androidx.core.p023e.C0488a r10, java.lang.String r11, android.os.CancellationSignal r12) {
        /*
            Method dump skipped, instructions count: 525
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.p023e.C0489b.m20715a(android.content.Context, androidx.core.e.a, java.lang.String, android.os.CancellationSignal):androidx.core.e.b$b[]");
    }
}
