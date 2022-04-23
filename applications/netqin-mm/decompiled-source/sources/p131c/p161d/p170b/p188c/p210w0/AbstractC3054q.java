package p131c.p161d.p170b.p188c.p210w0;

import com.google.android.exoplayer2.Format;
import java.io.IOException;
import java.util.Arrays;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
/* renamed from: c.d.b.c.w0.q */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/q.class */
public interface AbstractC3054q {

    /* renamed from: c.d.b.c.w0.q$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/q$a.class */
    public static final class C3055a {

        /* renamed from: a */
        public final int f10997a;

        /* renamed from: b */
        public final byte[] f10998b;

        /* renamed from: c */
        public final int f10999c;

        /* renamed from: d */
        public final int f11000d;

        public C3055a(int i, byte[] bArr, int i2, int i3) {
            this.f10997a = i;
            this.f10998b = bArr;
            this.f10999c = i2;
            this.f11000d = i3;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C3055a.class != obj.getClass()) {
                return false;
            }
            C3055a aVar = (C3055a) obj;
            if (!(this.f10997a == aVar.f10997a && this.f10999c == aVar.f10999c && this.f11000d == aVar.f11000d && Arrays.equals(this.f10998b, aVar.f10998b))) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (((((this.f10997a * 31) + Arrays.hashCode(this.f10998b)) * 31) + this.f10999c) * 31) + this.f11000d;
        }
    }

    /* renamed from: a */
    int mo28035a(AbstractC3043h hVar, int i, boolean z) throws IOException, InterruptedException;

    /* renamed from: a */
    void mo28037a(long j, int i, int i2, int i3, C3055a aVar);

    /* renamed from: a */
    void mo28036a(C2904v vVar, int i);

    /* renamed from: a */
    void mo28034a(Format format);
}
