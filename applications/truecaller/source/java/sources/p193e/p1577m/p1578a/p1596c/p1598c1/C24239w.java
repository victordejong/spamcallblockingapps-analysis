package p193e.p1577m.p1578a.p1596c.p1598c1;

import android.content.Context;
import android.media.AudioTrack;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import com.google.android.exoplayer2.Format;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.regex.Pattern;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.AbstractC24852u;
import p193e.p1577m.p1578a.p1596c.C24189b0;
import p193e.p1577m.p1578a.p1596c.C24286g0;
import p193e.p1577m.p1578a.p1596c.C24652o0;
import p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24216m;
import p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24218n;
import p193e.p1577m.p1578a.p1596c.p1598c1.C24230t;
import p193e.p1577m.p1578a.p1596c.p1600e1.C24264d;
import p193e.p1577m.p1578a.p1596c.p1600e1.C24265e;
import p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24279e;
import p193e.p1577m.p1578a.p1596c.p1601f1.C24283h;
import p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f;
import p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24449g;
import p193e.p1577m.p1578a.p1596c.p1612h1.C24444c;
import p193e.p1577m.p1578a.p1596c.p1612h1.C24446e;
import p193e.p1577m.p1578a.p1596c.p1612h1.C24451h;
import p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24791p;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24792q;
/* renamed from: e.m.a.c.c1.w */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/w.class */
public class C24239w extends AbstractC24447f implements AbstractC24791p {

    /* renamed from: E0 */
    public final Context f67142E0;

    /* renamed from: F0 */
    public final AbstractC24216m.C24217a f67143F0;

    /* renamed from: G0 */
    public final AbstractC24218n f67144G0;

    /* renamed from: I0 */
    public int f67146I0;

    /* renamed from: J0 */
    public boolean f67147J0;

    /* renamed from: K0 */
    public boolean f67148K0;

    /* renamed from: L0 */
    public boolean f67149L0;

    /* renamed from: M0 */
    public MediaFormat f67150M0;

    /* renamed from: N0 */
    public Format f67151N0;

    /* renamed from: O0 */
    public long f67152O0;

    /* renamed from: P0 */
    public boolean f67153P0;

    /* renamed from: Q0 */
    public boolean f67154Q0;

    /* renamed from: S0 */
    public int f67156S0;

    /* renamed from: R0 */
    public long f67155R0 = -9223372036854775807L;

    /* renamed from: H0 */
    public final long[] f67145H0 = new long[10];

    /* renamed from: e.m.a.c.c1.w$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/w$b.class */
    public final class C24241b implements AbstractC24218n.AbstractC24221c {
        public C24241b(C24240a c24240a) {
            C24239w.this = r4;
        }
    }

    @Deprecated
    public C24239w(Context context, AbstractC24449g abstractC24449g, AbstractC24279e<C24283h> abstractC24279e, boolean z, boolean z2, Handler handler, AbstractC24216m abstractC24216m, AbstractC24218n abstractC24218n) {
        super(1, abstractC24449g, abstractC24279e, z, z2, 44100.0f);
        this.f67142E0 = context.getApplicationContext();
        this.f67144G0 = abstractC24218n;
        this.f67143F0 = new AbstractC24216m.C24217a(handler, abstractC24216m);
        ((C24230t) abstractC24218n).f67101j = new C24241b(null);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f, p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: A */
    public void mo4415A() {
        try {
            super.mo4415A();
        } finally {
            ((C24230t) this.f67144G0).m5418n();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: B */
    public void mo4414B() {
        ((C24230t) this.f67144G0).m5421k();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: C */
    public void mo4413C() {
        m5403s0();
        C24230t c24230t = (C24230t) this.f67144G0;
        boolean z = false;
        c24230t.f67087L = false;
        if (c24230t.m5422j()) {
            C24225p c24225p = c24230t.f67099h;
            c24225p.f67049j = 0L;
            c24225p.f67060u = 0;
            c24225p.f67059t = 0;
            c24225p.f67050k = 0L;
            if (c24225p.f67061v == -9223372036854775807L) {
                C24223o c24223o = c24225p.f67045f;
                Objects.requireNonNull(c24223o);
                c24223o.m5441a();
                z = true;
            }
            if (!z) {
                return;
            }
            c24230t.f67104m.pause();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: D */
    public void mo4412D(Format[] formatArr, long j) throws C24189b0 {
        long j2 = this.f67155R0;
        if (j2 != -9223372036854775807L) {
            int i = this.f67156S0;
            long[] jArr = this.f67145H0;
            if (i == jArr.length) {
                long j3 = jArr[i - 1];
            } else {
                this.f67156S0 = i + 1;
            }
            jArr[this.f67156S0 - 1] = j2;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: I */
    public int mo4474I(MediaCodec mediaCodec, C24446e c24446e, Format format, Format format2) {
        if (m5405q0(c24446e, format2) <= this.f67146I0 && format.f4863y == 0 && format.f4864z == 0 && format2.f4863y == 0 && format2.f4864z == 0) {
            if (c24446e.m5114f(format, format2, true)) {
                return 3;
            }
            return C24773d0.m4623a(format.f4847i, format2.f4847i) && format.f4860v == format2.f4860v && format.f4861w == format2.f4861w && format.f4862x == format2.f4862x && format.m39244r(format2) && !"audio/opus".equals(format.f4847i) ? 1 : 0;
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0221  */
    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: J */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo4472J(p193e.p1577m.p1578a.p1596c.p1612h1.C24446e r7, android.media.MediaCodec r8, com.google.android.exoplayer2.Format r9, android.media.MediaCrypto r10, float r11) {
        /*
            Method dump skipped, instructions count: 551
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1598c1.C24239w.mo4472J(e.m.a.c.h1.e, android.media.MediaCodec, com.google.android.exoplayer2.Format, android.media.MediaCrypto, float):void");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: S */
    public float mo4468S(float f, Format format, Format[] formatArr) {
        int i;
        int length = formatArr.length;
        int i2 = 0;
        int i3 = -1;
        while (true) {
            i = i3;
            if (i2 >= length) {
                break;
            }
            int i4 = formatArr[i2].f4861w;
            int i5 = i;
            if (i4 != -1) {
                i5 = Math.max(i, i4);
            }
            i2++;
            i3 = i5;
        }
        return i == -1 ? -1.0f : f * i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: T */
    public List<C24446e> mo4467T(AbstractC24449g abstractC24449g, Format format, boolean z) throws C24451h.C24454c {
        C24446e mo5093a;
        String str = format.f4847i;
        if (str == null) {
            return Collections.emptyList();
        }
        if ((m5404r0(format.f4860v, str) != 0) && (mo5093a = abstractC24449g.mo5093a()) != null) {
            return Collections.singletonList(mo5093a);
        }
        List<C24446e> mo5092b = abstractC24449g.mo5092b(str, z, false);
        Pattern pattern = C24451h.f68283a;
        ArrayList arrayList = new ArrayList(mo5092b);
        C24451h.m5082j(arrayList, new C24444c(format));
        ArrayList arrayList2 = arrayList;
        if ("audio/eac3-joc".equals(str)) {
            arrayList2 = new ArrayList(arrayList);
            arrayList2.addAll(abstractC24449g.mo5092b("audio/eac3", z, false));
        }
        return Collections.unmodifiableList(arrayList2);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: Y */
    public void mo4465Y(final String str, final long j, final long j2) {
        final AbstractC24216m.C24217a c24217a = this.f67143F0;
        Handler handler = c24217a.f67027a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: e.m.a.c.c1.d
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC24216m.C24217a c24217a2 = AbstractC24216m.C24217a.this;
                    String str2 = str;
                    long j3 = j;
                    long j4 = j2;
                    AbstractC24216m abstractC24216m = c24217a2.f67028b;
                    int i = C24773d0.f69427a;
                    abstractC24216m.mo5447d(str2, j3, j4);
                }
            });
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: Z */
    public void mo4464Z(C24286g0 c24286g0) throws C24189b0 {
        super.mo4464Z(c24286g0);
        final Format format = c24286g0.f67334c;
        this.f67151N0 = format;
        final AbstractC24216m.C24217a c24217a = this.f67143F0;
        Handler handler = c24217a.f67027a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: e.m.a.c.c1.a
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC24216m.C24217a c24217a2 = AbstractC24216m.C24217a.this;
                    Format format2 = format;
                    AbstractC24216m abstractC24216m = c24217a2.f67028b;
                    int i = C24773d0.f69427a;
                    abstractC24216m.mo5443r(format2);
                }
            });
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: a0 */
    public void mo4463a0(MediaCodec mediaCodec, MediaFormat mediaFormat) throws C24189b0 {
        int i;
        int[] iArr;
        int i2;
        MediaFormat mediaFormat2 = this.f67150M0;
        if (mediaFormat2 != null) {
            i = m5404r0(mediaFormat2.getInteger("channel-count"), mediaFormat2.getString("mime"));
            mediaFormat = mediaFormat2;
        } else if (mediaFormat.containsKey("v-bits-per-sample")) {
            i = C24773d0.m4612l(mediaFormat.getInteger("v-bits-per-sample"));
        } else {
            Format format = this.f67151N0;
            i = "audio/raw".equals(format.f4847i) ? format.f4862x : 2;
        }
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        if (!this.f67148K0 || integer != 6 || (i2 = this.f67151N0.f4860v) >= 6) {
            iArr = null;
        } else {
            int[] iArr2 = new int[i2];
            int i3 = 0;
            while (true) {
                iArr = iArr2;
                if (i3 < this.f67151N0.f4860v) {
                    iArr2[i3] = i3;
                    i3++;
                }
            }
        }
        try {
            AbstractC24218n abstractC24218n = this.f67144G0;
            Format format2 = this.f67151N0;
            ((C24230t) abstractC24218n).m5430b(i, integer, integer2, 0, iArr, format2.f4863y, format2.f4864z);
        } catch (AbstractC24218n.C24219a e) {
            throw m4406v(e, this.f67151N0);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f, p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: b */
    public boolean mo4400b() {
        return ((C24230t) this.f67144G0).m5423i() || super.mo4400b();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: b0 */
    public void mo4462b0(long j) {
        while (true) {
            int i = this.f67156S0;
            if (i != 0) {
                long[] jArr = this.f67145H0;
                if (j < jArr[0]) {
                    return;
                }
                C24230t c24230t = (C24230t) this.f67144G0;
                if (c24230t.f67117z == 1) {
                    c24230t.f67117z = 2;
                }
                int i2 = i - 1;
                this.f67156S0 = i2;
                System.arraycopy(jArr, 1, jArr, 0, i2);
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
        if ((!r0.m5422j() || (r0.f67085J && !r0.m5423i())) != false) goto L15;
     */
    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f, p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo4399c() {
        /*
            r2 = this;
            r0 = r2
            boolean r0 = r0.f68273x0
            r3 = r0
            r0 = 1
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L3c
            r0 = r2
            e.m.a.c.c1.n r0 = r0.f67144G0
            e.m.a.c.c1.t r0 = (p193e.p1577m.p1578a.p1596c.p1598c1.C24230t) r0
            r5 = r0
            r0 = r5
            boolean r0 = r0.m5422j()
            if (r0 == 0) goto L31
            r0 = r5
            boolean r0 = r0.f67085J
            if (r0 == 0) goto L2b
            r0 = r5
            boolean r0 = r0.m5423i()
            if (r0 != 0) goto L2b
            goto L31
        L2b:
            r0 = 0
            r6 = r0
            goto L34
        L31:
            r0 = 1
            r6 = r0
        L34:
            r0 = r6
            if (r0 == 0) goto L3c
            goto L3e
        L3c:
            r0 = 0
            r4 = r0
        L3e:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1598c1.C24239w.mo4399c():boolean");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: c0 */
    public void mo4461c0(C24265e c24265e) {
        if (this.f67153P0 && !c24265e.isDecodeOnly()) {
            if (Math.abs(c24265e.f67303d - this.f67152O0) > 500000) {
                this.f67152O0 = c24265e.f67303d;
            }
            this.f67153P0 = false;
        }
        this.f67155R0 = Math.max(c24265e.f67303d, this.f67155R0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: e0 */
    public boolean mo4460e0(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z, boolean z2, Format format) throws C24189b0 {
        char c = j3;
        if (this.f67149L0) {
            c = j3;
            if (j3 == 0) {
                c = j3;
                if ((i2 & 4) != 0) {
                    ?? r0 = this.f67155R0;
                    c = j3;
                    if (r0 != -9223372036854775807L) {
                        c = r0;
                    }
                }
            }
        }
        if (this.f67147J0 && (i2 & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i, false);
            return true;
        } else if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.f68223C0.f67296f++;
            C24230t c24230t = (C24230t) this.f67144G0;
            if (c24230t.f67117z != 1) {
                return true;
            }
            c24230t.f67117z = 2;
            return true;
        } else {
            try {
                if (!((C24230t) this.f67144G0).m5424h(byteBuffer, c)) {
                    return false;
                }
                mediaCodec.releaseOutputBuffer(i, false);
                this.f68223C0.f67295e++;
                return true;
            } catch (AbstractC24218n.C24220b | AbstractC24218n.C24222d e) {
                throw m4406v(e, this.f67151N0);
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u, p193e.p1577m.p1578a.p1596c.C24845s0.AbstractC24847b
    /* renamed from: f */
    public void mo4407f(int i, Object obj) throws C24189b0 {
        if (i == 2) {
            AbstractC24218n abstractC24218n = this.f67144G0;
            float floatValue = ((Float) obj).floatValue();
            C24230t c24230t = (C24230t) abstractC24218n;
            if (c24230t.f67077B == floatValue) {
                return;
            }
            c24230t.f67077B = floatValue;
            c24230t.m5417o();
        } else if (i == 3) {
            C24209i c24209i = (C24209i) obj;
            C24230t c24230t2 = (C24230t) this.f67144G0;
            if (c24230t2.f67105n.equals(c24209i)) {
                return;
            }
            c24230t2.f67105n = c24209i;
            if (c24230t2.f67090O) {
                return;
            }
            c24230t2.m5428d();
            c24230t2.f67088M = 0;
        } else if (i != 5) {
        } else {
            C24227q c24227q = (C24227q) obj;
            C24230t c24230t3 = (C24230t) this.f67144G0;
            if (c24230t3.f67089N.equals(c24227q)) {
                return;
            }
            int i2 = c24227q.f67065a;
            float f = c24227q.f67066b;
            AudioTrack audioTrack = c24230t3.f67104m;
            if (audioTrack != null) {
                if (c24230t3.f67089N.f67065a != i2) {
                    audioTrack.attachAuxEffect(i2);
                }
                if (i2 != 0) {
                    c24230t3.f67104m.setAuxEffectSendLevel(f);
                }
            }
            c24230t3.f67089N = c24227q;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24791p
    public C24652o0 getPlaybackParameters() {
        return ((C24230t) this.f67144G0).m5426f();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: h0 */
    public void mo5100h0() throws C24189b0 {
        try {
            C24230t c24230t = (C24230t) this.f67144G0;
            if (c24230t.f67085J || !c24230t.m5422j() || !c24230t.m5429c()) {
                return;
            }
            c24230t.m5420l();
            c24230t.f67085J = true;
        } catch (AbstractC24218n.C24222d e) {
            throw m4406v(e, this.f67151N0);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u, p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: m */
    public AbstractC24791p mo4390m() {
        return this;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: n0 */
    public int mo4457n0(AbstractC24449g abstractC24449g, AbstractC24279e<C24283h> abstractC24279e, Format format) throws C24451h.C24454c {
        String str = format.f4847i;
        if (!C24792q.m4568f(str)) {
            return 0;
        }
        int i = C24773d0.f69427a >= 21 ? 32 : 0;
        boolean z = format.f4850l == null || C24283h.class.equals(format.f4837C) || (format.f4837C == null && AbstractC24852u.m4409G(abstractC24279e, format.f4850l));
        if (z) {
            if ((m5404r0(format.f4860v, str) != 0) && abstractC24449g.mo5093a() != null) {
                return i | 12;
            }
        }
        if ("audio/raw".equals(str)) {
            if (!((C24230t) this.f67144G0).m5416p(format.f4860v, format.f4862x)) {
                return 1;
            }
        }
        if (!((C24230t) this.f67144G0).m5416p(format.f4860v, 2)) {
            return 1;
        }
        List<C24446e> mo4467T = mo4467T(abstractC24449g, format, false);
        if (mo4467T.isEmpty()) {
            return 1;
        }
        if (!z) {
            return 2;
        }
        C24446e c24446e = mo4467T.get(0);
        boolean m5116d = c24446e.m5116d(format);
        return ((!m5116d || !c24446e.m5115e(format)) ? 8 : 16) | (m5116d ? 4 : 3) | i;
    }

    /* renamed from: q0 */
    public final int m5405q0(C24446e c24446e, Format format) {
        int i;
        if (!"OMX.google.raw.decoder".equals(c24446e.f68209a) || (i = C24773d0.f69427a) >= 24 || (i == 23 && C24773d0.m4602v(this.f67142E0))) {
            return format.f4848j;
        }
        return -1;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24791p
    /* renamed from: r */
    public long mo4348r() {
        if (this.f69694e == 2) {
            m5403s0();
        }
        return this.f67152O0;
    }

    /* renamed from: r0 */
    public int m5404r0(int i, String str) {
        String str2 = str;
        if ("audio/eac3-joc".equals(str)) {
            if (((C24230t) this.f67144G0).m5416p(-1, 18)) {
                return C24792q.m4573a("audio/eac3-joc");
            }
            str2 = "audio/eac3";
        }
        int m4573a = C24792q.m4573a(str2);
        if (((C24230t) this.f67144G0).m5416p(i, m4573a)) {
            return m4573a;
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0337 A[Catch: Exception -> 0x034a, TRY_ENTER, TryCatch #0 {Exception -> 0x034a, blocks: (B:89:0x02e8, B:92:0x0337), top: B:156:0x02e8 }] */
    /* JADX WARN: Type inference failed for: r0v101, types: [long] */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v105, types: [long] */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v118, types: [long] */
    /* JADX WARN: Type inference failed for: r0v123, types: [long] */
    /* JADX WARN: Type inference failed for: r0v129, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v208, types: [long] */
    /* JADX WARN: Type inference failed for: r0v213, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* renamed from: s0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5403s0() {
        /*
            Method dump skipped, instructions count: 1374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1598c1.C24239w.m5403s0():void");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24791p
    /* renamed from: t */
    public void mo4347t(C24652o0 c24652o0) {
        C24230t c24230t = (C24230t) this.f67144G0;
        C24230t.C24233c c24233c = c24230t.f67103l;
        if (c24233c != null && !c24233c.f67129j) {
            c24230t.f67107p = C24652o0.f69035e;
        } else if (c24652o0.equals(c24230t.m5426f())) {
        } else {
            if (c24230t.m5422j()) {
                c24230t.f67106o = c24652o0;
            } else {
                c24230t.f67107p = c24652o0;
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f, p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: x */
    public void mo4404x() {
        try {
            this.f67155R0 = -9223372036854775807L;
            this.f67156S0 = 0;
            ((C24230t) this.f67144G0).m5428d();
            try {
                super.mo4404x();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.mo4404x();
                throw th;
            } finally {
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f, p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: y */
    public void mo4403y(boolean z) throws C24189b0 {
        super.mo4403y(z);
        final AbstractC24216m.C24217a c24217a = this.f67143F0;
        final C24264d c24264d = this.f68223C0;
        Handler handler = c24217a.f67027a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: e.m.a.c.c1.e
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC24216m.C24217a c24217a2 = AbstractC24216m.C24217a.this;
                    C24264d c24264d2 = c24264d;
                    AbstractC24216m abstractC24216m = c24217a2.f67028b;
                    int i = C24773d0.f69427a;
                    abstractC24216m.mo5445l(c24264d2);
                }
            });
        }
        int i = this.f69692c.f69707a;
        boolean z2 = false;
        if (i == 0) {
            C24230t c24230t = (C24230t) this.f67144G0;
            if (!c24230t.f67090O) {
                return;
            }
            c24230t.f67090O = false;
            c24230t.f67088M = 0;
            c24230t.m5428d();
            return;
        }
        C24230t c24230t2 = (C24230t) this.f67144G0;
        Objects.requireNonNull(c24230t2);
        if (C24773d0.f69427a >= 21) {
            z2 = true;
        }
        C26232y.m2286x(z2);
        if (c24230t2.f67090O && c24230t2.f67088M == i) {
            return;
        }
        c24230t2.f67090O = true;
        c24230t2.f67088M = i;
        c24230t2.m5428d();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: z */
    public void mo4402z(long j, boolean z) throws C24189b0 {
        this.f68271w0 = false;
        this.f68273x0 = false;
        this.f68221B0 = false;
        m5107O();
        this.f68262s.m4637b();
        ((C24230t) this.f67144G0).m5428d();
        this.f67152O0 = j;
        this.f67153P0 = true;
        this.f67154Q0 = true;
        this.f67155R0 = -9223372036854775807L;
        this.f67156S0 = 0;
    }
}
