package p193e.p1577m.p1578a.p1596c.p1602g1;

import com.google.android.exoplayer2.Format;
import java.io.IOException;
import java.util.Arrays;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.s */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/s.class */
public interface AbstractC24422s {

    /* renamed from: e.m.a.c.g1.s$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/s$a.class */
    public static final class C24423a {

        /* renamed from: a */
        public final int f68124a;

        /* renamed from: b */
        public final byte[] f68125b;

        /* renamed from: c */
        public final int f68126c;

        /* renamed from: d */
        public final int f68127d;

        public C24423a(int i, byte[] bArr, int i2, int i3) {
            this.f68124a = i;
            this.f68125b = bArr;
            this.f68126c = i2;
            this.f68127d = i3;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C24423a.class != obj.getClass()) {
                return false;
            }
            C24423a c24423a = (C24423a) obj;
            if (this.f68124a != c24423a.f68124a || this.f68126c != c24423a.f68126c || this.f68127d != c24423a.f68127d || !Arrays.equals(this.f68125b, c24423a.f68125b)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return ((((Arrays.hashCode(this.f68125b) + (this.f68124a * 31)) * 31) + this.f68126c) * 31) + this.f68127d;
        }
    }

    /* renamed from: a */
    void mo4929a(C24798t c24798t, int i);

    /* renamed from: b */
    void mo4928b(Format format);

    /* renamed from: c */
    void mo4927c(long j, int i, int i2, int i3, C24423a c24423a);

    /* renamed from: d */
    int mo4926d(C24353e c24353e, int i, boolean z) throws IOException, InterruptedException;
}
