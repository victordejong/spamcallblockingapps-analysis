package p239t2;

import android.support.p012v4.media.C0082b;
import p239t2.AbstractC4384o;
/* renamed from: t2.i */
/* loaded from: classes-dex2jar.jar:t2/i.class */
public final class C4375i extends AbstractC4384o {

    /* renamed from: a */
    public final AbstractC4384o.EnumC4386b f13665a;

    /* renamed from: b */
    public final AbstractC4384o.EnumC4385a f13666b;

    public C4375i(AbstractC4384o.EnumC4386b enumC4386b, AbstractC4384o.EnumC4385a enumC4385a, C4376a c4376a) {
        this.f13665a = enumC4386b;
        this.f13666b = enumC4385a;
    }

    @Override // p239t2.AbstractC4384o
    /* renamed from: a */
    public AbstractC4384o.EnumC4385a mo977a() {
        return this.f13666b;
    }

    @Override // p239t2.AbstractC4384o
    /* renamed from: b */
    public AbstractC4384o.EnumC4386b mo976b() {
        return this.f13665a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4384o)) {
            return false;
        }
        AbstractC4384o abstractC4384o = (AbstractC4384o) obj;
        AbstractC4384o.EnumC4386b enumC4386b = this.f13665a;
        if (enumC4386b != null ? enumC4386b.equals(abstractC4384o.mo976b()) : abstractC4384o.mo976b() == null) {
            AbstractC4384o.EnumC4385a enumC4385a = this.f13666b;
            if (enumC4385a != null) {
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        AbstractC4384o.EnumC4386b enumC4386b = this.f13665a;
        int i = 0;
        int hashCode = enumC4386b == null ? 0 : enumC4386b.hashCode();
        AbstractC4384o.EnumC4385a enumC4385a = this.f13666b;
        if (enumC4385a != null) {
            i = enumC4385a.hashCode();
        }
        return ((hashCode ^ 1000003) * 1000003) ^ i;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("NetworkConnectionInfo{networkType=");
        m8752j.append(this.f13665a);
        m8752j.append(", mobileSubtype=");
        m8752j.append(this.f13666b);
        m8752j.append("}");
        return m8752j.toString();
    }
}
