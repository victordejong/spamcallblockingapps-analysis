package p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.Format;
import java.util.Arrays;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24794r;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.e0.k */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/k.class */
public final class C24374k implements AbstractC24373j {

    /* renamed from: q */
    public static final double[] f67858q = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: a */
    public String f67859a;

    /* renamed from: b */
    public AbstractC24422s f67860b;

    /* renamed from: c */
    public boolean f67861c;

    /* renamed from: d */
    public long f67862d;

    /* renamed from: e */
    public final C24367d0 f67863e;

    /* renamed from: f */
    public final C24798t f67864f;

    /* renamed from: g */
    public final boolean[] f67865g = new boolean[4];

    /* renamed from: h */
    public final C24375a f67866h = new C24375a(128);

    /* renamed from: i */
    public final C24385q f67867i;

    /* renamed from: j */
    public long f67868j;

    /* renamed from: k */
    public boolean f67869k;

    /* renamed from: l */
    public long f67870l;

    /* renamed from: m */
    public long f67871m;

    /* renamed from: n */
    public long f67872n;

    /* renamed from: o */
    public boolean f67873o;

    /* renamed from: p */
    public boolean f67874p;

    /* renamed from: e.m.a.c.g1.e0.k$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/k$a.class */
    public static final class C24375a {

        /* renamed from: e */
        public static final byte[] f67875e = {0, 0, 1};

        /* renamed from: a */
        public boolean f67876a;

        /* renamed from: b */
        public int f67877b;

        /* renamed from: c */
        public int f67878c;

        /* renamed from: d */
        public byte[] f67879d;

        public C24375a(int i) {
            this.f67879d = new byte[i];
        }

        /* renamed from: a */
        public void m5190a(byte[] bArr, int i, int i2) {
            if (!this.f67876a) {
                return;
            }
            int i3 = i2 - i;
            byte[] bArr2 = this.f67879d;
            int length = bArr2.length;
            int i4 = this.f67877b;
            if (length < i4 + i3) {
                this.f67879d = Arrays.copyOf(bArr2, (i4 + i3) * 2);
            }
            System.arraycopy(bArr, i, this.f67879d, this.f67877b, i3);
            this.f67877b += i3;
        }
    }

    public C24374k(C24367d0 c24367d0) {
        this.f67863e = c24367d0;
        if (c24367d0 != null) {
            this.f67867i = new C24385q(178, 128);
            this.f67864f = new C24798t();
            return;
        }
        this.f67867i = null;
        this.f67864f = null;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: a */
    public void mo5184a() {
        C24794r.m4566a(this.f67865g);
        C24375a c24375a = this.f67866h;
        c24375a.f67876a = false;
        c24375a.f67877b = 0;
        c24375a.f67878c = 0;
        if (this.f67863e != null) {
            this.f67867i.m5177c();
        }
        this.f67868j = 0L;
        this.f67869k = false;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: b */
    public void mo5183b() {
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: c */
    public void mo5182c(long j, int i) {
        this.f67870l = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01f0  */
    /* JADX WARN: Type inference failed for: r0v170, types: [double] */
    /* JADX WARN: Type inference failed for: r0v185, types: [long] */
    /* JADX WARN: Type inference failed for: r0v187, types: [double] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo5181d(p193e.p1577m.p1578a.p1596c.p1636q1.C24798t r14) {
        /*
            Method dump skipped, instructions count: 1065
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.C24374k.mo5181d(e.m.a.c.q1.t):void");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: e */
    public void mo5180e(AbstractC24409i abstractC24409i, AbstractC24361c0.C24365d c24365d) {
        c24365d.m5203a();
        this.f67859a = c24365d.m5202b();
        this.f67860b = abstractC24409i.mo4960i(c24365d.m5201c(), 2);
        C24367d0 c24367d0 = this.f67863e;
        if (c24367d0 != null) {
            for (int i = 0; i < c24367d0.f67806b.length; i++) {
                c24365d.m5203a();
                AbstractC24422s mo4960i = abstractC24409i.mo4960i(c24365d.m5201c(), 3);
                Format format = c24367d0.f67805a.get(i);
                String str = format.f4847i;
                C26232y.m2306s("application/cea-608".equals(str) || "application/cea-708".equals(str), "Invalid closed caption mime type provided: " + str);
                mo4960i.mo4928b(Format.m39248m(c24365d.m5202b(), str, null, -1, format.f4841c, format.f4835A, format.f4836B, null, RecyclerView.FOREVER_NS, format.f4849k));
                c24367d0.f67806b[i] = mo4960i;
            }
        }
    }
}
