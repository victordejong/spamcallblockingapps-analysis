package p193e.p1577m.p1578a.p1596c.p1637r1.p1638t;

import com.google.android.exoplayer2.Format;
import java.nio.ByteBuffer;
import p193e.p1577m.p1578a.p1596c.AbstractC24852u;
import p193e.p1577m.p1578a.p1596c.C24189b0;
import p193e.p1577m.p1578a.p1596c.p1600e1.C24265e;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.r1.t.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/r1/t/b.class */
public class C24837b extends AbstractC24852u {

    /* renamed from: l */
    public final C24265e f69650l = new C24265e(1);

    /* renamed from: m */
    public final C24798t f69651m = new C24798t();

    /* renamed from: n */
    public long f69652n;

    /* renamed from: o */
    public AbstractC24836a f69653o;

    /* renamed from: p */
    public long f69654p;

    public C24837b() {
        super(5);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: D */
    public void mo4412D(Format[] formatArr, long j) throws C24189b0 {
        this.f69652n = j;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: F */
    public int mo4410F(Format format) {
        return "application/x-camera-motion".equals(format.f4847i) ? 4 : 0;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: b */
    public boolean mo4400b() {
        return true;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: c */
    public boolean mo4399c() {
        return mo4397e();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u, p193e.p1577m.p1578a.p1596c.C24845s0.AbstractC24847b
    /* renamed from: f */
    public void mo4407f(int i, Object obj) throws C24189b0 {
        if (i == 7) {
            this.f69653o = (AbstractC24836a) obj;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: i */
    public void mo4394i(long j, long j2) throws C24189b0 {
        float[] fArr;
        while (!mo4397e() && this.f69654p < 100000 + j) {
            this.f69650l.clear();
            if (m4411E(m4405w(), this.f69650l, false) != -4 || this.f69650l.isEndOfStream()) {
                return;
            }
            this.f69650l.m5328h();
            C24265e c24265e = this.f69650l;
            this.f69654p = c24265e.f67303d;
            if (this.f69653o != null) {
                ByteBuffer byteBuffer = c24265e.f67301b;
                int i = C24773d0.f69427a;
                if (byteBuffer.remaining() != 16) {
                    fArr = null;
                } else {
                    this.f69651m.m4549A(byteBuffer.array(), byteBuffer.limit());
                    this.f69651m.m4547C(byteBuffer.arrayOffset() + 4);
                    fArr = new float[3];
                    for (int i2 = 0; i2 < 3; i2++) {
                        fArr[i2] = Float.intBitsToFloat(this.f69651m.m4539g());
                    }
                }
                if (fArr != null) {
                    this.f69653o.mo4429b(this.f69654p - this.f69652n, fArr);
                }
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: x */
    public void mo4404x() {
        this.f69654p = 0L;
        AbstractC24836a abstractC24836a = this.f69653o;
        if (abstractC24836a != null) {
            abstractC24836a.mo4428c();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: z */
    public void mo4402z(long j, boolean z) throws C24189b0 {
        this.f69654p = 0L;
        AbstractC24836a abstractC24836a = this.f69653o;
        if (abstractC24836a != null) {
            abstractC24836a.mo4428c();
        }
    }
}
