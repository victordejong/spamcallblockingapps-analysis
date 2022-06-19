package p193e.p1577m.p1578a.p1596c.p1637r1;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.video.DummySurface;
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
import p193e.p1577m.p1578a.p1596c.p1600e1.C24264d;
import p193e.p1577m.p1578a.p1596c.p1600e1.C24265e;
import p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24279e;
import p193e.p1577m.p1578a.p1596c.p1601f1.C24283h;
import p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f;
import p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24449g;
import p193e.p1577m.p1578a.p1596c.p1612h1.C24444c;
import p193e.p1577m.p1578a.p1596c.p1612h1.C24446e;
import p193e.p1577m.p1578a.p1596c.p1612h1.C24451h;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24792q;
import p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24834s;
import p193e.p1577m.p1578a.p1596c.p1637r1.C24829p;
/* renamed from: e.m.a.c.r1.k */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/r1/k.class */
public class C24822k extends AbstractC24447f {

    /* renamed from: s1 */
    public static final int[] f69565s1 = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};

    /* renamed from: t1 */
    public static boolean f69566t1;

    /* renamed from: u1 */
    public static boolean f69567u1;

    /* renamed from: E0 */
    public final Context f69568E0;

    /* renamed from: F0 */
    public final C24829p f69569F0;

    /* renamed from: G0 */
    public final AbstractC24834s.C24835a f69570G0;

    /* renamed from: H0 */
    public final long f69571H0;

    /* renamed from: I0 */
    public final int f69572I0;

    /* renamed from: M0 */
    public C24823a f69576M0;

    /* renamed from: N0 */
    public boolean f69577N0;

    /* renamed from: O0 */
    public boolean f69578O0;

    /* renamed from: P0 */
    public Surface f69579P0;

    /* renamed from: Q0 */
    public Surface f69580Q0;

    /* renamed from: S0 */
    public boolean f69582S0;

    /* renamed from: T0 */
    public long f69583T0;

    /* renamed from: V0 */
    public long f69585V0;

    /* renamed from: W0 */
    public int f69586W0;

    /* renamed from: X0 */
    public int f69587X0;

    /* renamed from: Y0 */
    public int f69588Y0;

    /* renamed from: Z0 */
    public long f69589Z0;

    /* renamed from: a1 */
    public int f69590a1;

    /* renamed from: c1 */
    public MediaFormat f69592c1;

    /* renamed from: f1 */
    public int f69595f1;

    /* renamed from: h1 */
    public int f69597h1;

    /* renamed from: i1 */
    public int f69598i1;

    /* renamed from: j1 */
    public int f69599j1;

    /* renamed from: k1 */
    public float f69600k1;

    /* renamed from: l1 */
    public boolean f69601l1;

    /* renamed from: m1 */
    public int f69602m1;

    /* renamed from: n1 */
    public C24824b f69603n1;

    /* renamed from: q1 */
    public int f69606q1;

    /* renamed from: r1 */
    public AbstractC24828o f69607r1;

    /* renamed from: J0 */
    public final boolean f69573J0 = "NVIDIA".equals(C24773d0.f69429c);

    /* renamed from: K0 */
    public final long[] f69574K0 = new long[10];

    /* renamed from: L0 */
    public final long[] f69575L0 = new long[10];

    /* renamed from: p1 */
    public long f69605p1 = -9223372036854775807L;

    /* renamed from: o1 */
    public long f69604o1 = -9223372036854775807L;

    /* renamed from: U0 */
    public long f69584U0 = -9223372036854775807L;

    /* renamed from: d1 */
    public int f69593d1 = -1;

    /* renamed from: e1 */
    public int f69594e1 = -1;

    /* renamed from: g1 */
    public float f69596g1 = -1.0f;

    /* renamed from: b1 */
    public float f69591b1 = -1.0f;

    /* renamed from: R0 */
    public int f69581R0 = 1;

    /* renamed from: e.m.a.c.r1.k$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/r1/k$a.class */
    public static final class C24823a {

        /* renamed from: a */
        public final int f69608a;

        /* renamed from: b */
        public final int f69609b;

        /* renamed from: c */
        public final int f69610c;

        public C24823a(int i, int i2, int i3) {
            this.f69608a = i;
            this.f69609b = i2;
            this.f69610c = i3;
        }
    }

    /* renamed from: e.m.a.c.r1.k$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/r1/k$b.class */
    public final class C24824b implements MediaCodec.OnFrameRenderedListener, Handler.Callback {

        /* renamed from: a */
        public final Handler f69611a;

        public C24824b(MediaCodec mediaCodec) {
            C24822k.this = r5;
            Handler handler = new Handler(this);
            this.f69611a = handler;
            mediaCodec.setOnFrameRenderedListener(this, handler);
        }

        /* renamed from: a */
        public final void m4446a(long j) {
            C24822k c24822k = C24822k.this;
            if (this != c24822k.f69603n1) {
                return;
            }
            if (j == RecyclerView.FOREVER_NS) {
                c24822k.f68221B0 = true;
            } else {
                c24822k.m4480C0(j);
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            m4446a((C24773d0.m4625E(message.arg1) << 32) | C24773d0.m4625E(message.arg2));
            return true;
        }

        @Override // android.media.MediaCodec.OnFrameRenderedListener
        public void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
            if (C24773d0.f69427a >= 30) {
                m4446a(j);
                return;
            }
            this.f69611a.sendMessageAtFrontOfQueue(Message.obtain(this.f69611a, 0, (int) (j >> 32), (int) j));
        }
    }

    @Deprecated
    public C24822k(Context context, AbstractC24449g abstractC24449g, long j, AbstractC24279e<C24283h> abstractC24279e, boolean z, boolean z2, Handler handler, AbstractC24834s abstractC24834s, int i) {
        super(2, abstractC24449g, abstractC24279e, z, z2, 30.0f);
        this.f69571H0 = j;
        this.f69572I0 = i;
        Context applicationContext = context.getApplicationContext();
        this.f69568E0 = applicationContext;
        this.f69569F0 = new C24829p(applicationContext);
        this.f69570G0 = new AbstractC24834s.C24835a(handler, abstractC24834s);
        m4455r0();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: t0 */
    public static int m4453t0(C24446e c24446e, String str, int i, int i2) {
        boolean z;
        int i3;
        int i4;
        if (i == -1 || i2 == -1) {
            return -1;
        }
        str.hashCode();
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1599127256:
                if (str.equals("video/x-vnd.on2.vp8")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        switch (z) {
            case false:
            case true:
            case true:
                i4 = i * i2;
                i3 = 2;
                break;
            case true:
            case true:
                i4 = i * i2;
                i3 = 4;
                break;
            case true:
                String str2 = C24773d0.f69430d;
                if ("BRAVIA 4K 2015".equals(str2)) {
                    return -1;
                }
                if ("Amazon".equals(C24773d0.f69429c)) {
                    if ("KFSOWI".equals(str2)) {
                        return -1;
                    }
                    if ("AFTS".equals(str2) && c24446e.f68214f) {
                        return -1;
                    }
                }
                i4 = C24773d0.m4620d(i2, 16) * C24773d0.m4620d(i, 16) * 16 * 16;
                i3 = 2;
                break;
            default:
                return -1;
        }
        return (i4 * 3) / (i3 * 2);
    }

    /* renamed from: u0 */
    public static List<C24446e> m4452u0(AbstractC24449g abstractC24449g, Format format, boolean z, boolean z2) throws C24451h.C24454c {
        Pair<Integer, Integer> m5089c;
        String str = format.f4847i;
        if (str == null) {
            return Collections.emptyList();
        }
        List<C24446e> mo5092b = abstractC24449g.mo5092b(str, z, z2);
        Pattern pattern = C24451h.f68283a;
        ArrayList arrayList = new ArrayList(mo5092b);
        C24451h.m5082j(arrayList, new C24444c(format));
        if ("video/dolby-vision".equals(str) && (m5089c = C24451h.m5089c(format)) != null) {
            int intValue = ((Integer) m5089c.first).intValue();
            if (intValue == 16 || intValue == 256) {
                arrayList.addAll(abstractC24449g.mo5092b("video/hevc", z, z2));
            } else if (intValue == 512) {
                arrayList.addAll(abstractC24449g.mo5092b("video/avc", z, z2));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: v0 */
    public static int m4451v0(C24446e c24446e, Format format) {
        if (format.f4848j != -1) {
            int size = format.f4849k.size();
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                i += format.f4849k.get(i2).length;
            }
            return format.f4848j + i;
        }
        return m4453t0(c24446e, format.f4847i, format.f4852n, format.f4853o);
    }

    /* renamed from: w0 */
    public static boolean m4450w0(long j) {
        return j < -30000;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f, p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: A */
    public void mo4415A() {
        try {
            super.mo4415A();
            Surface surface = this.f69580Q0;
            if (surface == null) {
                return;
            }
            if (this.f69579P0 == surface) {
                this.f69579P0 = null;
            }
            surface.release();
            this.f69580Q0 = null;
        } catch (Throwable th) {
            if (this.f69580Q0 != null) {
                Surface surface2 = this.f69579P0;
                Surface surface3 = this.f69580Q0;
                if (surface2 == surface3) {
                    this.f69579P0 = null;
                }
                surface3.release();
                this.f69580Q0 = null;
            }
            throw th;
        }
    }

    /* renamed from: A0 */
    public final void m4482A0() {
        int i = this.f69597h1;
        if (i == -1 && this.f69598i1 == -1) {
            return;
        }
        this.f69570G0.m4430a(i, this.f69598i1, this.f69599j1, this.f69600k1);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: B */
    public void mo4414B() {
        this.f69586W0 = 0;
        this.f69585V0 = SystemClock.elapsedRealtime();
        this.f69589Z0 = SystemClock.elapsedRealtime() * 1000;
    }

    /* renamed from: B0 */
    public final void m4481B0(long j, long j2, Format format, MediaFormat mediaFormat) {
        AbstractC24828o abstractC24828o = this.f69607r1;
        if (abstractC24828o != null) {
            abstractC24828o.mo4445a(j, j2, format, mediaFormat);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: C */
    public void mo4413C() {
        this.f69584U0 = -9223372036854775807L;
        m4449x0();
    }

    /* renamed from: C0 */
    public void m4480C0(long j) {
        Format m4634e = this.f68262s.m4634e(j);
        if (m4634e != null) {
            this.f68272x = m4634e;
        }
        if (m4634e != null) {
            m4479D0(this.f68225E, m4634e.f4852n, m4634e.f4853o);
        }
        m4447z0();
        this.f68223C0.f67295e++;
        m4448y0();
        mo4462b0(j);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: D */
    public void mo4412D(Format[] formatArr, long j) throws C24189b0 {
        if (this.f69605p1 == -9223372036854775807L) {
            this.f69605p1 = j;
            return;
        }
        int i = this.f69606q1;
        long[] jArr = this.f69574K0;
        if (i == jArr.length) {
            long j2 = jArr[i - 1];
        } else {
            this.f69606q1 = i + 1;
        }
        int i2 = this.f69606q1 - 1;
        jArr[i2] = j;
        this.f69575L0[i2] = this.f69604o1;
    }

    /* renamed from: D0 */
    public final void m4479D0(MediaCodec mediaCodec, int i, int i2) {
        this.f69593d1 = i;
        this.f69594e1 = i2;
        float f = this.f69591b1;
        this.f69596g1 = f;
        if (C24773d0.f69427a >= 21) {
            int i3 = this.f69590a1;
            if (i3 == 90 || i3 == 270) {
                this.f69593d1 = i2;
                this.f69594e1 = i;
                this.f69596g1 = 1.0f / f;
            }
        } else {
            this.f69595f1 = this.f69590a1;
        }
        mediaCodec.setVideoScalingMode(this.f69581R0);
    }

    /* renamed from: E0 */
    public void m4478E0(MediaCodec mediaCodec, int i) {
        m4447z0();
        C26232y.m2326n("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        C26232y.m2424Q();
        this.f69589Z0 = SystemClock.elapsedRealtime() * 1000;
        this.f68223C0.f67295e++;
        this.f69587X0 = 0;
        m4448y0();
    }

    /* renamed from: F0 */
    public void m4477F0(MediaCodec mediaCodec, int i, long j) {
        m4447z0();
        C26232y.m2326n("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j);
        C26232y.m2424Q();
        this.f69589Z0 = SystemClock.elapsedRealtime() * 1000;
        this.f68223C0.f67295e++;
        this.f69587X0 = 0;
        m4448y0();
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: G0 */
    public final void m4476G0() {
        this.f69584U0 = this.f69571H0 > 0 ? SystemClock.elapsedRealtime() + this.f69571H0 : (char) 1;
    }

    /* renamed from: H0 */
    public final boolean m4475H0(C24446e c24446e) {
        return C24773d0.f69427a >= 23 && !this.f69601l1 && !m4454s0(c24446e.f68209a) && (!c24446e.f68214f || DummySurface.m39185b(this.f69568E0));
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: I */
    public int mo4474I(MediaCodec mediaCodec, C24446e c24446e, Format format, Format format2) {
        if (c24446e.m5114f(format, format2, true)) {
            int i = format2.f4852n;
            C24823a c24823a = this.f69576M0;
            if (i > c24823a.f69608a || format2.f4853o > c24823a.f69609b || m4451v0(c24446e, format2) > this.f69576M0.f69610c) {
                return 0;
            }
            return format.m39244r(format2) ? 3 : 2;
        }
        return 0;
    }

    /* renamed from: I0 */
    public void m4473I0(MediaCodec mediaCodec, int i) {
        C26232y.m2326n("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        C26232y.m2424Q();
        this.f68223C0.f67296f++;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x01fe, code lost:
        if (r21 == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0201, code lost:
        r18 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0208, code lost:
        r18 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x020e, code lost:
        if (r21 == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0214, code lost:
        r24 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0218, code lost:
        r13 = new android.graphics.Point(r18, r24);
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0402  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x03ae  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x03e8  */
    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: J */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo4472J(p193e.p1577m.p1578a.p1596c.p1612h1.C24446e r7, android.media.MediaCodec r8, com.google.android.exoplayer2.Format r9, android.media.MediaCrypto r10, float r11) {
        /*
            Method dump skipped, instructions count: 1110
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1637r1.C24822k.mo4472J(e.m.a.c.h1.e, android.media.MediaCodec, com.google.android.exoplayer2.Format, android.media.MediaCrypto, float):void");
    }

    /* renamed from: J0 */
    public void m4471J0(int i) {
        C24264d c24264d = this.f68223C0;
        c24264d.f67297g += i;
        this.f69586W0 += i;
        int i2 = this.f69587X0 + i;
        this.f69587X0 = i2;
        c24264d.f67298h = Math.max(i2, c24264d.f67298h);
        int i3 = this.f69572I0;
        if (i3 <= 0 || this.f69586W0 < i3) {
            return;
        }
        m4449x0();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: P */
    public boolean mo4470P() {
        try {
            return super.mo4470P();
        } finally {
            this.f69588Y0 = 0;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: R */
    public boolean mo4469R() {
        return this.f69601l1 && C24773d0.f69427a < 23;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: S */
    public float mo4468S(float f, Format format, Format[] formatArr) {
        float f2;
        int length = formatArr.length;
        int i = 0;
        float f3 = -1.0f;
        while (true) {
            f2 = f3;
            if (i >= length) {
                break;
            }
            float f4 = formatArr[i].f4854p;
            float f5 = f2;
            if (f4 != -1.0f) {
                f5 = Math.max(f2, f4);
            }
            i++;
            f3 = f5;
        }
        return f2 == -1.0f ? -1.0f : f2 * f;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: T */
    public List<C24446e> mo4467T(AbstractC24449g abstractC24449g, Format format, boolean z) throws C24451h.C24454c {
        return m4452u0(abstractC24449g, format, z, this.f69601l1);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: U */
    public void mo4466U(C24265e c24265e) throws C24189b0 {
        if (!this.f69578O0) {
            return;
        }
        ByteBuffer byteBuffer = c24265e.f67304e;
        Objects.requireNonNull(byteBuffer);
        if (byteBuffer.remaining() < 7) {
            return;
        }
        byte b = byteBuffer.get();
        short s = byteBuffer.getShort();
        short s2 = byteBuffer.getShort();
        byte b2 = byteBuffer.get();
        byte b3 = byteBuffer.get();
        byteBuffer.position(0);
        if (b != -75 || s != 60 || s2 != 1 || b2 != 4 || b3 != 0) {
            return;
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        byteBuffer.position(0);
        MediaCodec mediaCodec = this.f68225E;
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        mediaCodec.setParameters(bundle);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: Y */
    public void mo4465Y(final String str, final long j, final long j2) {
        final AbstractC24834s.C24835a c24835a = this.f69570G0;
        Handler handler = c24835a.f69648a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: e.m.a.c.r1.d
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC24834s.C24835a c24835a2 = AbstractC24834s.C24835a.this;
                    String str2 = str;
                    long j3 = j;
                    long j4 = j2;
                    AbstractC24834s abstractC24834s = c24835a2.f69649b;
                    int i = C24773d0.f69427a;
                    abstractC24834s.mo4435f(str2, j3, j4);
                }
            });
        }
        this.f69577N0 = m4454s0(str);
        C24446e c24446e = this.f68230N;
        Objects.requireNonNull(c24446e);
        boolean z = false;
        if (C24773d0.f69427a >= 29) {
            z = false;
            if ("video/x-vnd.on2.vp9".equals(c24446e.f68210b)) {
                MediaCodecInfo.CodecProfileLevel[] m5117c = c24446e.m5117c();
                int length = m5117c.length;
                int i = 0;
                while (true) {
                    z = false;
                    if (i >= length) {
                        break;
                    } else if (m5117c[i].profile == 16384) {
                        z = true;
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        this.f69578O0 = z;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: Z */
    public void mo4464Z(C24286g0 c24286g0) throws C24189b0 {
        super.mo4464Z(c24286g0);
        final Format format = c24286g0.f67334c;
        final AbstractC24834s.C24835a c24835a = this.f69570G0;
        Handler handler = c24835a.f69648a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: e.m.a.c.r1.a
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC24834s.C24835a c24835a2 = AbstractC24834s.C24835a.this;
                    Format format2 = format;
                    AbstractC24834s abstractC24834s = c24835a2.f69649b;
                    int i = C24773d0.f69427a;
                    abstractC24834s.mo4433n(format2);
                }
            });
        }
        this.f69591b1 = format.f4856r;
        this.f69590a1 = format.f4855q;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: a0 */
    public void mo4463a0(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        this.f69592c1 = mediaFormat;
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        m4479D0(mediaCodec, z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width"), z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height"));
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f, p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: b */
    public boolean mo4400b() {
        Surface surface;
        if (super.mo4400b() && (this.f69582S0 || (((surface = this.f69580Q0) != null && this.f69579P0 == surface) || this.f68225E == null || this.f69601l1))) {
            this.f69584U0 = -9223372036854775807L;
            return true;
        } else if (this.f69584U0 == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.f69584U0) {
                return true;
            }
            this.f69584U0 = -9223372036854775807L;
            return false;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: b0 */
    public void mo4462b0(long j) {
        if (!this.f69601l1) {
            this.f69588Y0--;
        }
        while (true) {
            int i = this.f69606q1;
            if (i == 0 || j < this.f69575L0[0]) {
                return;
            }
            long[] jArr = this.f69574K0;
            this.f69605p1 = jArr[0];
            int i2 = i - 1;
            this.f69606q1 = i2;
            System.arraycopy(jArr, 1, jArr, 0, i2);
            long[] jArr2 = this.f69575L0;
            System.arraycopy(jArr2, 1, jArr2, 0, this.f69606q1);
            m4456q0();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: c0 */
    public void mo4461c0(C24265e c24265e) {
        if (!this.f69601l1) {
            this.f69588Y0++;
        }
        this.f69604o1 = Math.max(c24265e.f67303d, this.f69604o1);
        if (C24773d0.f69427a >= 23 || !this.f69601l1) {
            return;
        }
        m4480C0(c24265e.f67303d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b1, code lost:
        if ((m4450w0(r0) && r0 - r0 > 100000) != false) goto L38;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0292  */
    /* JADX WARN: Type inference failed for: r0v126, types: [long] */
    /* JADX WARN: Type inference failed for: r0v133, types: [long] */
    /* JADX WARN: Type inference failed for: r0v137, types: [long] */
    /* JADX WARN: Type inference failed for: r0v139, types: [long] */
    /* JADX WARN: Type inference failed for: r0v162, types: [long] */
    /* JADX WARN: Type inference failed for: r0v168, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: e0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo4460e0(long r9, long r11, android.media.MediaCodec r13, java.nio.ByteBuffer r14, int r15, int r16, long r17, boolean r19, boolean r20, com.google.android.exoplayer2.Format r21) throws p193e.p1577m.p1578a.p1596c.C24189b0 {
        /*
            Method dump skipped, instructions count: 959
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1637r1.C24822k.mo4460e0(long, long, android.media.MediaCodec, java.nio.ByteBuffer, int, int, long, boolean, boolean, com.google.android.exoplayer2.Format):boolean");
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u, p193e.p1577m.p1578a.p1596c.C24845s0.AbstractC24847b
    /* renamed from: f */
    public void mo4407f(int i, Object obj) throws C24189b0 {
        if (i != 1) {
            if (i != 4) {
                if (i != 6) {
                    return;
                }
                this.f69607r1 = (AbstractC24828o) obj;
                return;
            }
            int intValue = ((Integer) obj).intValue();
            this.f69581R0 = intValue;
            MediaCodec mediaCodec = this.f68225E;
            if (mediaCodec == null) {
                return;
            }
            mediaCodec.setVideoScalingMode(intValue);
            return;
        }
        Surface surface = (Surface) obj;
        DummySurface dummySurface = surface;
        if (surface == null) {
            dummySurface = this.f69580Q0;
            if (dummySurface == null) {
                C24446e c24446e = this.f68230N;
                dummySurface = surface;
                if (c24446e != null) {
                    dummySurface = surface;
                    if (m4475H0(c24446e)) {
                        dummySurface = DummySurface.m39184c(this.f69568E0, c24446e.f68214f);
                        this.f69580Q0 = dummySurface;
                    }
                }
            }
        }
        if (this.f69579P0 == dummySurface) {
            if (dummySurface == null || dummySurface == this.f69580Q0) {
                return;
            }
            m4482A0();
            if (!this.f69582S0) {
                return;
            }
            AbstractC24834s.C24835a c24835a = this.f69570G0;
            Surface surface2 = this.f69579P0;
            Handler handler = c24835a.f69648a;
            if (handler == null) {
                return;
            }
            handler.post(new RunnableC24816e(c24835a, surface2));
            return;
        }
        this.f69579P0 = dummySurface;
        int i2 = this.f69694e;
        MediaCodec mediaCodec2 = this.f68225E;
        if (mediaCodec2 != null) {
            if (C24773d0.f69427a < 23 || dummySurface == null || this.f69577N0) {
                mo4459g0();
                m5104W();
            } else {
                mediaCodec2.setOutputSurface(dummySurface);
            }
        }
        if (dummySurface == null || dummySurface == this.f69580Q0) {
            m4455r0();
            m4456q0();
            return;
        }
        m4482A0();
        m4456q0();
        if (i2 != 2) {
            return;
        }
        m4476G0();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: g0 */
    public void mo4459g0() {
        try {
            super.mo4459g0();
        } finally {
            this.f69588Y0 = 0;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: m0 */
    public boolean mo4458m0(C24446e c24446e) {
        return this.f69579P0 != null || m4475H0(c24446e);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f
    /* renamed from: n0 */
    public int mo4457n0(AbstractC24449g abstractC24449g, AbstractC24279e<C24283h> abstractC24279e, Format format) throws C24451h.C24454c {
        if (!C24792q.m4567g(format.f4847i)) {
            return 0;
        }
        DrmInitData drmInitData = format.f4850l;
        boolean z = drmInitData != null;
        List<C24446e> m4452u0 = m4452u0(abstractC24449g, format, z, false);
        List<C24446e> list = m4452u0;
        if (z) {
            list = m4452u0;
            if (m4452u0.isEmpty()) {
                list = m4452u0(abstractC24449g, format, false, false);
            }
        }
        if (list.isEmpty()) {
            return 1;
        }
        if (!(drmInitData == null || C24283h.class.equals(format.f4837C) || (format.f4837C == null && AbstractC24852u.m4409G(abstractC24279e, drmInitData)))) {
            return 2;
        }
        C24446e c24446e = list.get(0);
        boolean m5116d = c24446e.m5116d(format);
        int i = c24446e.m5115e(format) ? 16 : 8;
        int i2 = 0;
        if (m5116d) {
            List<C24446e> m4452u02 = m4452u0(abstractC24449g, format, z, true);
            i2 = 0;
            if (!m4452u02.isEmpty()) {
                C24446e c24446e2 = m4452u02.get(0);
                i2 = 0;
                if (c24446e2.m5116d(format)) {
                    i2 = 0;
                    if (c24446e2.m5115e(format)) {
                        i2 = 32;
                    }
                }
            }
        }
        return (m5116d ? 4 : 3) | i | i2;
    }

    /* renamed from: q0 */
    public final void m4456q0() {
        MediaCodec mediaCodec;
        this.f69582S0 = false;
        if (C24773d0.f69427a < 23 || !this.f69601l1 || (mediaCodec = this.f68225E) == null) {
            return;
        }
        this.f69603n1 = new C24824b(mediaCodec);
    }

    /* renamed from: r0 */
    public final void m4455r0() {
        this.f69597h1 = -1;
        this.f69598i1 = -1;
        this.f69600k1 = -1.0f;
        this.f69599j1 = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:553:0x0f20  */
    /* renamed from: s0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m4454s0(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 3908
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1637r1.C24822k.m4454s0(java.lang.String):boolean");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f, p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: x */
    public void mo4404x() {
        this.f69604o1 = -9223372036854775807L;
        this.f69605p1 = -9223372036854775807L;
        this.f69606q1 = 0;
        this.f69592c1 = null;
        m4455r0();
        m4456q0();
        C24829p c24829p = this.f69569F0;
        if (c24829p.f69628a != null) {
            C24829p.C24830a c24830a = c24829p.f69630c;
            if (c24830a != null) {
                c24830a.f69640a.unregisterDisplayListener(c24830a);
            }
            c24829p.f69629b.f69644b.sendEmptyMessage(2);
        }
        this.f69603n1 = null;
        try {
            super.mo4404x();
            final AbstractC24834s.C24835a c24835a = this.f69570G0;
            final C24264d c24264d = this.f68223C0;
            Objects.requireNonNull(c24835a);
            synchronized (c24264d) {
            }
            Handler handler = c24835a.f69648a;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: e.m.a.c.r1.f
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC24834s.C24835a c24835a22 = AbstractC24834s.C24835a.this;
                    C24264d c24264d22 = c24264d;
                    Objects.requireNonNull(c24835a22);
                    synchronized (c24264d22) {
                    }
                    AbstractC24834s abstractC24834s = c24835a22.f69649b;
                    int i = C24773d0.f69427a;
                    abstractC24834s.mo4432o(c24264d22);
                }
            });
        } catch (Throwable th) {
            final AbstractC24834s.C24835a c24835a2 = this.f69570G0;
            final C24264d c24264d2 = this.f68223C0;
            Objects.requireNonNull(c24835a2);
            synchronized (c24264d2) {
                Handler handler2 = c24835a2.f69648a;
                if (handler2 != null) {
                    handler2.post(new Runnable() { // from class: e.m.a.c.r1.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            AbstractC24834s.C24835a c24835a22 = AbstractC24834s.C24835a.this;
                            C24264d c24264d22 = c24264d2;
                            Objects.requireNonNull(c24835a22);
                            synchronized (c24264d22) {
                            }
                            AbstractC24834s abstractC24834s = c24835a22.f69649b;
                            int i = C24773d0.f69427a;
                            abstractC24834s.mo4432o(c24264d22);
                        }
                    });
                }
                throw th;
            }
        }
    }

    /* renamed from: x0 */
    public final void m4449x0() {
        if (this.f69586W0 > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j = this.f69585V0;
            final AbstractC24834s.C24835a c24835a = this.f69570G0;
            final int i = this.f69586W0;
            Handler handler = c24835a.f69648a;
            if (handler != null) {
                final long j2 = elapsedRealtime - j;
                handler.post(new Runnable() { // from class: e.m.a.c.r1.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC24834s.C24835a c24835a2 = AbstractC24834s.C24835a.this;
                        int i2 = i;
                        long j3 = j2;
                        AbstractC24834s abstractC24834s = c24835a2.f69649b;
                        int i3 = C24773d0.f69427a;
                        abstractC24834s.mo4436e(i2, j3);
                    }
                });
            }
            this.f69586W0 = 0;
            this.f69585V0 = elapsedRealtime;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f, p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: y */
    public void mo4403y(boolean z) throws C24189b0 {
        super.mo4403y(z);
        int i = this.f69602m1;
        int i2 = this.f69692c.f69707a;
        this.f69602m1 = i2;
        this.f69601l1 = i2 != 0;
        if (i2 != i) {
            mo4459g0();
        }
        final AbstractC24834s.C24835a c24835a = this.f69570G0;
        final C24264d c24264d = this.f68223C0;
        Handler handler = c24835a.f69648a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: e.m.a.c.r1.b
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC24834s.C24835a c24835a2 = AbstractC24834s.C24835a.this;
                    C24264d c24264d2 = c24264d;
                    AbstractC24834s abstractC24834s = c24835a2.f69649b;
                    int i3 = C24773d0.f69427a;
                    abstractC24834s.mo4431q(c24264d2);
                }
            });
        }
        C24829p c24829p = this.f69569F0;
        c24829p.f69636i = false;
        if (c24829p.f69628a != null) {
            c24829p.f69629b.f69644b.sendEmptyMessage(1);
            C24829p.C24830a c24830a = c24829p.f69630c;
            if (c24830a != null) {
                c24830a.f69640a.registerDisplayListener(c24830a, null);
            }
            c24829p.m4443b();
        }
    }

    /* renamed from: y0 */
    public void m4448y0() {
        if (!this.f69582S0) {
            this.f69582S0 = true;
            AbstractC24834s.C24835a c24835a = this.f69570G0;
            Surface surface = this.f69579P0;
            Handler handler = c24835a.f69648a;
            if (handler == null) {
                return;
            }
            handler.post(new RunnableC24816e(c24835a, surface));
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: z */
    public void mo4402z(long j, boolean z) throws C24189b0 {
        this.f68271w0 = false;
        this.f68273x0 = false;
        this.f68221B0 = false;
        m5107O();
        this.f68262s.m4637b();
        m4456q0();
        this.f69583T0 = -9223372036854775807L;
        this.f69587X0 = 0;
        this.f69604o1 = -9223372036854775807L;
        int i = this.f69606q1;
        if (i != 0) {
            this.f69605p1 = this.f69574K0[i - 1];
            this.f69606q1 = 0;
        }
        if (z) {
            m4476G0();
        } else {
            this.f69584U0 = -9223372036854775807L;
        }
    }

    /* renamed from: z0 */
    public final void m4447z0() {
        int i = this.f69593d1;
        if (i == -1 && this.f69594e1 == -1) {
            return;
        }
        if (this.f69597h1 == i && this.f69598i1 == this.f69594e1 && this.f69599j1 == this.f69595f1 && this.f69600k1 == this.f69596g1) {
            return;
        }
        this.f69570G0.m4430a(i, this.f69594e1, this.f69595f1, this.f69596g1);
        this.f69597h1 = this.f69593d1;
        this.f69598i1 = this.f69594e1;
        this.f69599j1 = this.f69595f1;
        this.f69600k1 = this.f69596g1;
    }
}
