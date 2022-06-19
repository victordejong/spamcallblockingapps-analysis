package p193e.p1451f.p1452a.p1454l;

import android.graphics.Bitmap;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import p193e.p1451f.p1452a.p1454l.AbstractC22249a;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22301b;
import p193e.p1451f.p1452a.p1457n.p1466q.p1471h.C22537b;
/* renamed from: e.f.a.l.e */
/* loaded from: classes-dex2jar.jar:e/f/a/l/e.class */
public class C22254e implements AbstractC22249a {

    /* renamed from: u */
    public static final String f61852u = "e";

    /* renamed from: a */
    public int[] f61853a;

    /* renamed from: c */
    public final AbstractC22249a.AbstractC22250a f61855c;

    /* renamed from: d */
    public ByteBuffer f61856d;

    /* renamed from: e */
    public byte[] f61857e;

    /* renamed from: f */
    public short[] f61858f;

    /* renamed from: g */
    public byte[] f61859g;

    /* renamed from: h */
    public byte[] f61860h;

    /* renamed from: i */
    public byte[] f61861i;

    /* renamed from: j */
    public int[] f61862j;

    /* renamed from: k */
    public int f61863k;

    /* renamed from: l */
    public C22252c f61864l;

    /* renamed from: m */
    public Bitmap f61865m;

    /* renamed from: n */
    public boolean f61866n;

    /* renamed from: o */
    public int f61867o;

    /* renamed from: p */
    public int f61868p;

    /* renamed from: q */
    public int f61869q;

    /* renamed from: r */
    public int f61870r;

    /* renamed from: s */
    public Boolean f61871s;

    /* renamed from: b */
    public final int[] f61854b = new int[256];

    /* renamed from: t */
    public Bitmap.Config f61872t = Bitmap.Config.ARGB_8888;

    public C22254e(AbstractC22249a.AbstractC22250a abstractC22250a, C22252c c22252c, ByteBuffer byteBuffer, int i) {
        this.f61855c = abstractC22250a;
        this.f61864l = new C22252c();
        synchronized (this) {
            if (i <= 0) {
                throw new IllegalArgumentException("Sample size must be >=0, not: " + i);
            }
            int highestOneBit = Integer.highestOneBit(i);
            this.f61867o = 0;
            this.f61864l = c22252c;
            this.f61863k = -1;
            ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            this.f61856d = asReadOnlyBuffer;
            asReadOnlyBuffer.position(0);
            this.f61856d.order(ByteOrder.LITTLE_ENDIAN);
            this.f61866n = false;
            Iterator<C22251b> it = c22252c.f61841e.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().f61832g == 3) {
                        this.f61866n = true;
                        break;
                    }
                } else {
                    break;
                }
            }
            this.f61868p = highestOneBit;
            int i2 = c22252c.f61842f;
            this.f61870r = i2 / highestOneBit;
            int i3 = c22252c.f61843g;
            this.f61869q = i3 / highestOneBit;
            this.f61861i = ((C22537b) this.f61855c).m8156a(i2 * i3);
            AbstractC22249a.AbstractC22250a abstractC22250a2 = this.f61855c;
            int i4 = this.f61870r * this.f61869q;
            AbstractC22301b abstractC22301b = ((C22537b) abstractC22250a2).f62436b;
            this.f61862j = abstractC22301b == null ? new int[i4] : (int[]) abstractC22301b.mo8337c(i4, int[].class);
        }
    }

    @Override // p193e.p1451f.p1452a.p1454l.AbstractC22249a
    /* renamed from: a */
    public int mo8372a() {
        return this.f61863k;
    }

    @Override // p193e.p1451f.p1452a.p1454l.AbstractC22249a
    /* renamed from: b */
    public int mo8371b() {
        return (this.f61862j.length * 4) + this.f61856d.limit() + this.f61861i.length;
    }

    @Override // p193e.p1451f.p1452a.p1454l.AbstractC22249a
    /* renamed from: c */
    public Bitmap mo8370c() {
        synchronized (this) {
            if (this.f61864l.f61839c <= 0 || this.f61863k < 0) {
                if (Log.isLoggable(f61852u, 3)) {
                    int i = this.f61864l.f61839c;
                }
                this.f61867o = 1;
            }
            int i2 = this.f61867o;
            if (i2 == 1 || i2 == 2) {
                Log.isLoggable(f61852u, 3);
                return null;
            }
            this.f61867o = 0;
            if (this.f61857e == null) {
                this.f61857e = ((C22537b) this.f61855c).m8156a(255);
            }
            C22251b c22251b = this.f61864l.f61841e.get(this.f61863k);
            int i3 = this.f61863k - 1;
            C22251b c22251b2 = i3 >= 0 ? this.f61864l.f61841e.get(i3) : null;
            int[] iArr = c22251b.f61836k;
            if (iArr == null) {
                iArr = this.f61864l.f61837a;
            }
            this.f61853a = iArr;
            if (iArr == null) {
                Log.isLoggable(f61852u, 3);
                this.f61867o = 1;
                return null;
            }
            if (c22251b.f61831f) {
                System.arraycopy(iArr, 0, this.f61854b, 0, iArr.length);
                int[] iArr2 = this.f61854b;
                this.f61853a = iArr2;
                iArr2[c22251b.f61833h] = 0;
                if (c22251b.f61832g == 2 && this.f61863k == 0) {
                    this.f61871s = Boolean.TRUE;
                }
            }
            return m8363j(c22251b, c22251b2);
        }
    }

    @Override // p193e.p1451f.p1452a.p1454l.AbstractC22249a
    public void clear() {
        AbstractC22301b abstractC22301b;
        AbstractC22301b abstractC22301b2;
        AbstractC22301b abstractC22301b3;
        this.f61864l = null;
        byte[] bArr = this.f61861i;
        if (bArr != null && (abstractC22301b3 = ((C22537b) this.f61855c).f62436b) != null) {
            abstractC22301b3.put(bArr);
        }
        int[] iArr = this.f61862j;
        if (iArr != null && (abstractC22301b2 = ((C22537b) this.f61855c).f62436b) != null) {
            abstractC22301b2.put(iArr);
        }
        Bitmap bitmap = this.f61865m;
        if (bitmap != null) {
            ((C22537b) this.f61855c).f62435a.mo8327c(bitmap);
        }
        this.f61865m = null;
        this.f61856d = null;
        this.f61871s = null;
        byte[] bArr2 = this.f61857e;
        if (bArr2 == null || (abstractC22301b = ((C22537b) this.f61855c).f62436b) == null) {
            return;
        }
        abstractC22301b.put(bArr2);
    }

    @Override // p193e.p1451f.p1452a.p1454l.AbstractC22249a
    /* renamed from: d */
    public void mo8369d() {
        this.f61863k = (this.f61863k + 1) % this.f61864l.f61839c;
    }

    @Override // p193e.p1451f.p1452a.p1454l.AbstractC22249a
    /* renamed from: e */
    public int mo8368e() {
        return this.f61864l.f61839c;
    }

    @Override // p193e.p1451f.p1452a.p1454l.AbstractC22249a
    /* renamed from: f */
    public ByteBuffer mo8367f() {
        return this.f61856d;
    }

    @Override // p193e.p1451f.p1452a.p1454l.AbstractC22249a
    /* renamed from: g */
    public int mo8366g() {
        int i;
        C22252c c22252c = this.f61864l;
        int i2 = c22252c.f61839c;
        if (i2 <= 0 || (i = this.f61863k) < 0) {
            return 0;
        }
        return (i < 0 || i >= i2) ? -1 : c22252c.f61841e.get(i).f61834i;
    }

    /* renamed from: h */
    public final Bitmap m8365h() {
        Boolean bool = this.f61871s;
        Bitmap.Config config = (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.f61872t;
        Bitmap mo8326d = ((C22537b) this.f61855c).f62435a.mo8326d(this.f61870r, this.f61869q, config);
        mo8326d.setHasAlpha(true);
        return mo8326d;
    }

    /* renamed from: i */
    public void m8364i(Bitmap.Config config) {
        if (config == Bitmap.Config.ARGB_8888 || config == Bitmap.Config.RGB_565) {
            this.f61872t = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x008b, code lost:
        if (r0.f61846j == r10.f61833h) goto L27;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:249:0x012b A[EDGE_INSN: B:249:0x012b->B:41:0x012b ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e0  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap m8363j(p193e.p1451f.p1452a.p1454l.C22251b r10, p193e.p1451f.p1452a.p1454l.C22251b r11) {
        /*
            Method dump skipped, instructions count: 2636
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1451f.p1452a.p1454l.C22254e.m8363j(e.f.a.l.b, e.f.a.l.b):android.graphics.Bitmap");
    }
}
