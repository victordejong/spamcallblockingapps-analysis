package p1727n3.p1834m0.p1835c0.p1840q.p1842f;

import android.content.Context;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.AbstractC26821a;
/* renamed from: n3.m0.c0.q.f.g */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/q/f/g.class */
public class C26735g {

    /* renamed from: e */
    public static C26735g f74853e;

    /* renamed from: a */
    public a f74854a;

    /* renamed from: b */
    public b f74855b;

    /* renamed from: c */
    public C26732e f74856c;

    /* renamed from: d */
    public f f74857d;

    public C26735g(Context context, AbstractC26821a abstractC26821a) {
        Context applicationContext = context.getApplicationContext();
        this.f74854a = new a(applicationContext, abstractC26821a);
        this.f74855b = new b(applicationContext, abstractC26821a);
        this.f74856c = new C26732e(applicationContext, abstractC26821a);
        this.f74857d = new f(applicationContext, abstractC26821a);
    }

    /* renamed from: a */
    public static C26735g m1378a(Context context, AbstractC26821a abstractC26821a) {
        C26735g c26735g;
        synchronized (C26735g.class) {
            try {
                if (f74853e == null) {
                    f74853e = new C26735g(context, abstractC26821a);
                }
                c26735g = f74853e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c26735g;
    }
}
