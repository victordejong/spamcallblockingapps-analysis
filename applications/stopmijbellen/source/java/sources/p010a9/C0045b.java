package p010a9;

import android.support.p012v4.media.AbstractC0081a;
import com.raizlabs.android.dbflow.config.FlowManager;
import java.util.Objects;
import p024b9.AbstractC0744d;
import p024b9.C0740a;
import p034c9.AbstractC0859f;
import p256u8.C4553e;
/* renamed from: a9.b */
/* loaded from: classes2-dex2jar.jar:a9/b.class */
public class C0045b<TModel> {

    /* renamed from: a */
    public AbstractC0744d<TModel> f104a;

    /* renamed from: a */
    public long mo8872a(TModel tmodel, AbstractC0081a abstractC0081a, AbstractC0859f abstractC0859f) {
        long mo7270n;
        synchronized (this) {
            Objects.requireNonNull(this.f104a);
            this.f104a.mo2686f(abstractC0081a, tmodel, 0);
            mo7270n = abstractC0081a.mo7270n();
            if (mo7270n > -1) {
                this.f104a.mo2676s(tmodel, Long.valueOf(mo7270n));
                C4553e m844c = C4553e.m844c();
                AbstractC0744d<TModel> abstractC0744d = this.f104a;
                C0740a.EnumC0741a enumC0741a = C0740a.EnumC0741a.INSERT;
                Objects.requireNonNull(m844c);
                FlowManager.m3905h(abstractC0744d.mo2690b()).mo846a(tmodel, abstractC0744d, enumC0741a);
            }
        }
        return mo7270n;
    }

    /* renamed from: b */
    public boolean m8871b(TModel tmodel, AbstractC0859f abstractC0859f, AbstractC0081a abstractC0081a, AbstractC0081a abstractC0081a2) {
        boolean z;
        synchronized (this) {
            boolean mo2691a = this.f104a.mo2691a(tmodel, abstractC0859f);
            boolean z2 = mo2691a;
            if (mo2691a) {
                z2 = m8870c(tmodel, abstractC0859f, abstractC0081a2);
            }
            z = z2;
            if (!z2) {
                z = mo8872a(tmodel, abstractC0081a, abstractC0859f) > -1;
            }
            if (z) {
                C4553e m844c = C4553e.m844c();
                AbstractC0744d<TModel> abstractC0744d = this.f104a;
                C0740a.EnumC0741a enumC0741a = C0740a.EnumC0741a.SAVE;
                Objects.requireNonNull(m844c);
                FlowManager.m3905h(abstractC0744d.mo2690b()).mo846a(tmodel, abstractC0744d, enumC0741a);
            }
        }
        return z;
    }

    /* renamed from: c */
    public boolean m8870c(TModel tmodel, AbstractC0859f abstractC0859f, AbstractC0081a abstractC0081a) {
        boolean z;
        synchronized (this) {
            Objects.requireNonNull(this.f104a);
            this.f104a.mo2684h(abstractC0081a, tmodel);
            z = abstractC0081a.mo7269p() != 0;
            if (z) {
                C4553e m844c = C4553e.m844c();
                AbstractC0744d<TModel> abstractC0744d = this.f104a;
                C0740a.EnumC0741a enumC0741a = C0740a.EnumC0741a.UPDATE;
                Objects.requireNonNull(m844c);
                FlowManager.m3905h(abstractC0744d.mo2690b()).mo846a(tmodel, abstractC0744d, enumC0741a);
            }
        }
        return z;
    }
}
