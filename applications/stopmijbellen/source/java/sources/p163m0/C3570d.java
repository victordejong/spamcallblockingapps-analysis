package p163m0;

import android.support.p012v4.media.C0082b;
import java.util.Objects;
/* renamed from: m0.d */
/* loaded from: classes-dex2jar.jar:m0/d.class */
public final class C3570d {

    /* renamed from: a */
    public final Object f11763a;

    public C3570d(Object obj) {
        this.f11763a = obj;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C3570d.class == obj.getClass()) {
            return Objects.equals(this.f11763a, ((C3570d) obj).f11763a);
        }
        return false;
    }

    public int hashCode() {
        Object obj = this.f11763a;
        return obj == null ? 0 : obj.hashCode();
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("DisplayCutoutCompat{");
        m8752j.append(this.f11763a);
        m8752j.append("}");
        return m8752j.toString();
    }
}
