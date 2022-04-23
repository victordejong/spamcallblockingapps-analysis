package androidx.media2.session;

import androidx.media2.common.Rating;
import p012b.p042i.p053o.C0943c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/PercentageRating.class */
public final class PercentageRating implements Rating {

    /* renamed from: a */
    public float f2214a = -1.0f;

    /* renamed from: e */
    public boolean m37729e() {
        return this.f2214a != -1.0f;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof PercentageRating)) {
            return false;
        }
        if (this.f2214a == ((PercentageRating) obj).f2214a) {
            z = true;
        }
        return z;
    }

    public int hashCode() {
        return C0943c.m35447a(Float.valueOf(this.f2214a));
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("PercentageRating: ");
        if (m37729e()) {
            str = "percentage=" + this.f2214a;
        } else {
            str = "unrated";
        }
        sb.append(str);
        return sb.toString();
    }
}
