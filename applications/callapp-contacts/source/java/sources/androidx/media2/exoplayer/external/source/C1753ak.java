package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.source.C1751aj;
import androidx.media2.exoplayer.external.upstream.AbstractC1963b;
import androidx.media2.exoplayer.external.upstream.C1962a;
import androidx.media2.exoplayer.external.util.C2018p;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
/* renamed from: androidx.media2.exoplayer.external.source.ak */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ak.class */
public class C1753ak implements AbstractC1641q {

    /* renamed from: a */
    public final C1751aj f6931a = new C1751aj();

    /* renamed from: b */
    final C1751aj.C1752a f6932b = new C1751aj.C1752a();

    /* renamed from: c */
    final C2018p f6933c = new C2018p(32);

    /* renamed from: d */
    Format f6934d;

    /* renamed from: e */
    public boolean f6935e;

    /* renamed from: f */
    public AbstractC1755b f6936f;

    /* renamed from: g */
    private final AbstractC1963b f6937g;

    /* renamed from: h */
    private final int f6938h;

    /* renamed from: i */
    private C1754a f6939i;

    /* renamed from: j */
    private C1754a f6940j;

    /* renamed from: k */
    private C1754a f6941k;

    /* renamed from: l */
    private boolean f6942l;

    /* renamed from: m */
    private Format f6943m;

    /* renamed from: n */
    private long f6944n;

    /* renamed from: o */
    private long f6945o;

    /* renamed from: androidx.media2.exoplayer.external.source.ak$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ak$a.class */
    public static final class C1754a {

        /* renamed from: a */
        public final long f6946a;

        /* renamed from: b */
        public final long f6947b;

        /* renamed from: c */
        public boolean f6948c;

        /* renamed from: d */
        public C1962a f6949d;

        /* renamed from: e */
        public C1754a f6950e;

        public C1754a(long j, int i) {
            this.f6946a = j;
            this.f6947b = j + i;
        }

        /* renamed from: a */
        public final int m42297a(long j) {
            return ((int) (j - this.f6946a)) + this.f6949d.f7937b;
        }

        /* renamed from: a */
        public final C1754a m42298a() {
            this.f6949d = null;
            C1754a c1754a = this.f6950e;
            this.f6950e = null;
            return c1754a;
        }

        /* renamed from: a */
        public final void m42296a(C1962a c1962a, C1754a c1754a) {
            this.f6949d = c1962a;
            this.f6950e = c1754a;
            this.f6948c = true;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.ak$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ak$b.class */
    public interface AbstractC1755b {
        /* renamed from: i */
        void mo42197i();
    }

    public C1753ak(AbstractC1963b abstractC1963b) {
        this.f6937g = abstractC1963b;
        int mo41729c = abstractC1963b.mo41729c();
        this.f6938h = mo41729c;
        C1754a c1754a = new C1754a(0L, mo41729c);
        this.f6939i = c1754a;
        this.f6940j = c1754a;
        this.f6941k = c1754a;
    }

    /* renamed from: a */
    private void m42307a(C1754a c1754a) {
        if (!c1754a.f6948c) {
            return;
        }
        int i = (this.f6941k.f6948c ? 1 : 0) + (((int) (this.f6941k.f6946a - c1754a.f6946a)) / this.f6938h);
        C1962a[] c1962aArr = new C1962a[i];
        for (int i2 = 0; i2 < i; i2++) {
            c1962aArr[i2] = c1754a.f6949d;
            c1754a = c1754a.m42298a();
        }
        this.f6937g.mo41731a(c1962aArr);
    }

    /* renamed from: b */
    private int m42303b(int i) {
        if (!this.f6941k.f6948c) {
            this.f6941k.m42296a(this.f6937g.mo41734a(), new C1754a(this.f6941k.f6947b, this.f6938h));
        }
        return Math.min(i, (int) (this.f6941k.f6947b - this.f6945o));
    }

    /* renamed from: b */
    private void m42302b(long j) {
        while (j >= this.f6940j.f6947b) {
            this.f6940j = this.f6940j.f6950e;
        }
    }

    /* renamed from: c */
    private void m42300c(int i) {
        long j = this.f6945o + i;
        this.f6945o = j;
        if (j == this.f6941k.f6947b) {
            this.f6941k = this.f6941k.f6950e;
        }
    }

    /* renamed from: c */
    private void m42299c(long j) {
        if (j == -1) {
            return;
        }
        while (j >= this.f6939i.f6947b) {
            this.f6937g.mo41732a(this.f6939i.f6949d);
            this.f6939i = this.f6939i.m42298a();
        }
        if (this.f6940j.f6946a >= this.f6939i.f6946a) {
            return;
        }
        this.f6940j = this.f6939i;
    }

    /* renamed from: a */
    public final int m42316a() {
        C1751aj c1751aj = this.f6931a;
        return c1751aj.m42324c() ? c1751aj.f6908a[c1751aj.m42336a(c1751aj.f6909b)] : c1751aj.f6910c;
    }

    /* renamed from: a */
    public final int m42311a(long j, boolean z) {
        return this.f6931a.m42332a(j, true, z);
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1641q
    /* renamed from: a */
    public final int mo42308a(AbstractC1600h abstractC1600h, int i, boolean z) throws IOException, InterruptedException {
        int mo42609a = abstractC1600h.mo42609a(this.f6941k.f6949d.f7936a, this.f6941k.m42297a(this.f6945o), m42303b(i));
        if (mo42609a != -1) {
            m42300c(mo42609a);
            return mo42609a;
        } else if (!z) {
            throw new EOFException();
        } else {
            return -1;
        }
    }

    /* renamed from: a */
    public final void m42315a(int i) {
        this.f6931a.f6910c = i;
    }

    /* renamed from: a */
    public final void m42314a(long j) {
        if (this.f6944n != j) {
            this.f6944n = j;
            this.f6942l = true;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1641q
    /* renamed from: a */
    public final void mo42313a(long j, int i, int i2, int i3, AbstractC1641q.C1642a c1642a) {
        if (this.f6942l) {
            mo42192a(this.f6943m);
        }
        long j2 = j + this.f6944n;
        if (this.f6935e) {
            if ((i & 1) == 0 || !this.f6931a.m42334a(j2)) {
                return;
            }
            this.f6935e = false;
        }
        this.f6931a.m42333a(j2, i, (this.f6945o - i2) - i3, i2, c1642a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.media2.exoplayer.external.source.ak$a] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* renamed from: a */
    public final void m42312a(long j, ByteBuffer byteBuffer, int i) {
        m42302b((long) j);
        while (i > 0) {
            int min = Math.min(i, (int) (this.f6940j.f6947b - j));
            byteBuffer.put(this.f6940j.f6949d.f7936a, this.f6940j.m42297a(j), min);
            int i2 = i - min;
            ?? r0 = j + min;
            j = r0;
            i = i2;
            if (r0 == this.f6940j.f6947b) {
                this.f6940j = this.f6940j.f6950e;
                j = r0;
                i = i2;
            }
        }
    }

    /* renamed from: a */
    public final void m42310a(long j, boolean z, boolean z2) {
        m42299c(this.f6931a.m42326b(j, z, z2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r1v7, types: [androidx.media2.exoplayer.external.source.ak$a] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* renamed from: a */
    public final void m42309a(long j, byte[] bArr, int i) {
        m42302b((long) j);
        int i2 = i;
        while (i2 > 0) {
            int min = Math.min(i2, (int) (this.f6940j.f6947b - j));
            System.arraycopy(this.f6940j.f6949d.f7936a, this.f6940j.m42297a(j), bArr, i - i2, min);
            int i3 = i2 - min;
            ?? r0 = j + min;
            i2 = i3;
            j = r0;
            if (r0 == this.f6940j.f6947b) {
                this.f6940j = this.f6940j.f6950e;
                i2 = i3;
                j = r0;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1641q
    /* renamed from: a */
    public void mo42192a(Format format) {
        long j = this.f6944n;
        boolean m42325b = this.f6931a.m42325b(format == null ? null : (j == 0 || format.subsampleOffsetUs == Long.MAX_VALUE) ? format : format.copyWithSubsampleOffsetUs(format.subsampleOffsetUs + j));
        this.f6943m = format;
        this.f6942l = false;
        AbstractC1755b abstractC1755b = this.f6936f;
        if (abstractC1755b == null || !m42325b) {
            return;
        }
        abstractC1755b.mo42197i();
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1641q
    /* renamed from: a */
    public final void mo42306a(C2018p c2018p, int i) {
        while (i > 0) {
            int m42303b = m42303b(i);
            c2018p.m41537a(this.f6941k.f6949d.f7936a, this.f6941k.m42297a(this.f6945o), m42303b);
            i -= m42303b;
            m42300c(m42303b);
        }
    }

    /* renamed from: a */
    public final void m42305a(boolean z) {
        this.f6931a.m42329a(z);
        m42307a(this.f6939i);
        C1754a c1754a = new C1754a(0L, this.f6938h);
        this.f6939i = c1754a;
        this.f6940j = c1754a;
        this.f6941k = c1754a;
        this.f6945o = 0L;
        this.f6937g.mo41730b();
    }

    /* renamed from: b */
    public final void m42304b() {
        this.f6931a.m42319g();
        this.f6940j = this.f6939i;
    }

    /* renamed from: c */
    public final void m42301c() {
        m42299c(this.f6931a.m42317i());
    }
}
