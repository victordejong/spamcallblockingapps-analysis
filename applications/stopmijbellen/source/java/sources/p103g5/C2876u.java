package p103g5;

import android.support.p012v4.media.C0082b;
import p103g5.AbstractC2878v;
/* renamed from: g5.u */
/* loaded from: classes-dex2jar.jar:g5/u.class */
public final class C2876u extends AbstractC2878v.AbstractC2883d.AbstractC2903f {

    /* renamed from: a */
    public final String f9788a;

    public C2876u(String str, C2877a c2877a) {
        this.f9788a = str;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2903f
    /* renamed from: a */
    public String mo2871a() {
        return this.f9788a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2878v.AbstractC2883d.AbstractC2903f)) {
            return false;
        }
        return this.f9788a.equals(((AbstractC2878v.AbstractC2883d.AbstractC2903f) obj).mo2871a());
    }

    public int hashCode() {
        return this.f9788a.hashCode() ^ 1000003;
    }

    public String toString() {
        return C0082b.m8754h(C0082b.m8752j("User{identifier="), this.f9788a, "}");
    }
}
