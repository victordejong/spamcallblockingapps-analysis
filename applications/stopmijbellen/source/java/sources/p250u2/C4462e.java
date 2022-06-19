package p250u2;

import android.support.p012v4.media.C0082b;
import java.util.Arrays;
import java.util.Objects;
import p218r2.C4184b;
/* renamed from: u2.e */
/* loaded from: classes-dex2jar.jar:u2/e.class */
public final class C4462e {

    /* renamed from: a */
    public final C4184b f13842a;

    /* renamed from: b */
    public final byte[] f13843b;

    public C4462e(C4184b c4184b, byte[] bArr) {
        Objects.requireNonNull(c4184b, "encoding is null");
        Objects.requireNonNull(bArr, "bytes is null");
        this.f13842a = c4184b;
        this.f13843b = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4462e)) {
            return false;
        }
        C4462e c4462e = (C4462e) obj;
        if (this.f13842a.equals(c4462e.f13842a)) {
            return Arrays.equals(this.f13843b, c4462e.f13843b);
        }
        return false;
    }

    public int hashCode() {
        return ((this.f13842a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f13843b);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("EncodedPayload{encoding=");
        m8752j.append(this.f13842a);
        m8752j.append(", bytes=[...]}");
        return m8752j.toString();
    }
}
