package p024b9;

import android.support.p012v4.media.AbstractC0081a;
import com.raizlabs.android.dbflow.config.AbstractC2116c;
import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.structure.InvalidDBConfiguration;
import p010a9.C0045b;
import p034c9.AbstractC0859f;
import p034c9.C0854a;
/* renamed from: b9.d */
/* loaded from: classes2-dex2jar.jar:b9/d.class */
public abstract class AbstractC0744d<TModel> extends AbstractC0742b<TModel> {

    /* renamed from: c */
    public AbstractC0081a f2816c;

    /* renamed from: d */
    public AbstractC0081a f2817d;

    /* renamed from: e */
    public C0045b<TModel> f2818e;

    public AbstractC0744d(AbstractC2116c abstractC2116c) {
        super(abstractC2116c);
    }

    /* renamed from: f */
    public abstract void mo2686f(AbstractC0081a abstractC0081a, Object obj, int i);

    /* renamed from: g */
    public void mo2685g(AbstractC0081a abstractC0081a, TModel tmodel) {
        mo2686f(abstractC0081a, tmodel, 0);
    }

    /* renamed from: h */
    public abstract void mo2684h(AbstractC0081a abstractC0081a, Object obj);

    /* renamed from: i */
    public C0045b<TModel> mo2683i() {
        return new C0045b<>();
    }

    /* renamed from: j */
    public Number mo2682j(TModel tmodel) {
        throw new InvalidDBConfiguration(String.format("This method may have been called in error. The model class %1s must containa single primary key (if used in a ModelCache, this method may be called)", mo2690b()));
    }

    /* renamed from: k */
    public abstract String mo2681k();

    /* renamed from: l */
    public abstract String mo2680l();

    /* renamed from: m */
    public String mo2679m() {
        return mo2681k();
    }

    /* renamed from: n */
    public abstract String mo2678n();

    /* renamed from: o */
    public AbstractC0081a m7415o() {
        if (this.f2817d == null) {
            this.f2817d = ((C0854a) FlowManager.m3903j(mo2690b())).m7276a(mo2677p());
        }
        return this.f2817d;
    }

    /* renamed from: p */
    public abstract String mo2677p();

    /* renamed from: q */
    public boolean m7414q(TModel tmodel) {
        Number mo2682j = mo2682j(tmodel);
        return mo2682j != null && mo2682j.longValue() > 0;
    }

    /* renamed from: r */
    public boolean m7413r(TModel tmodel) {
        boolean m8871b;
        if (this.f2818e == null) {
            C0045b<TModel> mo2683i = mo2683i();
            this.f2818e = mo2683i;
            mo2683i.f104a = this;
        }
        C0045b<TModel> c0045b = this.f2818e;
        synchronized (c0045b) {
            AbstractC0859f m3891j = FlowManager.m3908e(c0045b.f104a.mo2690b()).m3891j();
            AbstractC0744d<TModel> abstractC0744d = c0045b.f104a;
            if (abstractC0744d.f2816c == null) {
                abstractC0744d.f2816c = ((C0854a) FlowManager.m3903j(abstractC0744d.mo2690b())).m7276a(abstractC0744d.mo2679m());
            }
            m8871b = c0045b.m8871b(tmodel, m3891j, abstractC0744d.f2816c, c0045b.f104a.m7415o());
        }
        return m8871b;
    }

    /* renamed from: s */
    public void mo2676s(TModel tmodel, Number number) {
    }
}
