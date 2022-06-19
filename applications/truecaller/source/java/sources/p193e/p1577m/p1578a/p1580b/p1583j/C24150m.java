package p193e.p1577m.p1578a.p1580b.p1583j;

import java.util.Arrays;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1580b.C23987b;
/* renamed from: e.m.a.b.j.m */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/m.class */
public final class C24150m {

    /* renamed from: a */
    public final C23987b f66879a;

    /* renamed from: b */
    public final byte[] f66880b;

    public C24150m(C23987b c23987b, byte[] bArr) {
        Objects.requireNonNull(c23987b, "encoding is null");
        Objects.requireNonNull(bArr, "bytes is null");
        this.f66879a = c23987b;
        this.f66880b = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C24150m)) {
            return false;
        }
        C24150m c24150m = (C24150m) obj;
        if (this.f66879a.equals(c24150m.f66879a)) {
            return Arrays.equals(this.f66880b, c24150m.f66880b);
        }
        return false;
    }

    public int hashCode() {
        return ((this.f66879a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f66880b);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("EncodedPayload{encoding=");
        m8728C.append(this.f66879a);
        m8728C.append(", bytes=[...]}");
        return m8728C.toString();
    }
}
