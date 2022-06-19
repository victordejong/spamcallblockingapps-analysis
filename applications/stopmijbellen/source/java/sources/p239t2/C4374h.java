package p239t2;

import android.support.p012v4.media.C0082b;
/* renamed from: t2.h */
/* loaded from: classes-dex2jar.jar:t2/h.class */
public final class C4374h extends AbstractC4383n {

    /* renamed from: a */
    public final long f13664a;

    public C4374h(long j) {
        this.f13664a = j;
    }

    @Override // p239t2.AbstractC4383n
    /* renamed from: b */
    public long mo978b() {
        return this.f13664a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4383n)) {
            return false;
        }
        if (this.f13664a != ((AbstractC4383n) obj).mo978b()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f13664a;
        return 1000003 ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("LogResponse{nextRequestWaitMillis=");
        m8752j.append(this.f13664a);
        m8752j.append("}");
        return m8752j.toString();
    }
}
