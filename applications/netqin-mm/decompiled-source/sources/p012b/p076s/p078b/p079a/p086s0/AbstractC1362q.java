package p012b.p076s.p078b.p079a.p086s0;

import androidx.media2.exoplayer.external.Format;
import java.io.IOException;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
/* renamed from: b.s.b.a.s0.q */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/q.class */
public interface AbstractC1362q {

    /* renamed from: b.s.b.a.s0.q$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/q$a.class */
    public static final class C1363a {

        /* renamed from: a */
        public final int f5363a;

        /* renamed from: b */
        public final byte[] f5364b;

        /* renamed from: c */
        public final int f5365c;

        /* renamed from: d */
        public final int f5366d;

        public C1363a(int i, byte[] bArr, int i2, int i3) {
            this.f5363a = i;
            this.f5364b = bArr;
            this.f5365c = i2;
            this.f5366d = i3;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C1363a.class != obj.getClass()) {
                return false;
            }
            C1363a aVar = (C1363a) obj;
            if (!(this.f5363a == aVar.f5363a && this.f5365c == aVar.f5365c && this.f5366d == aVar.f5366d && Arrays.equals(this.f5364b, aVar.f5364b))) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (((((this.f5363a * 31) + Arrays.hashCode(this.f5364b)) * 31) + this.f5365c) * 31) + this.f5366d;
        }
    }

    /* renamed from: a */
    int mo32825a(AbstractC1351h hVar, int i, boolean z) throws IOException, InterruptedException;

    /* renamed from: a */
    void mo32832a(long j, int i, int i2, int i3, C1363a aVar);

    /* renamed from: a */
    void mo32623a(Format format);

    /* renamed from: a */
    void mo32827a(C1184p pVar, int i);
}
