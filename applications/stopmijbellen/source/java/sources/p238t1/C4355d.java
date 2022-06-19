package p238t1;

import android.content.Context;
import p003a2.AbstractC0008a;
import p186o1.AbstractC3824h;
import p249u1.AbstractC4446c;
import p249u1.C4444a;
import p249u1.C4445b;
import p249u1.C4448d;
import p249u1.C4449e;
import p249u1.C4450f;
import p249u1.C4451g;
import p249u1.C4452h;
import p282x1.C4832p;
/* renamed from: t1.d */
/* loaded from: classes-dex2jar.jar:t1/d.class */
public class C4355d implements AbstractC4446c.AbstractC4447a {

    /* renamed from: d */
    public static final String f13586d = AbstractC3824h.m1773e("WorkConstraintsTracker");

    /* renamed from: a */
    public final AbstractC4354c f13587a;

    /* renamed from: b */
    public final AbstractC4446c<?>[] f13588b;

    /* renamed from: c */
    public final Object f13589c = new Object();

    public C4355d(Context context, AbstractC0008a abstractC0008a, AbstractC4354c abstractC4354c) {
        Context applicationContext = context.getApplicationContext();
        this.f13587a = abstractC4354c;
        this.f13588b = new AbstractC4446c[]{new C4444a(applicationContext, abstractC0008a), new C4445b(applicationContext, abstractC0008a), new C4452h(applicationContext, abstractC0008a), new C4448d(applicationContext, abstractC0008a), new C4451g(applicationContext, abstractC0008a), new C4450f(applicationContext, abstractC0008a), new C4449e(applicationContext, abstractC0008a)};
    }

    /* renamed from: a */
    public boolean m1012a(String str) {
        AbstractC4446c<?>[] abstractC4446cArr;
        synchronized (this.f13589c) {
            for (AbstractC4446c<?> abstractC4446c : this.f13588b) {
                Object obj = abstractC4446c.f13814b;
                if (obj != null && abstractC4446c.mo910c(obj) && abstractC4446c.f13813a.contains(str)) {
                    AbstractC3824h.m1774c().mo1772a(f13586d, String.format("Work %s constrained by %s", str, abstractC4446c.getClass().getSimpleName()), new Throwable[0]);
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: b */
    public void m1011b(Iterable<C4832p> iterable) {
        AbstractC4446c<?>[] abstractC4446cArr;
        AbstractC4446c<?>[] abstractC4446cArr2;
        synchronized (this.f13589c) {
            for (AbstractC4446c<?> abstractC4446c : this.f13588b) {
                if (abstractC4446c.f13816d != null) {
                    abstractC4446c.f13816d = null;
                    abstractC4446c.m912e(null, abstractC4446c.f13814b);
                }
            }
            for (AbstractC4446c<?> abstractC4446c2 : this.f13588b) {
                abstractC4446c2.m913d(iterable);
            }
            for (AbstractC4446c<?> abstractC4446c3 : this.f13588b) {
                if (abstractC4446c3.f13816d != this) {
                    abstractC4446c3.f13816d = this;
                    abstractC4446c3.m912e(this, abstractC4446c3.f13814b);
                }
            }
        }
    }

    /* renamed from: c */
    public void m1010c() {
        AbstractC4446c<?>[] abstractC4446cArr;
        synchronized (this.f13589c) {
            for (AbstractC4446c<?> abstractC4446c : this.f13588b) {
                if (!abstractC4446c.f13813a.isEmpty()) {
                    abstractC4446c.f13813a.clear();
                    abstractC4446c.f13815c.m760b(abstractC4446c);
                }
            }
        }
    }
}
