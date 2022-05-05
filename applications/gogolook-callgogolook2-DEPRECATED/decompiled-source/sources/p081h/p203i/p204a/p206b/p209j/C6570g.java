package p081h.p203i.p204a.p206b.p209j;

import androidx.annotation.NonNull;
import java.util.Arrays;
import p081h.p203i.p204a.p206b.C6493b;
/* renamed from: h.i.a.b.j.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/g.class */
public final class C6570g {

    /* renamed from: a */
    public final C6493b f16372a;

    /* renamed from: b */
    public final byte[] f16373b;

    public C6570g(@NonNull C6493b bVar, @NonNull byte[] bArr) {
        if (bVar == null) {
            throw new NullPointerException("encoding is null");
        } else if (bArr != null) {
            this.f16372a = bVar;
            this.f16373b = bArr;
        } else {
            throw new NullPointerException("bytes is null");
        }
    }

    /* renamed from: a */
    public byte[] m22338a() {
        return this.f16373b;
    }

    /* renamed from: b */
    public C6493b m22337b() {
        return this.f16372a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6570g)) {
            return false;
        }
        C6570g gVar = (C6570g) obj;
        if (!this.f16372a.equals(gVar.f16372a)) {
            return false;
        }
        return Arrays.equals(this.f16373b, gVar.f16373b);
    }

    public int hashCode() {
        return ((this.f16372a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f16373b);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.f16372a + ", bytes=[...]}";
    }
}
