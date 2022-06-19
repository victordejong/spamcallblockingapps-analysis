package p024b9;

import com.raizlabs.android.dbflow.config.FlowManager;
import p010a9.C0045b;
/* renamed from: b9.a */
/* loaded from: classes2-dex2jar.jar:b9/a.class */
public class C0740a implements AbstractC0743c {

    /* renamed from: a */
    public transient AbstractC0744d f2807a;

    /* renamed from: b9.a$a */
    /* loaded from: classes2-dex2jar.jar:b9/a$a.class */
    public enum EnumC0741a {
        SAVE,
        INSERT,
        UPDATE,
        DELETE,
        CHANGE
    }

    @Override // p024b9.AbstractC0743c
    /* renamed from: a */
    public boolean mo7416a() {
        return m7418b().m7413r(this);
    }

    /* renamed from: b */
    public AbstractC0744d m7418b() {
        if (this.f2807a == null) {
            Class<?> cls = getClass();
            AbstractC0744d m3906g = FlowManager.m3906g(cls);
            if (m3906g == null) {
                FlowManager.m3901l("ModelAdapter", cls);
                throw null;
            }
            this.f2807a = m3906g;
        }
        return this.f2807a;
    }

    /* renamed from: c */
    public boolean m7417c() {
        boolean m8870c;
        AbstractC0744d m7418b = m7418b();
        if (m7418b.f2818e == null) {
            C0045b<TModel> mo2683i = m7418b.mo2683i();
            m7418b.f2818e = mo2683i;
            mo2683i.f104a = m7418b;
        }
        C0045b<TModel> c0045b = m7418b.f2818e;
        synchronized (c0045b) {
            m8870c = c0045b.m8870c(this, FlowManager.m3908e(c0045b.f104a.mo2690b()).m3891j(), c0045b.f104a.m7415o());
        }
        return m8870c;
    }
}
