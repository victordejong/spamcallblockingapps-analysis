package p152l0;

import android.support.p012v4.media.C0082b;
import java.util.Objects;
/* renamed from: l0.b */
/* loaded from: classes-dex2jar.jar:l0/b.class */
public class C3427b<F, S> {

    /* renamed from: a */
    public final F f11485a;

    /* renamed from: b */
    public final S f11486b;

    public C3427b(F f, S s) {
        this.f11485a = f;
        this.f11486b = s;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C3427b)) {
            return false;
        }
        C3427b c3427b = (C3427b) obj;
        boolean z = false;
        if (Objects.equals(c3427b.f11485a, this.f11485a)) {
            z = false;
            if (Objects.equals(c3427b.f11486b, this.f11486b)) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        F f = this.f11485a;
        int i = 0;
        int hashCode = f == null ? 0 : f.hashCode();
        S s = this.f11486b;
        if (s != null) {
            i = s.hashCode();
        }
        return hashCode ^ i;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Pair{");
        m8752j.append(this.f11485a);
        m8752j.append(" ");
        m8752j.append(this.f11486b);
        m8752j.append("}");
        return m8752j.toString();
    }
}
