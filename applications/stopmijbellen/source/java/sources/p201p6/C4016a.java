package p201p6;

import android.support.p012v4.media.C0082b;
import java.util.Objects;
import javax.annotation.Nonnull;
/* renamed from: p6.a */
/* loaded from: classes-dex2jar.jar:p6/a.class */
public final class C4016a extends AbstractC4019d {

    /* renamed from: a */
    public final String f12632a;

    /* renamed from: b */
    public final String f12633b;

    public C4016a(String str, String str2) {
        Objects.requireNonNull(str, "Null libraryName");
        this.f12632a = str;
        Objects.requireNonNull(str2, "Null version");
        this.f12633b = str2;
    }

    @Override // p201p6.AbstractC4019d
    @Nonnull
    /* renamed from: a */
    public String mo1504a() {
        return this.f12632a;
    }

    @Override // p201p6.AbstractC4019d
    @Nonnull
    /* renamed from: b */
    public String mo1503b() {
        return this.f12633b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4019d)) {
            return false;
        }
        AbstractC4019d abstractC4019d = (AbstractC4019d) obj;
        if (!this.f12632a.equals(abstractC4019d.mo1504a()) || !this.f12633b.equals(abstractC4019d.mo1503b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f12632a.hashCode() ^ 1000003) * 1000003) ^ this.f12633b.hashCode();
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("LibraryVersion{libraryName=");
        m8752j.append(this.f12632a);
        m8752j.append(", version=");
        return C0082b.m8754h(m8752j, this.f12633b, "}");
    }
}
