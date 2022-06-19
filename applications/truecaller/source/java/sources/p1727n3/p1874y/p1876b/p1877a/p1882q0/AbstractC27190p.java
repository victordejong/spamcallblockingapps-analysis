package p1727n3.p1874y.p1876b.p1877a.p1882q0;

import androidx.media2.exoplayer.external.Format;
import java.io.IOException;
import java.util.Arrays;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.p */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/p.class */
public interface AbstractC27190p {

    /* renamed from: n3.y.b.a.q0.p$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/p$a.class */
    public static final class C27191a {

        /* renamed from: a */
        public final int f76063a;

        /* renamed from: b */
        public final byte[] f76064b;

        /* renamed from: c */
        public final int f76065c;

        /* renamed from: d */
        public final int f76066d;

        public C27191a(int i, byte[] bArr, int i2, int i3) {
            this.f76063a = i;
            this.f76064b = bArr;
            this.f76065c = i2;
            this.f76066d = i3;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C27191a.class != obj.getClass()) {
                return false;
            }
            C27191a c27191a = (C27191a) obj;
            if (this.f76063a != c27191a.f76063a || this.f76065c != c27191a.f76065c || this.f76066d != c27191a.f76066d || !Arrays.equals(this.f76064b, c27191a.f76064b)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return ((((Arrays.hashCode(this.f76064b) + (this.f76063a * 31)) * 31) + this.f76065c) * 31) + this.f76066d;
        }
    }

    /* renamed from: a */
    int mo742a(C27176d c27176d, int i, boolean z) throws IOException, InterruptedException;

    /* renamed from: b */
    void mo741b(long j, int i, int i2, int i3, C27191a c27191a);

    /* renamed from: c */
    void mo740c(Format format);

    /* renamed from: d */
    void mo739d(C27434m c27434m, int i);
}
