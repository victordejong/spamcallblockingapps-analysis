package androidx.work.impl.p085a.p087b;

import android.content.Context;
import androidx.work.impl.utils.p090b.AbstractC3119a;
/* renamed from: androidx.work.impl.a.b.g */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/g.class */
public final class C3024g {

    /* renamed from: e */
    private static C3024g f11198e;

    /* renamed from: a */
    public C3014a f11199a;

    /* renamed from: b */
    public C3015b f11200b;

    /* renamed from: c */
    public C3020e f11201c;

    /* renamed from: d */
    public C3023f f11202d;

    private C3024g(Context context, AbstractC3119a abstractC3119a) {
        Context applicationContext = context.getApplicationContext();
        this.f11199a = new C3014a(applicationContext, abstractC3119a);
        this.f11200b = new C3015b(applicationContext, abstractC3119a);
        this.f11201c = new C3020e(applicationContext, abstractC3119a);
        this.f11202d = new C3023f(applicationContext, abstractC3119a);
    }

    /* renamed from: a */
    public static C3024g m39443a(Context context, AbstractC3119a abstractC3119a) {
        C3024g c3024g;
        synchronized (C3024g.class) {
            try {
                if (f11198e == null) {
                    f11198e = new C3024g(context, abstractC3119a);
                }
                c3024g = f11198e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c3024g;
    }
}
