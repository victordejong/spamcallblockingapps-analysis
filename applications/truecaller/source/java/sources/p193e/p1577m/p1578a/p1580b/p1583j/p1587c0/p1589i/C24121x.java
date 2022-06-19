package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.b.j.c0.i.x */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/i/x.class */
public final class C24121x extends AbstractC24082b0 {

    /* renamed from: b */
    public final long f66822b;

    /* renamed from: c */
    public final int f66823c;

    /* renamed from: d */
    public final int f66824d;

    /* renamed from: e */
    public final long f66825e;

    /* renamed from: f */
    public final int f66826f;

    public C24121x(long j, int i, int i2, long j2, int i3, C24122a c24122a) {
        this.f66822b = j;
        this.f66823c = i;
        this.f66824d = i2;
        this.f66825e = j2;
        this.f66826f = i3;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24082b0
    /* renamed from: a */
    public int mo5561a() {
        return this.f66824d;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24082b0
    /* renamed from: b */
    public long mo5560b() {
        return this.f66825e;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24082b0
    /* renamed from: c */
    public int mo5559c() {
        return this.f66823c;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24082b0
    /* renamed from: d */
    public int mo5558d() {
        return this.f66826f;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24082b0
    /* renamed from: e */
    public long mo5557e() {
        return this.f66822b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC24082b0)) {
            return false;
        }
        AbstractC24082b0 abstractC24082b0 = (AbstractC24082b0) obj;
        if (this.f66822b != abstractC24082b0.mo5557e() || this.f66823c != abstractC24082b0.mo5559c() || this.f66824d != abstractC24082b0.mo5561a() || this.f66825e != abstractC24082b0.mo5560b() || this.f66826f != abstractC24082b0.mo5558d()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f66822b;
        int i = (int) (j ^ (j >>> 32));
        int i2 = this.f66823c;
        int i3 = this.f66824d;
        long j2 = this.f66825e;
        return ((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.f66826f;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("EventStoreConfig{maxStorageSizeInBytes=");
        m8728C.append(this.f66822b);
        m8728C.append(", loadBatchSize=");
        m8728C.append(this.f66823c);
        m8728C.append(", criticalSectionEnterTimeoutMs=");
        m8728C.append(this.f66824d);
        m8728C.append(", eventCleanUpAge=");
        m8728C.append(this.f66825e);
        m8728C.append(", maxBlobByteSizePerRow=");
        return C22128a.m8697J2(m8728C, this.f66826f, "}");
    }
}
