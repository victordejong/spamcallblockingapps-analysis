package com.criteo.publisher.p246f;

import com.criteo.publisher.p246f.AbstractC8329y;
import com.google.gson.annotations.AbstractC15952b;
import java.util.List;
import java.util.Objects;
/* renamed from: com.criteo.publisher.f.e */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/e.class */
abstract class AbstractC8295e extends AbstractC8329y.AbstractC8330a {

    /* renamed from: a */
    private final List<AbstractC8329y.AbstractC8331b> f29896a;

    /* renamed from: b */
    private final Long f29897b;

    /* renamed from: c */
    private final boolean f29898c;

    /* renamed from: d */
    private final long f29899d;

    /* renamed from: e */
    private final Long f29900e;

    /* renamed from: f */
    private final String f29901f;

    public AbstractC8295e(List<AbstractC8329y.AbstractC8331b> list, Long l, boolean z, long j, Long l2, String str) {
        Objects.requireNonNull(list, "Null slots");
        this.f29896a = list;
        this.f29897b = l;
        this.f29898c = z;
        this.f29899d = j;
        this.f29900e = l2;
        this.f29901f = str;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8329y.AbstractC8330a
    /* renamed from: a */
    public final List<AbstractC8329y.AbstractC8331b> mo25843a() {
        return this.f29896a;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8329y.AbstractC8330a
    /* renamed from: b */
    public final Long mo25839b() {
        return this.f29897b;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8329y.AbstractC8330a
    @AbstractC15952b(m7988a = "isTimeout")
    /* renamed from: c */
    public final boolean mo25838c() {
        return this.f29898c;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8329y.AbstractC8330a
    /* renamed from: d */
    public final long mo25837d() {
        return this.f29899d;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8329y.AbstractC8330a
    /* renamed from: e */
    public final Long mo25836e() {
        return this.f29900e;
    }

    public boolean equals(Object obj) {
        Long l;
        Long l2;
        String str;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8329y.AbstractC8330a)) {
            return false;
        }
        AbstractC8329y.AbstractC8330a abstractC8330a = (AbstractC8329y.AbstractC8330a) obj;
        if (!this.f29896a.equals(abstractC8330a.mo25843a()) || ((l = this.f29897b) != null ? !l.equals(abstractC8330a.mo25839b()) : abstractC8330a.mo25839b() != null) || this.f29898c != abstractC8330a.mo25838c() || this.f29899d != abstractC8330a.mo25837d() || ((l2 = this.f29900e) != null ? !l2.equals(abstractC8330a.mo25836e()) : abstractC8330a.mo25836e() != null) || ((str = this.f29901f) != null ? !str.equals(abstractC8330a.mo25835f()) : abstractC8330a.mo25835f() != null)) {
            z = false;
        }
        return z;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8329y.AbstractC8330a
    /* renamed from: f */
    public final String mo25835f() {
        return this.f29901f;
    }

    public int hashCode() {
        int hashCode = this.f29896a.hashCode();
        Long l = this.f29897b;
        int i = 0;
        int hashCode2 = l == null ? 0 : l.hashCode();
        int i2 = this.f29898c ? 1231 : 1237;
        long j = this.f29899d;
        int i3 = (int) (j ^ (j >>> 32));
        Long l2 = this.f29900e;
        int hashCode3 = l2 == null ? 0 : l2.hashCode();
        String str = this.f29901f;
        if (str != null) {
            i = str.hashCode();
        }
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ hashCode3) * 1000003) ^ i;
    }

    public String toString() {
        return "MetricRequestFeedback{slots=" + this.f29896a + ", elapsed=" + this.f29897b + ", timeout=" + this.f29898c + ", cdbCallStartElapsed=" + this.f29899d + ", cdbCallEndElapsed=" + this.f29900e + ", requestGroupId=" + this.f29901f + "}";
    }
}
