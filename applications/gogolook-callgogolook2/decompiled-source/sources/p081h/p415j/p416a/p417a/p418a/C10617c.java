package p081h.p415j.p416a.p417a.p418a;

import android.content.Context;
import p081h.p415j.p416a.p417a.p418a.p421e.C10628b;
import p081h.p415j.p416a.p417a.p418a.p421e.C10631c;
import p081h.p415j.p416a.p417a.p418a.p421e.C10634e;
import p081h.p415j.p416a.p417a.p418a.p423g.C10641b;
import p081h.p415j.p416a.p417a.p418a.p423g.C10645e;
/* renamed from: h.j.a.a.a.c */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/c.class */
public class C10617c {

    /* renamed from: a */
    public boolean f24167a;

    /* renamed from: a */
    public String m11196a() {
        return "1.2.8-Taiwanmobile";
    }

    /* renamed from: a */
    public void m11195a(Context context) {
        m11192b(context);
        if (!m11193b()) {
            m11194a(true);
            C10634e.m11113e().m11118a(context);
            C10628b.m11137g().m11146a(context);
            C10641b.m11100a(context);
            C10631c.m11134b().m11135a(context);
        }
    }

    /* renamed from: a */
    public void m11194a(boolean z) {
        this.f24167a = z;
    }

    /* renamed from: b */
    public final void m11192b(Context context) {
        C10645e.m11081a(context, "Application Context cannot be null");
    }

    /* renamed from: b */
    public boolean m11193b() {
        return this.f24167a;
    }
}
