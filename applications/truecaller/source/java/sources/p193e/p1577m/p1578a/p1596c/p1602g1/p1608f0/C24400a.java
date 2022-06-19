package p193e.p1577m.p1578a.p1596c.p1602g1.p1608f0;

import com.google.android.exoplayer2.Format;
import io.agora.rtc.Constants;
import java.io.IOException;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.f0.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/f0/a.class */
public final class C24400a implements AbstractC24408h {

    /* renamed from: a */
    public AbstractC24409i f68055a;

    /* renamed from: b */
    public AbstractC24422s f68056b;

    /* renamed from: c */
    public AbstractC24402b f68057c;

    /* renamed from: d */
    public int f68058d = -1;

    /* renamed from: e */
    public long f68059e = -1;

    /* renamed from: e.m.a.c.g1.f0.a$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/f0/a$a.class */
    public static final class C24401a implements AbstractC24402b {

        /* renamed from: m */
        public static final int[] f68060m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

        /* renamed from: n */
        public static final int[] f68061n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED, 143, Constants.ERR_MODULE_NOT_FOUND, 173, 190, 209, 230, 253, 279, 307, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

        /* renamed from: a */
        public final AbstractC24409i f68062a;

        /* renamed from: b */
        public final AbstractC24422s f68063b;

        /* renamed from: c */
        public final C24404b f68064c;

        /* renamed from: d */
        public final int f68065d;

        /* renamed from: e */
        public final byte[] f68066e;

        /* renamed from: f */
        public final C24798t f68067f;

        /* renamed from: g */
        public final int f68068g;

        /* renamed from: h */
        public final Format f68069h;

        /* renamed from: i */
        public int f68070i;

        /* renamed from: j */
        public long f68071j;

        /* renamed from: k */
        public int f68072k;

        /* renamed from: l */
        public long f68073l;

        public C24401a(AbstractC24409i abstractC24409i, AbstractC24422s abstractC24422s, C24404b c24404b) throws C24560m0 {
            this.f68062a = abstractC24409i;
            this.f68063b = abstractC24422s;
            this.f68064c = c24404b;
            int max = Math.max(1, c24404b.f68084c / 10);
            this.f68068g = max;
            byte[] bArr = c24404b.f68087f;
            int length = bArr.length;
            byte b = bArr[0];
            byte b2 = bArr[1];
            int i = ((bArr[3] & 255) << 8) | (bArr[2] & 255);
            this.f68065d = i;
            int i2 = c24404b.f68083b;
            int i3 = (((c24404b.f68085d - (i2 * 4)) * 8) / (c24404b.f68086e * i2)) + 1;
            if (i == i3) {
                int m4620d = C24773d0.m4620d(max, i);
                this.f68066e = new byte[c24404b.f68085d * m4620d];
                this.f68067f = new C24798t(i * 2 * i2 * m4620d);
                int i4 = c24404b.f68084c;
                this.f68069h = Format.m39254f(null, "audio/raw", null, ((c24404b.f68085d * i4) * 8) / i, max * 2 * i2, c24404b.f68083b, i4, 2, null, null, 0, null);
                return;
            }
            throw new C24560m0(C22128a.m8595m2("Expected frames per block: ", i3, "; got: ", i));
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0068 A[LOOP:0: B:5:0x002a->B:12:0x0068, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0089  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0062 A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0062 -> B:5:0x002a). Please submit an issue!!! */
        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1608f0.C24400a.AbstractC24402b
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean mo5161a(p193e.p1577m.p1578a.p1596c.p1602g1.C24353e r6, long r7) throws java.io.IOException, java.lang.InterruptedException {
            /*
                Method dump skipped, instructions count: 675
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1602g1.p1608f0.C24400a.C24401a.mo5161a(e.m.a.c.g1.e, long):boolean");
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1608f0.C24400a.AbstractC24402b
        /* renamed from: b */
        public void mo5160b(int i, long j) {
            this.f68062a.mo4953s(new C24406d(this.f68064c, this.f68065d, i, j));
            this.f68063b.mo4928b(this.f68069h);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1608f0.C24400a.AbstractC24402b
        /* renamed from: c */
        public void mo5159c(long j) {
            this.f68070i = 0;
            this.f68071j = j;
            this.f68072k = 0;
            this.f68073l = 0L;
        }

        /* renamed from: d */
        public final int m5163d(int i) {
            return i / (this.f68064c.f68083b * 2);
        }

        /* renamed from: e */
        public final void m5162e(int i) {
            long j = this.f68071j;
            long m4598z = C24773d0.m4598z(this.f68073l, 1000000L, this.f68064c.f68084c);
            int i2 = i * 2 * this.f68064c.f68083b;
            this.f68063b.mo4927c(j + m4598z, 1, i2, this.f68072k - i2, null);
            this.f68073l += i;
            this.f68072k -= i2;
        }
    }

    /* renamed from: e.m.a.c.g1.f0.a$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/f0/a$b.class */
    public interface AbstractC24402b {
        /* renamed from: a */
        boolean mo5161a(C24353e c24353e, long j) throws IOException, InterruptedException;

        /* renamed from: b */
        void mo5160b(int i, long j) throws C24560m0;

        /* renamed from: c */
        void mo5159c(long j);
    }

    /* renamed from: e.m.a.c.g1.f0.a$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/f0/a$c.class */
    public static final class C24403c implements AbstractC24402b {

        /* renamed from: a */
        public final AbstractC24409i f68074a;

        /* renamed from: b */
        public final AbstractC24422s f68075b;

        /* renamed from: c */
        public final C24404b f68076c;

        /* renamed from: d */
        public final Format f68077d;

        /* renamed from: e */
        public final int f68078e;

        /* renamed from: f */
        public long f68079f;

        /* renamed from: g */
        public int f68080g;

        /* renamed from: h */
        public long f68081h;

        public C24403c(AbstractC24409i abstractC24409i, AbstractC24422s abstractC24422s, C24404b c24404b, String str, int i) throws C24560m0 {
            this.f68074a = abstractC24409i;
            this.f68075b = abstractC24422s;
            this.f68076c = c24404b;
            int i2 = (c24404b.f68083b * c24404b.f68086e) / 8;
            if (c24404b.f68085d != i2) {
                StringBuilder m8720E = C22128a.m8720E("Expected block size: ", i2, "; got: ");
                m8720E.append(c24404b.f68085d);
                throw new C24560m0(m8720E.toString());
            }
            int max = Math.max(i2, (c24404b.f68084c * i2) / 10);
            this.f68078e = max;
            int i3 = c24404b.f68084c;
            this.f68077d = Format.m39254f(null, str, null, i2 * i3 * 8, max, c24404b.f68083b, i3, i, null, null, 0, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v46, types: [long] */
        /* JADX WARN: Type inference failed for: r10v0, types: [long] */
        /* JADX WARN: Type inference failed for: r10v1 */
        /* JADX WARN: Type inference failed for: r10v3 */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Type inference failed for: r10v5 */
        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1608f0.C24400a.AbstractC24402b
        /* renamed from: a */
        public boolean mo5161a(C24353e c24353e, long j) throws IOException, InterruptedException {
            int i;
            boolean z;
            C24404b c24404b;
            int i2;
            int i3;
            while (true) {
                i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                z = true;
                if (i <= 0 || (i2 = this.f68080g) >= (i3 = this.f68078e)) {
                    break;
                }
                int mo4926d = this.f68075b.mo4926d(c24353e, (int) Math.min(i3 - i2, (long) j), true);
                if (mo4926d == -1) {
                    j = 0;
                } else {
                    this.f68080g += mo4926d;
                    j -= mo4926d;
                }
            }
            int i4 = this.f68076c.f68085d;
            int i5 = this.f68080g / i4;
            if (i5 > 0) {
                long j2 = this.f68079f;
                long m4598z = C24773d0.m4598z(this.f68081h, 1000000L, c24404b.f68084c);
                int i6 = i5 * i4;
                int i7 = this.f68080g - i6;
                this.f68075b.mo4927c(j2 + m4598z, 1, i6, i7, null);
                this.f68081h += i5;
                this.f68080g = i7;
            }
            if (i > 0) {
                z = false;
            }
            return z;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1608f0.C24400a.AbstractC24402b
        /* renamed from: b */
        public void mo5160b(int i, long j) {
            this.f68074a.mo4953s(new C24406d(this.f68076c, 1, i, j));
            this.f68075b.mo4928b(this.f68077d);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1608f0.C24400a.AbstractC24402b
        /* renamed from: c */
        public void mo5159c(long j) {
            this.f68079f = j;
            this.f68080g = 0;
            this.f68081h = 0L;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: a */
    public void mo5131a(long j, long j2) {
        AbstractC24402b abstractC24402b = this.f68057c;
        if (abstractC24402b != null) {
            abstractC24402b.mo5159c(j2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d6  */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int mo5128d(p193e.p1577m.p1578a.p1596c.p1602g1.C24353e r10, p193e.p1577m.p1578a.p1596c.p1602g1.C24417p r11) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 567
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1602g1.p1608f0.C24400a.mo5128d(e.m.a.c.g1.e, e.m.a.c.g1.p):int");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: h */
    public void mo5127h(AbstractC24409i abstractC24409i) {
        this.f68055a = abstractC24409i;
        this.f68056b = abstractC24409i.mo4960i(0, 1);
        abstractC24409i.mo4962g();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: i */
    public boolean mo5126i(C24353e c24353e) throws IOException, InterruptedException {
        return C26232y.m2276z1(c24353e) != null;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    public void release() {
    }
}
