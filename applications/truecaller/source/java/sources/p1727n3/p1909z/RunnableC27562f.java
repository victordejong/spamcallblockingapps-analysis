package p1727n3.p1909z;

import android.support.p001v4.media.session.MediaSessionCompat;
import p1727n3.p1744b0.p1745a.AbstractC25617q;
import p1727n3.p1744b0.p1745a.C25586h;
import p1727n3.p1909z.AbstractC27592q1;
import s1.d0.g;
import s1.d0.j;
import s1.z.c.l;
/* renamed from: n3.z.f */
/* loaded from: classes-dex2jar.jar:n3/z/f.class */
public final class RunnableC27562f implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C27553b f77636a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC27592q1 f77637b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC27592q1 f77638c;

    /* renamed from: d */
    public final /* synthetic */ int f77639d;

    /* renamed from: e */
    public final /* synthetic */ AbstractC27592q1 f77640e;

    /* renamed from: f */
    public final /* synthetic */ o2 f77641f;

    /* renamed from: g */
    public final /* synthetic */ Runnable f77642g;

    /* renamed from: n3.z.f$a */
    /* loaded from: classes-dex2jar.jar:n3/z/f$a.class */
    public static final class RunnableC27563a implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ C27613y0 f77644b;

        public RunnableC27563a(C27613y0 c27613y0) {
            RunnableC27562f.this = r4;
            this.f77644b = c27613y0;
        }

        @Override // java.lang.Runnable
        public final void run() {
            RunnableC27562f runnableC27562f = RunnableC27562f.this;
            C27553b c27553b = runnableC27562f.f77636a;
            if (c27553b.f77616g == runnableC27562f.f77639d) {
                AbstractC27592q1<T> abstractC27592q1 = runnableC27562f.f77640e;
                AbstractC27592q1 abstractC27592q12 = runnableC27562f.f77638c;
                C27613y0 c27613y0 = this.f77644b;
                o2 o2Var = runnableC27562f.f77641f;
                x1<T> x1Var = runnableC27562f.f77637b.f77777h;
                int i = x1Var.b;
                int i2 = x1Var.g;
                Runnable runnable = runnableC27562f.f77642g;
                l.e(abstractC27592q1, "newList");
                l.e(abstractC27592q12, "diffSnapshot");
                l.e(c27613y0, "diffResult");
                l.e(o2Var, "recordingCallback");
                AbstractC27592q1<T> abstractC27592q13 = c27553b.f77615f;
                if (abstractC27592q13 == 0 || c27553b.f77614e != null) {
                    throw new IllegalStateException("must be in snapshot state to apply diff");
                }
                c27553b.f77614e = abstractC27592q1;
                abstractC27592q1.m49d(c27553b.f77618i);
                c27553b.f77615f = null;
                x1<T> x1Var2 = abstractC27592q13.f77777h;
                AbstractC25617q abstractC25617q = c27553b.f77610a;
                if (abstractC25617q == null) {
                    l.l("updateCallback");
                    throw null;
                }
                MediaSessionCompat.m43266V(x1Var2, abstractC25617q, abstractC27592q12.f77777h, c27613y0);
                AbstractC27592q1.AbstractC27594b abstractC27594b = c27553b.f77620k;
                l.e(abstractC27594b, "other");
                g i3 = j.i(j.j(0, o2Var.a.size()), 3);
                int i4 = i3.a;
                int i5 = i3.b;
                int i6 = i3.c;
                if (i6 < 0 ? i4 >= i5 : i4 <= i5) {
                    while (true) {
                        int intValue = ((Number) o2Var.a.get(i4)).intValue();
                        if (intValue == 0) {
                            abstractC27594b.m38a(((Number) o2Var.a.get(i4 + 1)).intValue(), ((Number) o2Var.a.get(i4 + 2)).intValue());
                        } else if (intValue == 1) {
                            abstractC27594b.m37b(((Number) o2Var.a.get(i4 + 1)).intValue(), ((Number) o2Var.a.get(i4 + 2)).intValue());
                        } else if (intValue != 2) {
                            throw new IllegalStateException("Unexpected recording value");
                        } else {
                            abstractC27594b.m36c(((Number) o2Var.a.get(i4 + 1)).intValue(), ((Number) o2Var.a.get(i4 + 2)).intValue());
                        }
                        if (i4 == i5) {
                            break;
                        }
                        i4 += i6;
                    }
                }
                o2Var.a.clear();
                abstractC27592q1.m50c(c27553b.f77620k);
                if (!abstractC27592q1.isEmpty()) {
                    abstractC27592q1.m43j(j.d(MediaSessionCompat.m43302G1(abstractC27592q13.f77777h, c27613y0, abstractC27592q12.f77777h, i + i2), 0, abstractC27592q1.size() - 1));
                }
                c27553b.m109c(abstractC27592q13, c27553b.f77614e, runnable);
            }
        }
    }

    public RunnableC27562f(C27553b c27553b, AbstractC27592q1 abstractC27592q1, AbstractC27592q1 abstractC27592q12, int i, AbstractC27592q1 abstractC27592q13, o2 o2Var, Runnable runnable) {
        this.f77636a = c27553b;
        this.f77637b = abstractC27592q1;
        this.f77638c = abstractC27592q12;
        this.f77639d = i;
        this.f77640e = abstractC27592q13;
        this.f77641f = o2Var;
        this.f77642g = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        x1<T> x1Var = this.f77637b.f77777h;
        x1<T> x1Var2 = this.f77638c.f77777h;
        C25586h.AbstractC25591e<T> abstractC25591e = this.f77636a.f77611b.f71579b;
        l.d(abstractC25591e, "config.diffCallback");
        this.f77636a.f77612c.execute(new RunnableC27563a(MediaSessionCompat.m43319B(x1Var, x1Var2, abstractC25591e)));
    }
}
