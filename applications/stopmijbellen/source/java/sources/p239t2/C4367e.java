package p239t2;

import android.support.p012v4.media.C0082b;
import p239t2.AbstractC4378k;
/* renamed from: t2.e */
/* loaded from: classes-dex2jar.jar:t2/e.class */
public final class C4367e extends AbstractC4378k {

    /* renamed from: a */
    public final AbstractC4378k.EnumC4379a f13641a;

    /* renamed from: b */
    public final AbstractC4356a f13642b;

    public C4367e(AbstractC4378k.EnumC4379a enumC4379a, AbstractC4356a abstractC4356a, C4368a c4368a) {
        this.f13641a = enumC4379a;
        this.f13642b = abstractC4356a;
    }

    @Override // p239t2.AbstractC4378k
    /* renamed from: a */
    public AbstractC4356a mo995a() {
        return this.f13642b;
    }

    @Override // p239t2.AbstractC4378k
    /* renamed from: b */
    public AbstractC4378k.EnumC4379a mo994b() {
        return this.f13641a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4378k)) {
            return false;
        }
        AbstractC4378k abstractC4378k = (AbstractC4378k) obj;
        AbstractC4378k.EnumC4379a enumC4379a = this.f13641a;
        if (enumC4379a != null ? enumC4379a.equals(abstractC4378k.mo994b()) : abstractC4378k.mo994b() == null) {
            AbstractC4356a abstractC4356a = this.f13642b;
            if (abstractC4356a != null) {
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        AbstractC4378k.EnumC4379a enumC4379a = this.f13641a;
        int i = 0;
        int hashCode = enumC4379a == null ? 0 : enumC4379a.hashCode();
        AbstractC4356a abstractC4356a = this.f13642b;
        if (abstractC4356a != null) {
            i = abstractC4356a.hashCode();
        }
        return ((hashCode ^ 1000003) * 1000003) ^ i;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("ClientInfo{clientType=");
        m8752j.append(this.f13641a);
        m8752j.append(", androidClientInfo=");
        m8752j.append(this.f13642b);
        m8752j.append("}");
        return m8752j.toString();
    }
}
