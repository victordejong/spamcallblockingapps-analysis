package p293y2;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
import java.util.Set;
import p293y2.AbstractC4985e;
/* renamed from: y2.b */
/* loaded from: classes-dex2jar.jar:y2/b.class */
public final class C4980b extends AbstractC4985e.AbstractC4986a {

    /* renamed from: a */
    public final long f15180a;

    /* renamed from: b */
    public final long f15181b;

    /* renamed from: c */
    public final Set<AbstractC4985e.EnumC4988b> f15182c;

    /* renamed from: y2.b$b */
    /* loaded from: classes-dex2jar.jar:y2/b$b.class */
    public static final class C4982b extends AbstractC4985e.AbstractC4986a.AbstractC4987a {

        /* renamed from: a */
        public Long f15183a;

        /* renamed from: b */
        public Long f15184b;

        /* renamed from: c */
        public Set<AbstractC4985e.EnumC4988b> f15185c;

        @Override // p293y2.AbstractC4985e.AbstractC4986a.AbstractC4987a
        /* renamed from: a */
        public AbstractC4985e.AbstractC4986a mo159a() {
            String str = this.f15183a == null ? " delta" : "";
            String str2 = str;
            if (this.f15184b == null) {
                str2 = C1676a.m4789h(str, " maxAllowedDelay");
            }
            String str3 = str2;
            if (this.f15185c == null) {
                str3 = C1676a.m4789h(str2, " flags");
            }
            if (str3.isEmpty()) {
                return new C4980b(this.f15183a.longValue(), this.f15184b.longValue(), this.f15185c, null);
            }
            throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str3));
        }

        @Override // p293y2.AbstractC4985e.AbstractC4986a.AbstractC4987a
        /* renamed from: b */
        public AbstractC4985e.AbstractC4986a.AbstractC4987a mo158b(long j) {
            this.f15183a = Long.valueOf(j);
            return this;
        }

        @Override // p293y2.AbstractC4985e.AbstractC4986a.AbstractC4987a
        /* renamed from: c */
        public AbstractC4985e.AbstractC4986a.AbstractC4987a mo157c(long j) {
            this.f15184b = Long.valueOf(j);
            return this;
        }
    }

    public C4980b(long j, long j2, Set set, C4981a c4981a) {
        this.f15180a = j;
        this.f15181b = j2;
        this.f15182c = set;
    }

    @Override // p293y2.AbstractC4985e.AbstractC4986a
    /* renamed from: b */
    public long mo162b() {
        return this.f15180a;
    }

    @Override // p293y2.AbstractC4985e.AbstractC4986a
    /* renamed from: c */
    public Set<AbstractC4985e.EnumC4988b> mo161c() {
        return this.f15182c;
    }

    @Override // p293y2.AbstractC4985e.AbstractC4986a
    /* renamed from: d */
    public long mo160d() {
        return this.f15181b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4985e.AbstractC4986a)) {
            return false;
        }
        AbstractC4985e.AbstractC4986a abstractC4986a = (AbstractC4985e.AbstractC4986a) obj;
        if (this.f15180a != abstractC4986a.mo162b() || this.f15181b != abstractC4986a.mo160d() || !this.f15182c.equals(abstractC4986a.mo161c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f15180a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f15181b;
        return this.f15182c.hashCode() ^ ((((i ^ 1000003) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("ConfigValue{delta=");
        m8752j.append(this.f15180a);
        m8752j.append(", maxAllowedDelay=");
        m8752j.append(this.f15181b);
        m8752j.append(", flags=");
        m8752j.append(this.f15182c);
        m8752j.append("}");
        return m8752j.toString();
    }
}
