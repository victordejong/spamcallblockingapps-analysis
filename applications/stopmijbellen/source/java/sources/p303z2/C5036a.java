package p303z2;

import android.support.p012v4.media.C0082b;
import p007a6.C0033h;
/* renamed from: z2.a */
/* loaded from: classes-dex2jar.jar:z2/a.class */
public final class C5036a extends AbstractC5040d {

    /* renamed from: b */
    public final long f15307b;

    /* renamed from: c */
    public final int f15308c;

    /* renamed from: d */
    public final int f15309d;

    /* renamed from: e */
    public final long f15310e;

    /* renamed from: f */
    public final int f15311f;

    public C5036a(long j, int i, int i2, long j2, int i3, C5037a c5037a) {
        this.f15307b = j;
        this.f15308c = i;
        this.f15309d = i2;
        this.f15310e = j2;
        this.f15311f = i3;
    }

    @Override // p303z2.AbstractC5040d
    /* renamed from: a */
    public int mo115a() {
        return this.f15309d;
    }

    @Override // p303z2.AbstractC5040d
    /* renamed from: b */
    public long mo114b() {
        return this.f15310e;
    }

    @Override // p303z2.AbstractC5040d
    /* renamed from: c */
    public int mo113c() {
        return this.f15308c;
    }

    @Override // p303z2.AbstractC5040d
    /* renamed from: d */
    public int mo112d() {
        return this.f15311f;
    }

    @Override // p303z2.AbstractC5040d
    /* renamed from: e */
    public long mo111e() {
        return this.f15307b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC5040d)) {
            return false;
        }
        AbstractC5040d abstractC5040d = (AbstractC5040d) obj;
        if (this.f15307b != abstractC5040d.mo111e() || this.f15308c != abstractC5040d.mo113c() || this.f15309d != abstractC5040d.mo115a() || this.f15310e != abstractC5040d.mo114b() || this.f15311f != abstractC5040d.mo112d()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f15307b;
        int i = (int) (j ^ (j >>> 32));
        int i2 = this.f15308c;
        int i3 = this.f15309d;
        long j2 = this.f15310e;
        return this.f15311f ^ ((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("EventStoreConfig{maxStorageSizeInBytes=");
        m8752j.append(this.f15307b);
        m8752j.append(", loadBatchSize=");
        m8752j.append(this.f15308c);
        m8752j.append(", criticalSectionEnterTimeoutMs=");
        m8752j.append(this.f15309d);
        m8752j.append(", eventCleanUpAge=");
        m8752j.append(this.f15310e);
        m8752j.append(", maxBlobByteSizePerRow=");
        return C0033h.m8885l(m8752j, this.f15311f, "}");
    }
}
