package p261v2;

import android.support.p012v4.media.C0082b;
import p237t.C4350g;
/* renamed from: v2.b */
/* loaded from: classes-dex2jar.jar:v2/b.class */
public final class C4589b extends AbstractC4594g {

    /* renamed from: a */
    public final int f14178a;

    /* renamed from: b */
    public final long f14179b;

    public C4589b(int i, long j) {
        if (i != 0) {
            this.f14178a = i;
            this.f14179b = j;
            return;
        }
        throw new NullPointerException("Null status");
    }

    @Override // p261v2.AbstractC4594g
    /* renamed from: b */
    public long mo747b() {
        return this.f14179b;
    }

    @Override // p261v2.AbstractC4594g
    /* renamed from: c */
    public int mo746c() {
        return this.f14178a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4594g)) {
            return false;
        }
        AbstractC4594g abstractC4594g = (AbstractC4594g) obj;
        if (!C4350g.m1022b(this.f14178a, abstractC4594g.mo746c()) || this.f14179b != abstractC4594g.mo747b()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int m1021c = C4350g.m1021c(this.f14178a);
        long j = this.f14179b;
        return ((m1021c ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("BackendResponse{status=");
        m8752j.append(C0082b.m8747o(this.f14178a));
        m8752j.append(", nextRequestWaitMillis=");
        m8752j.append(this.f14179b);
        m8752j.append("}");
        return m8752j.toString();
    }
}
