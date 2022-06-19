package p286x5;

import android.support.p012v4.media.C0082b;
/* renamed from: x5.a */
/* loaded from: classes-dex2jar.jar:x5/a.class */
public final class C4865a extends AbstractC4875i {

    /* renamed from: a */
    public final String f14909a;

    /* renamed from: b */
    public final long f14910b;

    /* renamed from: c */
    public final long f14911c;

    public C4865a(String str, long j, long j2, C4866a c4866a) {
        this.f14909a = str;
        this.f14910b = j;
        this.f14911c = j2;
    }

    @Override // p286x5.AbstractC4875i
    /* renamed from: a */
    public String mo328a() {
        return this.f14909a;
    }

    @Override // p286x5.AbstractC4875i
    /* renamed from: b */
    public long mo327b() {
        return this.f14911c;
    }

    @Override // p286x5.AbstractC4875i
    /* renamed from: c */
    public long mo326c() {
        return this.f14910b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4875i)) {
            return false;
        }
        AbstractC4875i abstractC4875i = (AbstractC4875i) obj;
        if (!this.f14909a.equals(abstractC4875i.mo328a()) || this.f14910b != abstractC4875i.mo326c() || this.f14911c != abstractC4875i.mo327b()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f14909a.hashCode();
        long j = this.f14910b;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f14911c;
        return ((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("InstallationTokenResult{token=");
        m8752j.append(this.f14909a);
        m8752j.append(", tokenExpirationTimestamp=");
        m8752j.append(this.f14910b);
        m8752j.append(", tokenCreationTimestamp=");
        m8752j.append(this.f14911c);
        m8752j.append("}");
        return m8752j.toString();
    }
}
