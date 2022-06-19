package p218r2;

import android.support.p012v4.media.C0082b;
import java.util.Objects;
/* renamed from: r2.b */
/* loaded from: classes-dex2jar.jar:r2/b.class */
public final class C4184b {

    /* renamed from: a */
    public final String f13173a;

    public C4184b(String str) {
        Objects.requireNonNull(str, "name is null");
        this.f13173a = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C4184b) {
            return this.f13173a.equals(((C4184b) obj).f13173a);
        }
        return false;
    }

    public int hashCode() {
        return this.f13173a.hashCode() ^ 1000003;
    }

    public String toString() {
        return C0082b.m8754h(C0082b.m8752j("Encoding{name=\""), this.f13173a, "\"}");
    }
}
