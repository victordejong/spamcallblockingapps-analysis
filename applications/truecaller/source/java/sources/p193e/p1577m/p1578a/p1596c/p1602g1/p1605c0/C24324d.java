package p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0;

import android.util.SparseArray;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.Format;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.AbstractC24316a;
import p193e.p1577m.p1578a.p1596c.p1613i1.p1614g.C24469b;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24794r;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.c0.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/c0/d.class */
public class C24324d implements AbstractC24408h {

    /* renamed from: F */
    public static final byte[] f67542F = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};

    /* renamed from: G */
    public static final Format f67543G = Format.m39251i(null, "application/x-emsg", RecyclerView.FOREVER_NS);

    /* renamed from: A */
    public boolean f67544A;

    /* renamed from: B */
    public AbstractC24409i f67545B;

    /* renamed from: C */
    public AbstractC24422s[] f67546C;

    /* renamed from: D */
    public AbstractC24422s[] f67547D;

    /* renamed from: E */
    public boolean f67548E;

    /* renamed from: a */
    public final int f67549a;

    /* renamed from: b */
    public final List<Format> f67550b;

    /* renamed from: g */
    public final byte[] f67555g;

    /* renamed from: h */
    public final C24798t f67556h;

    /* renamed from: m */
    public int f67561m;

    /* renamed from: n */
    public int f67562n;

    /* renamed from: o */
    public long f67563o;

    /* renamed from: p */
    public int f67564p;

    /* renamed from: q */
    public C24798t f67565q;

    /* renamed from: r */
    public long f67566r;

    /* renamed from: s */
    public int f67567s;

    /* renamed from: w */
    public C24326b f67571w;

    /* renamed from: x */
    public int f67572x;

    /* renamed from: y */
    public int f67573y;

    /* renamed from: z */
    public int f67574z;

    /* renamed from: i */
    public final C24469b f67557i = new C24469b();

    /* renamed from: j */
    public final C24798t f67558j = new C24798t(16);

    /* renamed from: d */
    public final C24798t f67552d = new C24798t(C24794r.f69480a);

    /* renamed from: e */
    public final C24798t f67553e = new C24798t(5);

    /* renamed from: f */
    public final C24798t f67554f = new C24798t();

    /* renamed from: k */
    public final ArrayDeque<AbstractC24316a.C24317a> f67559k = new ArrayDeque<>();

    /* renamed from: l */
    public final ArrayDeque<C24325a> f67560l = new ArrayDeque<>();

    /* renamed from: c */
    public final SparseArray<C24326b> f67551c = new SparseArray<>();

    /* renamed from: u */
    public long f67569u = -9223372036854775807L;

    /* renamed from: t */
    public long f67568t = -9223372036854775807L;

    /* renamed from: v */
    public long f67570v = -9223372036854775807L;

    /* renamed from: e.m.a.c.g1.c0.d$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/c0/d$a.class */
    public static final class C24325a {

        /* renamed from: a */
        public final long f67575a;

        /* renamed from: b */
        public final int f67576b;

        public C24325a(long j, int i) {
            this.f67575a = j;
            this.f67576b = i;
        }
    }

    /* renamed from: e.m.a.c.g1.c0.d$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/c0/d$b.class */
    public static final class C24326b {

        /* renamed from: a */
        public final AbstractC24422s f67577a;

        /* renamed from: d */
        public C24332i f67580d;

        /* renamed from: e */
        public C24323c f67581e;

        /* renamed from: f */
        public int f67582f;

        /* renamed from: g */
        public int f67583g;

        /* renamed from: h */
        public int f67584h;

        /* renamed from: i */
        public int f67585i;

        /* renamed from: b */
        public final C24334k f67578b = new C24334k();

        /* renamed from: c */
        public final C24798t f67579c = new C24798t();

        /* renamed from: j */
        public final C24798t f67586j = new C24798t(1);

        /* renamed from: k */
        public final C24798t f67587k = new C24798t();

        public C24326b(AbstractC24422s abstractC24422s) {
            this.f67577a = abstractC24422s;
        }

        /* renamed from: a */
        public final C24333j m5250a() {
            C24334k c24334k = this.f67578b;
            int i = c24334k.f67631a.f67538a;
            C24333j c24333j = c24334k.f67644n;
            if (c24333j == null) {
                c24333j = this.f67580d.m5235a(i);
            }
            if (c24333j == null || !c24333j.f67626a) {
                c24333j = null;
            }
            return c24333j;
        }

        /* renamed from: b */
        public void m5249b(C24332i c24332i, C24323c c24323c) {
            Objects.requireNonNull(c24332i);
            this.f67580d = c24332i;
            Objects.requireNonNull(c24323c);
            this.f67581e = c24323c;
            this.f67577a.mo4928b(c24332i.f67620f);
            m5246e();
        }

        /* renamed from: c */
        public boolean m5248c() {
            this.f67582f++;
            int i = this.f67583g + 1;
            this.f67583g = i;
            int[] iArr = this.f67578b.f67637g;
            int i2 = this.f67584h;
            if (i == iArr[i2]) {
                this.f67584h = i2 + 1;
                this.f67583g = 0;
                return false;
            }
            return true;
        }

        /* renamed from: d */
        public int m5247d(int i, int i2) {
            C24798t c24798t;
            C24333j m5250a = m5250a();
            if (m5250a == null) {
                return 0;
            }
            int i3 = m5250a.f67629d;
            if (i3 != 0) {
                c24798t = this.f67578b.f67646p;
            } else {
                byte[] bArr = m5250a.f67630e;
                c24798t = this.f67587k;
                int length = bArr.length;
                c24798t.f69504a = bArr;
                c24798t.f69506c = length;
                c24798t.f69505b = 0;
                i3 = bArr.length;
            }
            C24334k c24334k = this.f67578b;
            boolean z = c24334k.f67642l && c24334k.f67643m[this.f67582f];
            boolean z2 = z || i2 != 0;
            C24798t c24798t2 = this.f67586j;
            c24798t2.f69504a[0] = (byte) ((z2 ? 128 : 0) | i3);
            c24798t2.m4547C(0);
            this.f67577a.mo4929a(this.f67586j, 1);
            this.f67577a.mo4929a(c24798t, i3);
            if (!z2) {
                return i3 + 1;
            }
            if (!z) {
                this.f67579c.m4521y(8);
                C24798t c24798t3 = this.f67579c;
                byte[] bArr2 = c24798t3.f69504a;
                bArr2[0] = (byte) 0;
                bArr2[1] = (byte) 1;
                bArr2[2] = (byte) ((i2 >> 8) & 255);
                bArr2[3] = (byte) (i2 & 255);
                bArr2[4] = (byte) ((i >> 24) & 255);
                bArr2[5] = (byte) ((i >> 16) & 255);
                bArr2[6] = (byte) ((i >> 8) & 255);
                bArr2[7] = (byte) (i & 255);
                this.f67577a.mo4929a(c24798t3, 8);
                return i3 + 1 + 8;
            }
            C24798t c24798t4 = this.f67578b.f67646p;
            int m4524v = c24798t4.m4524v();
            c24798t4.m4546D(-2);
            int i4 = (m4524v * 6) + 2;
            C24798t c24798t5 = c24798t4;
            if (i2 != 0) {
                this.f67579c.m4521y(i4);
                this.f67579c.m4542d(c24798t4.f69504a, 0, i4);
                c24798t4.m4546D(i4);
                c24798t5 = this.f67579c;
                byte[] bArr3 = c24798t5.f69504a;
                int i5 = (((bArr3[2] & 255) << 8) | (bArr3[3] & 255)) + i2;
                bArr3[2] = (byte) ((i5 >> 8) & 255);
                bArr3[3] = (byte) (i5 & 255);
            }
            this.f67577a.mo4929a(c24798t5, i4);
            return i3 + 1 + i4;
        }

        /* renamed from: e */
        public void m5246e() {
            C24334k c24334k = this.f67578b;
            c24334k.f67634d = 0;
            c24334k.f67648r = 0L;
            c24334k.f67642l = false;
            c24334k.f67647q = false;
            c24334k.f67644n = null;
            this.f67582f = 0;
            this.f67584h = 0;
            this.f67583g = 0;
            this.f67585i = 0;
        }
    }

    public C24324d(int i) {
        List emptyList = Collections.emptyList();
        this.f67549a = i | 0;
        this.f67550b = Collections.unmodifiableList(emptyList);
        byte[] bArr = new byte[16];
        this.f67555g = bArr;
        this.f67556h = new C24798t(bArr);
        m5256b();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x013b A[SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.drm.DrmInitData m5254e(java.util.List<p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.AbstractC24316a.C24318b> r7) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.C24324d.m5254e(java.util.List):com.google.android.exoplayer2.drm.DrmInitData");
    }

    /* renamed from: g */
    public static void m5252g(C24798t c24798t, int i, C24334k c24334k) throws C24560m0 {
        c24798t.m4547C(i + 8);
        int m4541e = c24798t.m4541e() & 16777215;
        if ((m4541e & 1) == 0) {
            boolean z = (m4541e & 2) != 0;
            int m4526t = c24798t.m4526t();
            if (m4526t != c24334k.f67635e) {
                StringBuilder m8720E = C22128a.m8720E("Length mismatch: ", m4526t, ", ");
                m8720E.append(c24334k.f67635e);
                throw new C24560m0(m8720E.toString());
            }
            Arrays.fill(c24334k.f67643m, 0, m4526t, z);
            c24334k.m5234a(c24798t.m4545a());
            c24798t.m4542d(c24334k.f67646p.f69504a, 0, c24334k.f67645o);
            c24334k.f67646p.m4547C(0);
            c24334k.f67647q = false;
            return;
        }
        throw new C24560m0("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: a */
    public void mo5131a(long j, long j2) {
        int size = this.f67551c.size();
        for (int i = 0; i < size; i++) {
            this.f67551c.valueAt(i).m5246e();
        }
        this.f67560l.clear();
        this.f67567s = 0;
        this.f67568t = j2;
        this.f67559k.clear();
        m5256b();
    }

    /* renamed from: b */
    public final void m5256b() {
        this.f67561m = 0;
        this.f67564p = 0;
    }

    /* renamed from: c */
    public final C24323c m5255c(SparseArray<C24323c> sparseArray, int i) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        C24323c c24323c = sparseArray.get(i);
        Objects.requireNonNull(c24323c);
        return c24323c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:321:0x04f0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:333:0x0cdf A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:335:0x0002 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:339:0x0002 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v253, types: [long] */
    /* JADX WARN: Type inference failed for: r0v294, types: [long] */
    /* JADX WARN: Type inference failed for: r0v414, types: [long] */
    /* JADX WARN: Type inference failed for: r0v421, types: [long] */
    /* JADX WARN: Type inference failed for: r0v423, types: [long] */
    /* JADX WARN: Type inference failed for: r0v427, types: [long] */
    /* JADX WARN: Type inference failed for: r0v433, types: [long] */
    /* JADX WARN: Type inference failed for: r0v436, types: [long] */
    /* JADX WARN: Type inference failed for: r0v438, types: [long] */
    /* JADX WARN: Type inference failed for: r0v461, types: [long] */
    /* JADX WARN: Type inference failed for: r0v463, types: [long] */
    /* JADX WARN: Type inference failed for: r0v496, types: [long] */
    /* JADX WARN: Type inference failed for: r0v498, types: [long] */
    /* JADX WARN: Type inference failed for: r0v502, types: [long] */
    /* JADX WARN: Type inference failed for: r0v504, types: [long] */
    /* JADX WARN: Type inference failed for: r0v506, types: [long] */
    /* JADX WARN: Type inference failed for: r0v508, types: [long] */
    /* JADX WARN: Type inference failed for: r0v510, types: [long] */
    /* JADX WARN: Type inference failed for: r0v634, types: [long] */
    /* JADX WARN: Type inference failed for: r0v649, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int mo5128d(p193e.p1577m.p1578a.p1596c.p1602g1.C24353e r11, p193e.p1577m.p1578a.p1596c.p1602g1.C24417p r12) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 3319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.C24324d.mo5128d(e.m.a.c.g1.e, e.m.a.c.g1.p):int");
    }

    /* renamed from: f */
    public final void m5253f() {
        int i;
        if (this.f67546C == null) {
            AbstractC24422s[] abstractC24422sArr = new AbstractC24422s[2];
            this.f67546C = abstractC24422sArr;
            if ((this.f67549a & 4) != 0) {
                abstractC24422sArr[0] = this.f67545B.mo4960i(this.f67551c.size(), 4);
                i = 1;
            } else {
                i = 0;
            }
            AbstractC24422s[] abstractC24422sArr2 = (AbstractC24422s[]) Arrays.copyOf(this.f67546C, i);
            this.f67546C = abstractC24422sArr2;
            for (AbstractC24422s abstractC24422s : abstractC24422sArr2) {
                abstractC24422s.mo4928b(f67543G);
            }
        }
        if (this.f67547D == null) {
            this.f67547D = new AbstractC24422s[this.f67550b.size()];
            for (int i2 = 0; i2 < this.f67547D.length; i2++) {
                AbstractC24422s mo4960i = this.f67545B.mo4960i(this.f67551c.size() + 1 + i2, 3);
                mo4960i.mo4928b(this.f67550b.get(i2));
                this.f67547D[i2] = mo4960i;
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: h */
    public void mo5127h(AbstractC24409i abstractC24409i) {
        this.f67545B = abstractC24409i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: i */
    public boolean mo5126i(C24353e c24353e) throws IOException, InterruptedException {
        return C24331h.m5236a(c24353e, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:326:0x0d2a, code lost:
        m5256b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x0d2e, code lost:
        return;
     */
    /* JADX WARN: Type inference failed for: r0v136, types: [long] */
    /* JADX WARN: Type inference failed for: r0v303, types: [long] */
    /* JADX WARN: Type inference failed for: r0v305, types: [long] */
    /* JADX WARN: Type inference failed for: r0v428, types: [long] */
    /* JADX WARN: Type inference failed for: r0v452, types: [long] */
    /* JADX WARN: Type inference failed for: r0v466, types: [long] */
    /* JADX WARN: Type inference failed for: r0v527, types: [long] */
    /* JADX WARN: Type inference failed for: r0v529, types: [long] */
    /* JADX WARN: Type inference failed for: r0v660, types: [long] */
    /* JADX WARN: Type inference failed for: r0v662, types: [long] */
    /* JADX WARN: Type inference failed for: r2v59, types: [java.lang.Object] */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5251j(long r12) throws p193e.p1577m.p1578a.p1596c.C24560m0 {
        /*
            Method dump skipped, instructions count: 3375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.C24324d.m5251j(long):void");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    public void release() {
    }
}
