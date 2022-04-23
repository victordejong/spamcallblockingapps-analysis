package p131c.p161d.p170b.p173b.p176i;

import java.util.Arrays;
import p131c.p161d.p170b.p173b.C2493b;
/* renamed from: c.d.b.b.i.g */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/g.class */
public final class C2561g {

    /* renamed from: a */
    public final C2493b f9615a;

    /* renamed from: b */
    public final byte[] f9616b;

    public C2561g(C2493b bVar, byte[] bArr) {
        if (bVar == null) {
            throw new NullPointerException("encoding is null");
        } else if (bArr != null) {
            this.f9615a = bVar;
            this.f9616b = bArr;
        } else {
            throw new NullPointerException("bytes is null");
        }
    }

    /* renamed from: a */
    public byte[] m29548a() {
        return this.f9616b;
    }

    /* renamed from: b */
    public C2493b m29547b() {
        return this.f9615a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2561g)) {
            return false;
        }
        C2561g gVar = (C2561g) obj;
        if (!this.f9615a.equals(gVar.f9615a)) {
            return false;
        }
        return Arrays.equals(this.f9616b, gVar.f9616b);
    }

    public int hashCode() {
        return ((this.f9615a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f9616b);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.f9615a + ", bytes=[...]}";
    }
}
