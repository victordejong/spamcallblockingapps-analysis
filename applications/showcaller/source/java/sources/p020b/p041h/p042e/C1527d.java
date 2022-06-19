package p020b.p041h.p042e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.core.content.p007d.C0597c;
import androidx.core.content.p007d.C0605f;
import p020b.p036e.C1495e;
import p020b.p041h.p046h.C1556f;
@SuppressLint({"NewApi"})
/* renamed from: b.h.e.d */
/* loaded from: classes-dex2jar.jar:b/h/e/d.class */
public class C1527d {

    /* renamed from: a */
    private static final C1534j f6059a;

    /* renamed from: b */
    private static final C1495e<String, Typeface> f6060b;

    /* renamed from: b.h.e.d$a */
    /* loaded from: classes-dex2jar.jar:b/h/e/d$a.class */
    public static class C1528a extends C1556f.C1559c {

        /* renamed from: a */
        private C0605f.AbstractC0608c f6061a;

        public C1528a(C0605f.AbstractC0608c abstractC0608c) {
            this.f6061a = abstractC0608c;
        }

        @Override // p020b.p041h.p046h.C1556f.C1559c
        /* renamed from: a */
        public void mo29729a(int i) {
            C0605f.AbstractC0608c abstractC0608c = this.f6061a;
            if (abstractC0608c != null) {
                abstractC0608c.mo28666d(i);
            }
        }

        @Override // p020b.p041h.p046h.C1556f.C1559c
        /* renamed from: b */
        public void mo29728b(Typeface typeface) {
            C0605f.AbstractC0608c abstractC0608c = this.f6061a;
            if (abstractC0608c != null) {
                abstractC0608c.mo28665e(typeface);
            }
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            f6059a = new C1533i();
        } else if (i >= 28) {
            f6059a = new C1532h();
        } else if (i >= 26) {
            f6059a = new C1531g();
        } else if (i >= 24 && C1530f.m29812m()) {
            f6059a = new C1530f();
        } else if (i >= 21) {
            f6059a = new C1529e();
        } else {
            f6059a = new C1534j();
        }
        f6060b = new C1495e<>(16);
    }

    /* renamed from: a */
    public static Typeface m29827a(Context context, Typeface typeface, int i) {
        Typeface m29821g;
        if (context != null) {
            return (Build.VERSION.SDK_INT >= 21 || (m29821g = m29821g(context, typeface, i)) == null) ? Typeface.create(typeface, i) : m29821g;
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    /* renamed from: b */
    public static Typeface m29826b(Context context, CancellationSignal cancellationSignal, C1556f.C1558b[] c1558bArr, int i) {
        return f6059a.mo29794c(context, cancellationSignal, c1558bArr, i);
    }

    /* renamed from: c */
    public static Typeface m29825c(Context context, C0597c.AbstractC0598a abstractC0598a, Resources resources, int i, int i2, C0605f.AbstractC0608c abstractC0608c, Handler handler, boolean z) {
        Typeface typeface;
        if (abstractC0598a instanceof C0597c.C0601d) {
            C0597c.C0601d c0601d = (C0597c.C0601d) abstractC0598a;
            Typeface m29820h = m29820h(c0601d.m33286c());
            if (m29820h != null) {
                if (abstractC0608c != null) {
                    abstractC0608c.m33264b(m29820h, handler);
                }
                return m29820h;
            }
            typeface = C1556f.m29739a(context, c0601d.m33287b(), i2, !z ? abstractC0608c == null : c0601d.m33288a() == 0, z ? c0601d.m33285d() : -1, C0605f.AbstractC0608c.m33263c(handler), new C1528a(abstractC0608c));
        } else {
            Typeface mo29795b = f6059a.mo29795b(context, (C0597c.C0599b) abstractC0598a, resources, i2);
            typeface = mo29795b;
            if (abstractC0608c != null) {
                if (mo29795b != null) {
                    abstractC0608c.m33264b(mo29795b, handler);
                    typeface = mo29795b;
                } else {
                    abstractC0608c.m33265a(-3, handler);
                    typeface = mo29795b;
                }
            }
        }
        if (typeface != null) {
            f6060b.m29942d(m29823e(resources, i, i2), typeface);
        }
        return typeface;
    }

    /* renamed from: d */
    public static Typeface m29824d(Context context, Resources resources, int i, String str, int i2) {
        Typeface mo29792e = f6059a.mo29792e(context, resources, i, str, i2);
        if (mo29792e != null) {
            f6060b.m29942d(m29823e(resources, i, i2), mo29792e);
        }
        return mo29792e;
    }

    /* renamed from: e */
    private static String m29823e(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + "-" + i + "-" + i2;
    }

    /* renamed from: f */
    public static Typeface m29822f(Resources resources, int i, int i2) {
        return f6060b.m29943c(m29823e(resources, i, i2));
    }

    /* renamed from: g */
    private static Typeface m29821g(Context context, Typeface typeface, int i) {
        C1534j c1534j = f6059a;
        C0597c.C0599b m29788i = c1534j.m29788i(typeface);
        if (m29788i == null) {
            return null;
        }
        return c1534j.mo29795b(context, m29788i, context.getResources(), i);
    }

    /* renamed from: h */
    private static Typeface m29820h(String str) {
        Typeface typeface = null;
        if (str != null) {
            if (str.isEmpty()) {
                typeface = null;
            } else {
                Typeface create = Typeface.create(str, 0);
                Typeface create2 = Typeface.create(Typeface.DEFAULT, 0);
                typeface = null;
                if (create != null) {
                    typeface = null;
                    if (!create.equals(create2)) {
                        typeface = create;
                    }
                }
            }
        }
        return typeface;
    }
}
