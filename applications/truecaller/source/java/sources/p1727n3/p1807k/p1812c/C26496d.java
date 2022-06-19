package p1727n3.p1807k.p1812c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import com.tenor.android.core.constant.StringConstant;
import p1727n3.p1788g.C26180f;
import p1727n3.p1807k.p1809b.p1811d.C26488h;
import p1727n3.p1807k.p1817f.C26531m;
/* renamed from: n3.k.c.d */
/* loaded from: classes-dex2jar.jar:n3/k/c/d.class */
public class C26496d {

    /* renamed from: a */
    public static final C26502k f74283a;

    /* renamed from: b */
    public static final C26180f<String, Typeface> f74284b;

    /* renamed from: n3.k.c.d$a */
    /* loaded from: classes-dex2jar.jar:n3/k/c/d$a.class */
    public static class C26497a extends C26531m {

        /* renamed from: a */
        public C26488h.AbstractC26489a f74285a;

        public C26497a(C26488h.AbstractC26489a abstractC26489a) {
            this.f74285a = abstractC26489a;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            f74283a = new C26500i();
        } else if (i >= 28) {
            f74283a = new h();
        } else if (i >= 26) {
            f74283a = new g();
        } else {
            if (i >= 24) {
                if (C26499f.f74293d != null) {
                    f74283a = new C26499f();
                }
            }
            f74283a = new C26498e();
        }
        f74284b = new C26180f<>(16);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0040, code lost:
        if (r8.equals(r0) == false) goto L13;
     */
    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface m1740a(android.content.Context r7, p1727n3.p1807k.p1809b.p1811d.AbstractC26483c r8, android.content.res.Resources r9, int r10, int r11, p1727n3.p1807k.p1809b.p1811d.C26488h.AbstractC26489a r12, android.os.Handler r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 716
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1807k.p1812c.C26496d.m1740a(android.content.Context, n3.k.b.d.c, android.content.res.Resources, int, int, n3.k.b.d.h$a, android.os.Handler, boolean):android.graphics.Typeface");
    }

    /* renamed from: b */
    public static Typeface m1739b(Context context, Resources resources, int i, String str, int i2) {
        Typeface mo1730d = f74283a.mo1730d(context, resources, i, str, i2);
        if (mo1730d != null) {
            f74284b.put(m1738c(resources, i, i2), mo1730d);
        }
        return mo1730d;
    }

    /* renamed from: c */
    public static String m1738c(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + StringConstant.DASH + i + StringConstant.DASH + i2;
    }
}
