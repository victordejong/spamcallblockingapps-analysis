package p193e.p194a.p195a.p200c;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.a.c.f8 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/f8.class */
public final class C5282f8 {

    /* renamed from: a */
    public final long f18096a;

    /* renamed from: b */
    public final int f18097b;

    public C5282f8(long j, int i) {
        this.f18096a = j;
        this.f18097b = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C5282f8)) {
                return false;
            }
            C5282f8 c5282f8 = (C5282f8) obj;
            return this.f18096a == c5282f8.f18096a && this.f18097b == c5282f8.f18097b;
        }
        return true;
    }

    public int hashCode() {
        return (C4876d.m34274a(this.f18096a) * 31) + this.f18097b;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Thread(conversation=");
        m8728C.append(this.f18096a);
        m8728C.append(", filter=");
        return C22128a.m8697J2(m8728C, this.f18097b, ")");
    }
}
