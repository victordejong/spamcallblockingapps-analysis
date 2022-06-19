package p193e.p1512i.p1516b.p1518b2;

import android.util.Base64;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.huawei.hms.framework.common.ContainerUtils;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.p1519d2.EnumC22933a;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import p193e.p1512i.p1516b.p1531s2.C23078c;
import p193e.p1512i.p1516b.p1531s2.C23086i;
import p193e.p1512i.p1516b.p1531s2.C23089l;
import p193e.p1512i.p1516b.p1531s2.EnumC23072a;
/* renamed from: e.i.b.b2.b */
/* loaded from: classes-dex2jar.jar:e/i/b/b2/b.class */
public class C22916b implements AbstractC22922d {

    /* renamed from: a */
    public final C23078c f63582a;

    /* renamed from: b */
    public final C23086i f63583b;

    /* renamed from: c */
    public final C23021h f63584c = C23023i.m7583a(C22916b.class);

    /* renamed from: e.i.b.b2.b$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/b2/b$a.class */
    public static /* synthetic */ class C22917a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f63585a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x001d -> B:11:0x0016). Please submit an issue!!! */
        static {
            EnumC23072a.values();
            f63585a = r0;
            int[] iArr = {1};
            try {
                f63585a[1] = 2;
            } catch (NoSuchFieldError e) {
            }
            try {
                f63585a[2] = 3;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: e.i.b.b2.b$b */
    /* loaded from: classes-dex2jar.jar:e/i/b/b2/b$b.class */
    public static class C22918b extends AbstractC22920d {

        /* renamed from: d */
        public static Class<?> f63586d;

        /* renamed from: e */
        public static Method f63587e;

        /* renamed from: c */
        public final Object f63588c;

        public C22918b(Object obj, C22917a c22917a) {
            super("AdMob19", null);
            this.f63588c = obj;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0054  */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static boolean m7628b(java.lang.Object r7) {
            /*
                r0 = r7
                java.lang.Class r0 = r0.getClass()
                java.lang.ClassLoader r0 = r0.getClassLoader()
                r8 = r0
                java.lang.Class<?> r0 = p193e.p1512i.p1516b.p1518b2.C22916b.C22918b.f63586d
                r9 = r0
                r0 = 0
                r10 = r0
                r0 = r9
                if (r0 == 0) goto L1e
                java.lang.reflect.Method r0 = p193e.p1512i.p1516b.p1518b2.C22916b.C22918b.f63587e
                if (r0 == 0) goto L1e
            L18:
                r0 = 1
                r11 = r0
                goto L4c
            L1e:
                java.lang.String r0 = "com.google.android.gms.ads.doubleclick.PublisherAdRequest$Builder"
                r1 = 0
                r2 = r8
                java.lang.Class r0 = java.lang.Class.forName(r0, r1, r2)     // Catch: java.lang.NoSuchMethodException -> L44 java.lang.ClassNotFoundException -> L6a
                r9 = r0
                r0 = r9
                p193e.p1512i.p1516b.p1518b2.C22916b.C22918b.f63586d = r0     // Catch: java.lang.NoSuchMethodException -> L44 java.lang.ClassNotFoundException -> L6a
                r0 = r9
                java.lang.String r1 = "addCustomTargeting"
                r2 = 2
                java.lang.Class[] r2 = new java.lang.Class[r2]     // Catch: java.lang.NoSuchMethodException -> L44 java.lang.ClassNotFoundException -> L6a
                r3 = r2
                r4 = 0
                java.lang.Class<java.lang.String> r5 = java.lang.String.class
                r3[r4] = r5     // Catch: java.lang.NoSuchMethodException -> L44 java.lang.ClassNotFoundException -> L6a
                r3 = r2
                r4 = 1
                java.lang.Class<java.lang.String> r5 = java.lang.String.class
                r3[r4] = r5     // Catch: java.lang.NoSuchMethodException -> L44 java.lang.ClassNotFoundException -> L6a
                java.lang.reflect.Method r0 = r0.getMethod(r1, r2)     // Catch: java.lang.NoSuchMethodException -> L44 java.lang.ClassNotFoundException -> L6a
                p193e.p1512i.p1516b.p1518b2.C22916b.C22918b.f63587e = r0     // Catch: java.lang.NoSuchMethodException -> L44 java.lang.ClassNotFoundException -> L6a
                goto L18
            L44:
                r9 = move-exception
                r0 = r9
                p193e.p1512i.p1516b.p1531s2.C23089l.m7560a(r0)
            L49:
                r0 = 0
                r11 = r0
            L4c:
                r0 = r10
                r12 = r0
                r0 = r11
                if (r0 == 0) goto L67
                r0 = r10
                r12 = r0
                java.lang.Class<?> r0 = p193e.p1512i.p1516b.p1518b2.C22916b.C22918b.f63586d
                r1 = r7
                java.lang.Class r1 = r1.getClass()
                boolean r0 = r0.isAssignableFrom(r1)
                if (r0 == 0) goto L67
                r0 = 1
                r12 = r0
            L67:
                r0 = r12
                return r0
            L6a:
                r9 = move-exception
                goto L49
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1512i.p1516b.p1518b2.C22916b.C22918b.m7628b(java.lang.Object):boolean");
        }

        @Override // p193e.p1512i.p1516b.p1518b2.C22916b.AbstractC22920d
        /* renamed from: a */
        public void mo7627a(String str, String str2) {
            try {
                f63587e.invoke(this.f63588c, str, str2);
            } catch (IllegalAccessException e) {
                C23089l.m7560a(e);
            } catch (InvocationTargetException e2) {
                C23089l.m7560a(e2);
            }
            super.mo7627a(str, str2);
        }
    }

    /* renamed from: e.i.b.b2.b$c */
    /* loaded from: classes-dex2jar.jar:e/i/b/b2/b$c.class */
    public static class C22919c extends AbstractC22920d {

        /* renamed from: c */
        public final AdManagerAdRequest.Builder f63589c;

        public C22919c(AdManagerAdRequest.Builder builder, C22917a c22917a) {
            super("AdMob20", null);
            this.f63589c = builder;
        }

        @Override // p193e.p1512i.p1516b.p1518b2.C22916b.AbstractC22920d
        /* renamed from: a */
        public void mo7627a(String str, String str2) {
            try {
                this.f63589c.addCustomTargeting(str, str2);
                super.mo7627a(str, str2);
            } catch (LinkageError e) {
                C23089l.m7560a(e);
            }
        }
    }

    /* renamed from: e.i.b.b2.b$d */
    /* loaded from: classes-dex2jar.jar:e/i/b/b2/b$d.class */
    public static abstract class AbstractC22920d {

        /* renamed from: a */
        public final String f63590a;

        /* renamed from: b */
        public final StringBuilder f63591b = new StringBuilder();

        public AbstractC22920d(String str, C22917a c22917a) {
            this.f63590a = str;
        }

        /* renamed from: a */
        public void mo7627a(String str, String str2) {
            if (this.f63591b.length() != 0) {
                this.f63591b.append(",");
            } else {
                StringBuilder sb = this.f63591b;
                sb.append(this.f63590a);
                sb.append(':');
            }
            C22128a.m8669S0(this.f63591b, str, ContainerUtils.KEY_VALUE_DELIMITER, str2);
        }
    }

    public C22916b(C23078c c23078c, C23086i c23086i) {
        this.f63582a = c23078c;
        this.f63583b = c23086i;
    }

    @Override // p193e.p1512i.p1516b.p1518b2.AbstractC22922d
    /* renamed from: a */
    public EnumC22933a mo7626a() {
        return EnumC22933a.GAM_APP_BIDDING;
    }

    @Override // p193e.p1512i.p1516b.p1518b2.AbstractC22922d
    /* renamed from: a */
    public void mo7625a(Object obj) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0018, code lost:
        if (p193e.p1512i.p1516b.p1518b2.C22916b.C22918b.m7628b(r3) != false) goto L10;
     */
    @Override // p193e.p1512i.p1516b.p1518b2.AbstractC22922d
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo7624b(java.lang.Object r3) {
        /*
            r2 = this;
            r0 = 0
            r4 = r0
            r0 = r3
            boolean r0 = r0 instanceof com.google.android.gms.ads.admanager.AdManagerAdRequest.Builder     // Catch: java.lang.LinkageError -> La
            r5 = r0
            goto Le
        La:
            r6 = move-exception
            r0 = 0
            r5 = r0
        Le:
            r0 = r5
            if (r0 != 0) goto L1b
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = p193e.p1512i.p1516b.p1518b2.C22916b.C22918b.m7628b(r0)
            if (r0 == 0) goto L1d
        L1b:
            r0 = 1
            r5 = r0
        L1d:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1512i.p1516b.p1518b2.C22916b.mo7624b(java.lang.Object):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0048 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
    @Override // p193e.p1512i.p1516b.p1518b2.AbstractC22922d
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo7623c(java.lang.Object r6, p193e.p1512i.p1516b.p1531s2.EnumC23072a r7, p193e.p1512i.p1516b.p1533u2.C23131w r8) {
        /*
            Method dump skipped, instructions count: 680
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1512i.p1516b.p1518b2.C22916b.mo7623c(java.lang.Object, e.i.b.s2.a, e.i.b.u2.w):void");
    }

    /* renamed from: d */
    public final void m7629d(AbstractC22920d abstractC22920d, String str, String str2) {
        String str3;
        if (!C26232y.m2338k(str)) {
            if (C26232y.m2338k(str)) {
                str3 = null;
            } else {
                try {
                    str3 = URLEncoder.encode(URLEncoder.encode(Base64.encodeToString(str.getBytes(Charset.forName(StringConstant.UTF8)), 2), Charset.forName(StringConstant.UTF8).name()), Charset.forName(StringConstant.UTF8).name());
                } catch (UnsupportedEncodingException e) {
                    C23089l.m7560a(e);
                    str3 = null;
                }
            }
            abstractC22920d.mo7627a(str2, str3);
        }
    }
}
