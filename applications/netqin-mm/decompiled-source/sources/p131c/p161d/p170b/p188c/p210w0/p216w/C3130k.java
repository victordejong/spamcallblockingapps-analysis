package p131c.p161d.p170b.p188c.p210w0.p216w;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import java.io.IOException;
import java.util.ArrayList;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3125i;
import p131c.p161d.p170b.p188c.p210w0.p216w.C3132l;
/* renamed from: c.d.b.c.w0.w.k */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/w/k.class */
public final class C3130k extends AbstractC3125i {

    /* renamed from: n */
    public C3131a f11432n;

    /* renamed from: o */
    public int f11433o;

    /* renamed from: p */
    public boolean f11434p;

    /* renamed from: q */
    public C3132l.C3136d f11435q;

    /* renamed from: r */
    public C3132l.C3134b f11436r;

    /* renamed from: c.d.b.c.w0.w.k$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/w/k$a.class */
    public static final class C3131a {

        /* renamed from: a */
        public final C3132l.C3136d f11437a;

        /* renamed from: b */
        public final byte[] f11438b;

        /* renamed from: c */
        public final C3132l.C3135c[] f11439c;

        /* renamed from: d */
        public final int f11440d;

        public C3131a(C3132l.C3136d dVar, C3132l.C3134b bVar, byte[] bArr, C3132l.C3135c[] cVarArr, int i) {
            this.f11437a = dVar;
            this.f11438b = bArr;
            this.f11439c = cVarArr;
            this.f11440d = i;
        }
    }

    /* renamed from: a */
    public static int m27745a(byte b, int i, int i2) {
        return (b >> i2) & (255 >>> (8 - i));
    }

    /* renamed from: a */
    public static int m27744a(byte b, C3131a aVar) {
        return !aVar.f11439c[m27745a(b, aVar.f11440d, 1)].f11441a ? aVar.f11437a.f11445d : aVar.f11437a.f11446e;
    }

    /* renamed from: a */
    public static void m27742a(C2904v vVar, long j) {
        vVar.m28540d(vVar.m28541d() + 4);
        vVar.f10530a[vVar.m28541d() - 4] = (byte) (j & 255);
        vVar.f10530a[vVar.m28541d() - 3] = (byte) ((j >>> 8) & 255);
        vVar.f10530a[vVar.m28541d() - 2] = (byte) ((j >>> 16) & 255);
        vVar.f10530a[vVar.m28541d() - 1] = (byte) ((j >>> 24) & 255);
    }

    /* renamed from: c */
    public static boolean m27737c(C2904v vVar) {
        try {
            return C3132l.m27735a(1, vVar, true);
        } catch (ParserException e) {
            return false;
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3125i
    /* renamed from: a */
    public long mo27743a(C2904v vVar) {
        byte[] bArr = vVar.f10530a;
        int i = 0;
        if ((bArr[0] & 1) == 1) {
            return -1L;
        }
        int a = m27744a(bArr[0], this.f11432n);
        if (this.f11434p) {
            i = (this.f11433o + a) / 4;
        }
        long j = i;
        m27742a(vVar, j);
        this.f11434p = true;
        this.f11433o = a;
        return j;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3125i
    /* renamed from: a */
    public void mo27740a(boolean z) {
        super.mo27740a(z);
        if (z) {
            this.f11432n = null;
            this.f11435q = null;
            this.f11436r = null;
        }
        this.f11433o = 0;
        this.f11434p = false;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3125i
    /* renamed from: a */
    public boolean mo27741a(C2904v vVar, long j, AbstractC3125i.C3127b bVar) throws IOException, InterruptedException {
        if (this.f11432n != null) {
            return false;
        }
        C3131a b = m27739b(vVar);
        this.f11432n = b;
        if (b == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f11432n.f11437a.f11447f);
        arrayList.add(this.f11432n.f11438b);
        C3132l.C3136d dVar = this.f11432n.f11437a;
        bVar.f11426a = Format.m18698a(null, "audio/vorbis", null, dVar.f11444c, -1, dVar.f11442a, (int) dVar.f11443b, arrayList, null, 0, null);
        return true;
    }

    /* renamed from: b */
    public C3131a m27739b(C2904v vVar) throws IOException {
        if (this.f11435q == null) {
            this.f11435q = C3132l.m27729b(vVar);
            return null;
        } else if (this.f11436r == null) {
            this.f11436r = C3132l.m27732a(vVar);
            return null;
        } else {
            byte[] bArr = new byte[vVar.m28541d()];
            System.arraycopy(vVar.f10530a, 0, bArr, 0, vVar.m28541d());
            C3132l.C3135c[] a = C3132l.m27731a(vVar, this.f11435q.f11442a);
            return new C3131a(this.f11435q, this.f11436r, bArr, a, C3132l.m27736a(a.length - 1));
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3125i
    /* renamed from: c */
    public void mo27738c(long j) {
        super.mo27738c(j);
        int i = 0;
        this.f11434p = j != 0;
        C3132l.C3136d dVar = this.f11435q;
        if (dVar != null) {
            i = dVar.f11445d;
        }
        this.f11433o = i;
    }
}
