package androidx.work.impl.p015m.p017f;

import android.content.Context;
import androidx.work.impl.utils.p019o.AbstractC1399a;
/* renamed from: androidx.work.impl.m.f.g */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/m/f/g.class */
public class C1320g {

    /* renamed from: a */
    private static C1320g f5540a;

    /* renamed from: b */
    private C1310a f5541b;

    /* renamed from: c */
    private C1311b f5542c;

    /* renamed from: d */
    private C1316e f5543d;

    /* renamed from: e */
    private C1319f f5544e;

    private C1320g(Context context, AbstractC1399a abstractC1399a) {
        Context applicationContext = context.getApplicationContext();
        this.f5541b = new C1310a(applicationContext, abstractC1399a);
        this.f5542c = new C1311b(applicationContext, abstractC1399a);
        this.f5543d = new C1316e(applicationContext, abstractC1399a);
        this.f5544e = new C1319f(applicationContext, abstractC1399a);
    }

    /* renamed from: c */
    public static C1320g m30309c(Context context, AbstractC1399a abstractC1399a) {
        C1320g c1320g;
        synchronized (C1320g.class) {
            try {
                if (f5540a == null) {
                    f5540a = new C1320g(context, abstractC1399a);
                }
                c1320g = f5540a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1320g;
    }

    /* renamed from: a */
    public C1310a m30311a() {
        return this.f5541b;
    }

    /* renamed from: b */
    public C1311b m30310b() {
        return this.f5542c;
    }

    /* renamed from: d */
    public C1316e m30308d() {
        return this.f5543d;
    }

    /* renamed from: e */
    public C1319f m30307e() {
        return this.f5544e;
    }
}
