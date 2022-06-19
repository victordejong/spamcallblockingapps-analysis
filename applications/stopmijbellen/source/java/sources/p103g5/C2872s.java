package p103g5;

import android.support.p012v4.media.C0082b;
import p103g5.AbstractC2878v;
/* renamed from: g5.s */
/* loaded from: classes-dex2jar.jar:g5/s.class */
public final class C2872s extends AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2901c {

    /* renamed from: a */
    public final String f9783a;

    public C2872s(String str, C2873a c2873a) {
        this.f9783a = str;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2901c
    /* renamed from: a */
    public String mo2876a() {
        return this.f9783a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2901c)) {
            return false;
        }
        return this.f9783a.equals(((AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2901c) obj).mo2876a());
    }

    public int hashCode() {
        return this.f9783a.hashCode() ^ 1000003;
    }

    public String toString() {
        return C0082b.m8754h(C0082b.m8752j("Log{content="), this.f9783a, "}");
    }
}
