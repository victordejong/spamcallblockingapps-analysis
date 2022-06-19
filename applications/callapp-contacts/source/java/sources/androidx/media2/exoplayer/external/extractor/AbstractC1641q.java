package androidx.media2.exoplayer.external.extractor;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.util.C2018p;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: androidx.media2.exoplayer.external.extractor.q */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/q.class */
public interface AbstractC1641q {

    /* renamed from: androidx.media2.exoplayer.external.extractor.q$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/q$a.class */
    public static final class C1642a {

        /* renamed from: a */
        public final int f6508a;

        /* renamed from: b */
        public final byte[] f6509b;

        /* renamed from: c */
        public final int f6510c;

        /* renamed from: d */
        public final int f6511d;

        public C1642a(int i, byte[] bArr, int i2, int i3) {
            this.f6508a = i;
            this.f6509b = bArr;
            this.f6510c = i2;
            this.f6511d = i3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C1642a c1642a = (C1642a) obj;
            return this.f6508a == c1642a.f6508a && this.f6510c == c1642a.f6510c && this.f6511d == c1642a.f6511d && Arrays.equals(this.f6509b, c1642a.f6509b);
        }

        public final int hashCode() {
            return (((((this.f6508a * 31) + Arrays.hashCode(this.f6509b)) * 31) + this.f6510c) * 31) + this.f6511d;
        }
    }

    /* renamed from: a */
    int mo42308a(AbstractC1600h abstractC1600h, int i, boolean z) throws IOException, InterruptedException;

    /* renamed from: a */
    void mo42313a(long j, int i, int i2, int i3, C1642a c1642a);

    /* renamed from: a */
    void mo42192a(Format format);

    /* renamed from: a */
    void mo42306a(C2018p c2018p, int i);
}
