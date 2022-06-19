package p239t2;

import android.support.p012v4.media.C0082b;
import java.util.List;
/* renamed from: t2.g */
/* loaded from: classes-dex2jar.jar:t2/g.class */
public final class C4372g extends AbstractC4382m {

    /* renamed from: a */
    public final long f13657a;

    /* renamed from: b */
    public final long f13658b;

    /* renamed from: c */
    public final AbstractC4378k f13659c;

    /* renamed from: d */
    public final Integer f13660d;

    /* renamed from: e */
    public final String f13661e;

    /* renamed from: f */
    public final List<AbstractC4380l> f13662f;

    /* renamed from: g */
    public final EnumC4387p f13663g;

    public C4372g(long j, long j2, AbstractC4378k abstractC4378k, Integer num, String str, List list, EnumC4387p enumC4387p, C4373a c4373a) {
        this.f13657a = j;
        this.f13658b = j2;
        this.f13659c = abstractC4378k;
        this.f13660d = num;
        this.f13661e = str;
        this.f13662f = list;
        this.f13663g = enumC4387p;
    }

    @Override // p239t2.AbstractC4382m
    /* renamed from: a */
    public AbstractC4378k mo986a() {
        return this.f13659c;
    }

    @Override // p239t2.AbstractC4382m
    /* renamed from: b */
    public List<AbstractC4380l> mo985b() {
        return this.f13662f;
    }

    @Override // p239t2.AbstractC4382m
    /* renamed from: c */
    public Integer mo984c() {
        return this.f13660d;
    }

    @Override // p239t2.AbstractC4382m
    /* renamed from: d */
    public String mo983d() {
        return this.f13661e;
    }

    @Override // p239t2.AbstractC4382m
    /* renamed from: e */
    public EnumC4387p mo982e() {
        return this.f13663g;
    }

    public boolean equals(Object obj) {
        AbstractC4378k abstractC4378k;
        Integer num;
        String str;
        List<AbstractC4380l> list;
        EnumC4387p enumC4387p;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4382m)) {
            return false;
        }
        AbstractC4382m abstractC4382m = (AbstractC4382m) obj;
        if (this.f13657a != abstractC4382m.mo981f() || this.f13658b != abstractC4382m.mo980g() || ((abstractC4378k = this.f13659c) != null ? !abstractC4378k.equals(abstractC4382m.mo986a()) : abstractC4382m.mo986a() != null) || ((num = this.f13660d) != null ? !num.equals(abstractC4382m.mo984c()) : abstractC4382m.mo984c() != null) || ((str = this.f13661e) != null ? !str.equals(abstractC4382m.mo983d()) : abstractC4382m.mo983d() != null) || ((list = this.f13662f) != null ? !list.equals(abstractC4382m.mo985b()) : abstractC4382m.mo985b() != null) || ((enumC4387p = this.f13663g) != null ? !enumC4387p.equals(abstractC4382m.mo982e()) : abstractC4382m.mo982e() != null)) {
            z = false;
        }
        return z;
    }

    @Override // p239t2.AbstractC4382m
    /* renamed from: f */
    public long mo981f() {
        return this.f13657a;
    }

    @Override // p239t2.AbstractC4382m
    /* renamed from: g */
    public long mo980g() {
        return this.f13658b;
    }

    public int hashCode() {
        long j = this.f13657a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f13658b;
        int i2 = (int) ((j2 >>> 32) ^ j2);
        AbstractC4378k abstractC4378k = this.f13659c;
        int i3 = 0;
        int hashCode = abstractC4378k == null ? 0 : abstractC4378k.hashCode();
        Integer num = this.f13660d;
        int hashCode2 = num == null ? 0 : num.hashCode();
        String str = this.f13661e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        List<AbstractC4380l> list = this.f13662f;
        int hashCode4 = list == null ? 0 : list.hashCode();
        EnumC4387p enumC4387p = this.f13663g;
        if (enumC4387p != null) {
            i3 = enumC4387p.hashCode();
        }
        return ((((((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ hashCode) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i3;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("LogRequest{requestTimeMs=");
        m8752j.append(this.f13657a);
        m8752j.append(", requestUptimeMs=");
        m8752j.append(this.f13658b);
        m8752j.append(", clientInfo=");
        m8752j.append(this.f13659c);
        m8752j.append(", logSource=");
        m8752j.append(this.f13660d);
        m8752j.append(", logSourceName=");
        m8752j.append(this.f13661e);
        m8752j.append(", logEvents=");
        m8752j.append(this.f13662f);
        m8752j.append(", qosTier=");
        m8752j.append(this.f13663g);
        m8752j.append("}");
        return m8752j.toString();
    }
}
