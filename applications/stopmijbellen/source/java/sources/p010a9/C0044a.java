package p010a9;

import android.support.p012v4.media.AbstractC0081a;
import com.raizlabs.android.dbflow.config.C2120f;
import com.raizlabs.android.dbflow.config.FlowManager;
import java.util.Objects;
import p024b9.AbstractC0744d;
import p024b9.C0740a;
import p034c9.AbstractC0859f;
import p034c9.C0854a;
import p034c9.C0855b;
import p256u8.C4553e;
/* renamed from: a9.a */
/* loaded from: classes2-dex2jar.jar:a9/a.class */
public class C0044a<TModel> extends C0045b<TModel> {
    @Override // p010a9.C0045b
    /* renamed from: a */
    public long mo8872a(TModel tmodel, AbstractC0081a abstractC0081a, AbstractC0859f abstractC0859f) {
        synchronized (this) {
            if (!this.f104a.m7414q(tmodel)) {
                return super.mo8872a(tmodel, abstractC0081a, abstractC0859f);
            }
            C2120f.EnumC2122b enumC2122b = C2120f.EnumC2122b.f7695c;
            C2120f.m3889a(enumC2122b, "Ignoring insert statement " + abstractC0081a + " since an autoincrement column specified in the insert.", null);
            return m8873d(tmodel, abstractC0859f);
        }
    }

    /* renamed from: d */
    public long m8873d(TModel tmodel, AbstractC0859f abstractC0859f) {
        AbstractC0081a abstractC0081a;
        long mo7270n;
        synchronized (this) {
            boolean m7414q = this.f104a.m7414q(tmodel);
            if (m7414q) {
                abstractC0081a = ((C0854a) abstractC0859f).m7276a(this.f104a.mo2681k());
            } else {
                abstractC0081a = ((C0854a) abstractC0859f).m7276a(this.f104a.mo2679m());
            }
            Objects.requireNonNull(this.f104a);
            if (m7414q) {
                this.f104a.mo2685g(abstractC0081a, tmodel);
            } else {
                this.f104a.mo2686f(abstractC0081a, tmodel, 0);
            }
            mo7270n = abstractC0081a.mo7270n();
            if (mo7270n > -1) {
                this.f104a.mo2676s(tmodel, Long.valueOf(mo7270n));
                C4553e m844c = C4553e.m844c();
                AbstractC0744d<TModel> abstractC0744d = this.f104a;
                C0740a.EnumC0741a enumC0741a = C0740a.EnumC0741a.INSERT;
                Objects.requireNonNull(m844c);
                FlowManager.m3905h(abstractC0744d.mo2690b()).mo846a(tmodel, abstractC0744d, enumC0741a);
            }
            ((C0855b) abstractC0081a).f3148a.close();
        }
        return mo7270n;
    }
}
