package p193e.p1577m.p1578a.p1596c.p1612h1;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import com.google.android.exoplayer2.Format;
import com.tenor.android.core.constant.StringConstant;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.AbstractC24852u;
import p193e.p1577m.p1578a.p1596c.C24189b0;
import p193e.p1577m.p1578a.p1596c.C24286g0;
import p193e.p1577m.p1578a.p1596c.C24854v;
import p193e.p1577m.p1578a.p1596c.p1600e1.C24264d;
import p193e.p1577m.p1578a.p1596c.p1600e1.C24265e;
import p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24276c;
import p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24279e;
import p193e.p1577m.p1578a.p1596c.p1601f1.C24283h;
import p193e.p1577m.p1578a.p1596c.p1612h1.C24451h;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24769b0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24789n;
/* renamed from: e.m.a.c.h1.f */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/h1/f.class */
public abstract class AbstractC24447f extends AbstractC24852u {

    /* renamed from: D0 */
    public static final byte[] f68217D0 = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};

    /* renamed from: A */
    public MediaCrypto f68218A;

    /* renamed from: A0 */
    public boolean f68219A0;

    /* renamed from: B */
    public boolean f68220B;

    /* renamed from: B0 */
    public boolean f68221B0;

    /* renamed from: C0 */
    public C24264d f68223C0;

    /* renamed from: E */
    public MediaCodec f68225E;

    /* renamed from: J */
    public Format f68226J;

    /* renamed from: L */
    public ArrayDeque<C24446e> f68228L;

    /* renamed from: M */
    public C24448a f68229M;

    /* renamed from: N */
    public C24446e f68230N;

    /* renamed from: O */
    public int f68231O;

    /* renamed from: P */
    public boolean f68232P;

    /* renamed from: Q */
    public boolean f68233Q;

    /* renamed from: R */
    public boolean f68234R;

    /* renamed from: S */
    public boolean f68235S;

    /* renamed from: T */
    public boolean f68236T;

    /* renamed from: U */
    public boolean f68237U;

    /* renamed from: V */
    public boolean f68238V;

    /* renamed from: W */
    public boolean f68239W;

    /* renamed from: X */
    public boolean f68240X;

    /* renamed from: Y */
    public boolean f68241Y;

    /* renamed from: Z */
    public ByteBuffer[] f68242Z;

    /* renamed from: g0 */
    public ByteBuffer[] f68243g0;

    /* renamed from: h0 */
    public long f68244h0;

    /* renamed from: i0 */
    public int f68245i0;

    /* renamed from: j0 */
    public int f68246j0;

    /* renamed from: k0 */
    public ByteBuffer f68247k0;

    /* renamed from: l */
    public final AbstractC24449g f68248l;

    /* renamed from: l0 */
    public boolean f68249l0;

    /* renamed from: m */
    public final AbstractC24279e<C24283h> f68250m;

    /* renamed from: m0 */
    public boolean f68251m0;

    /* renamed from: n */
    public final boolean f68252n;

    /* renamed from: n0 */
    public boolean f68253n0;

    /* renamed from: o */
    public final boolean f68254o;

    /* renamed from: p */
    public final float f68256p;

    /* renamed from: r0 */
    public boolean f68261r0;

    /* renamed from: s0 */
    public boolean f68263s0;

    /* renamed from: t0 */
    public boolean f68265t0;

    /* renamed from: u0 */
    public long f68267u0;

    /* renamed from: v */
    public boolean f68268v;

    /* renamed from: v0 */
    public long f68269v0;

    /* renamed from: w */
    public Format f68270w;

    /* renamed from: w0 */
    public boolean f68271w0;

    /* renamed from: x */
    public Format f68272x;

    /* renamed from: x0 */
    public boolean f68273x0;

    /* renamed from: y */
    public AbstractC24276c<C24283h> f68274y;

    /* renamed from: y0 */
    public boolean f68275y0;

    /* renamed from: z */
    public AbstractC24276c<C24283h> f68276z;

    /* renamed from: z0 */
    public boolean f68277z0;

    /* renamed from: q */
    public final C24265e f68258q = new C24265e(0);

    /* renamed from: r */
    public final C24265e f68260r = new C24265e(0);

    /* renamed from: s */
    public final C24769b0<Format> f68262s = new C24769b0<>();

    /* renamed from: t */
    public final ArrayList<Long> f68264t = new ArrayList<>();

    /* renamed from: u */
    public final MediaCodec.BufferInfo f68266u = new MediaCodec.BufferInfo();

    /* renamed from: o0 */
    public int f68255o0 = 0;

    /* renamed from: p0 */
    public int f68257p0 = 0;

    /* renamed from: q0 */
    public int f68259q0 = 0;

    /* renamed from: K */
    public float f68227K = -1.0f;

    /* renamed from: D */
    public float f68224D = 1.0f;

    /* renamed from: C */
    public long f68222C = -9223372036854775807L;

    /* renamed from: e.m.a.c.h1.f$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/h1/f$a.class */
    public static class C24448a extends Exception {

        /* renamed from: a */
        public final String f68278a;

        /* renamed from: b */
        public final boolean f68279b;

        /* renamed from: c */
        public final C24446e f68280c;

        /* renamed from: d */
        public final String f68281d;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C24448a(com.google.android.exoplayer2.Format r10, java.lang.Throwable r11, boolean r12, int r13) {
            /*
                r9 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r1.<init>()
                r14 = r0
                r0 = r14
                java.lang.String r1 = "Decoder init failed: ["
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r14
                r1 = r13
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r14
                java.lang.String r1 = "], "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r14
                r1 = r10
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r14
                java.lang.String r0 = r0.toString()
                r14 = r0
                r0 = r10
                java.lang.String r0 = r0.f4847i
                r15 = r0
                r0 = r13
                if (r0 >= 0) goto L40
                java.lang.String r0 = "neg_"
                r10 = r0
                goto L43
            L40:
                java.lang.String r0 = ""
                r10 = r0
            L43:
                java.lang.String r0 = "com.google.android.exoplayer2.mediacodec.MediaCodecRenderer_"
                r1 = r10
                java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8696K(r0, r1)
                r10 = r0
                r0 = r10
                r1 = r13
                int r1 = java.lang.Math.abs(r1)
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r14
                r2 = r11
                r3 = r15
                r4 = r12
                r5 = 0
                r6 = r10
                java.lang.String r6 = r6.toString()
                r7 = 0
                r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f.C24448a.<init>(com.google.android.exoplayer2.Format, java.lang.Throwable, boolean, int):void");
        }

        public C24448a(String str, Throwable th, String str2, boolean z, C24446e c24446e, String str3, C24448a c24448a) {
            super(str, th);
            this.f68278a = str2;
            this.f68279b = z;
            this.f68280c = c24446e;
            this.f68281d = str3;
        }
    }

    public AbstractC24447f(int i, AbstractC24449g abstractC24449g, AbstractC24279e<C24283h> abstractC24279e, boolean z, boolean z2, float f) {
        super(i);
        Objects.requireNonNull(abstractC24449g);
        this.f68248l = abstractC24449g;
        this.f68250m = abstractC24279e;
        this.f68252n = z;
        this.f68254o = z2;
        this.f68256p = f;
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: A */
    public void mo4415A() {
        try {
            mo4459g0();
            m5096l0(null);
            AbstractC24279e<C24283h> abstractC24279e = this.f68250m;
            if (abstractC24279e == null || !this.f68268v) {
                return;
            }
            this.f68268v = false;
            abstractC24279e.release();
        } catch (Throwable th) {
            m5096l0(null);
            throw th;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: F */
    public final int mo4410F(Format format) throws C24189b0 {
        try {
            return mo4457n0(this.f68248l, this.f68250m, format);
        } catch (C24451h.C24454c e) {
            throw m4406v(e, format);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: H */
    public final int mo4408H() {
        return 8;
    }

    /* renamed from: I */
    public abstract int mo4474I(MediaCodec mediaCodec, C24446e c24446e, Format format, Format format2);

    /* renamed from: J */
    public abstract void mo4472J(C24446e c24446e, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto, float f);

    /* renamed from: K */
    public final void m5111K() throws C24189b0 {
        if (this.f68261r0) {
            this.f68257p0 = 1;
            this.f68259q0 = 3;
            return;
        }
        mo4459g0();
        m5104W();
    }

    /* renamed from: L */
    public final void m5110L() throws C24189b0 {
        if (C24773d0.f69427a < 23) {
            m5111K();
        } else if (!this.f68261r0) {
            m5094p0();
        } else {
            this.f68257p0 = 1;
            this.f68259q0 = 2;
        }
    }

    /* renamed from: M */
    public final boolean m5109M(long j, long j2) throws C24189b0 {
        boolean z;
        int i;
        boolean z2;
        if (!(this.f68246j0 >= 0)) {
            if (!this.f68237U || !this.f68263s0) {
                i = this.f68225E.dequeueOutputBuffer(this.f68266u, 0L);
            } else {
                try {
                    i = this.f68225E.dequeueOutputBuffer(this.f68266u, 0L);
                } catch (IllegalStateException e) {
                    m5102d0();
                    if (!this.f68273x0) {
                        return false;
                    }
                    mo4459g0();
                    return false;
                }
            }
            if (i < 0) {
                if (i == -2) {
                    this.f68265t0 = true;
                    MediaFormat outputFormat = this.f68225E.getOutputFormat();
                    if (this.f68231O != 0 && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
                        this.f68240X = true;
                        return true;
                    }
                    if (this.f68238V) {
                        outputFormat.setInteger("channel-count", 1);
                    }
                    mo4463a0(this.f68225E, outputFormat);
                    return true;
                } else if (i == -3) {
                    if (C24773d0.f69427a >= 21) {
                        return true;
                    }
                    this.f68243g0 = this.f68225E.getOutputBuffers();
                    return true;
                } else if (!this.f68241Y) {
                    return false;
                } else {
                    if (!this.f68271w0 && this.f68257p0 != 2) {
                        return false;
                    }
                    m5102d0();
                    return false;
                }
            } else if (this.f68240X) {
                this.f68240X = false;
                this.f68225E.releaseOutputBuffer(i, false);
                return true;
            } else {
                MediaCodec.BufferInfo bufferInfo = this.f68266u;
                if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                    m5102d0();
                    return false;
                }
                this.f68246j0 = i;
                ByteBuffer outputBuffer = C24773d0.f69427a >= 21 ? this.f68225E.getOutputBuffer(i) : this.f68243g0[i];
                this.f68247k0 = outputBuffer;
                if (outputBuffer != null) {
                    outputBuffer.position(this.f68266u.offset);
                    ByteBuffer byteBuffer = this.f68247k0;
                    MediaCodec.BufferInfo bufferInfo2 = this.f68266u;
                    byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
                }
                long j3 = this.f68266u.presentationTimeUs;
                int size = this.f68264t.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        z2 = false;
                        break;
                    } else if (this.f68264t.get(i2).longValue() == j3) {
                        this.f68264t.remove(i2);
                        z2 = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                this.f68249l0 = z2;
                long j4 = this.f68269v0;
                long j5 = this.f68266u.presentationTimeUs;
                this.f68251m0 = j4 == j5;
                Format m4634e = this.f68262s.m4634e(j5);
                if (m4634e != null) {
                    this.f68272x = m4634e;
                }
            }
        }
        if (!this.f68237U || !this.f68263s0) {
            MediaCodec mediaCodec = this.f68225E;
            ByteBuffer byteBuffer2 = this.f68247k0;
            int i3 = this.f68246j0;
            MediaCodec.BufferInfo bufferInfo3 = this.f68266u;
            z = mo4460e0(j, j2, mediaCodec, byteBuffer2, i3, bufferInfo3.flags, bufferInfo3.presentationTimeUs, this.f68249l0, this.f68251m0, this.f68272x);
        } else {
            try {
                MediaCodec mediaCodec2 = this.f68225E;
                ByteBuffer byteBuffer3 = this.f68247k0;
                int i4 = this.f68246j0;
                MediaCodec.BufferInfo bufferInfo4 = this.f68266u;
                try {
                    z = mo4460e0(j, j2, mediaCodec2, byteBuffer3, i4, bufferInfo4.flags, bufferInfo4.presentationTimeUs, this.f68249l0, this.f68251m0, this.f68272x);
                } catch (IllegalStateException e2) {
                    m5102d0();
                    if (!this.f68273x0) {
                        return false;
                    }
                    mo4459g0();
                    return false;
                }
            } catch (IllegalStateException e3) {
            }
        }
        if (z) {
            mo4462b0(this.f68266u.presentationTimeUs);
            boolean z3 = (this.f68266u.flags & 4) != 0;
            m5098j0();
            if (!z3) {
                return true;
            }
            m5102d0();
            return false;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:96:0x0261 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0263  */
    /* renamed from: N */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m5108N() throws p193e.p1577m.p1578a.p1596c.C24189b0 {
        /*
            Method dump skipped, instructions count: 1036
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f.m5108N():boolean");
    }

    /* renamed from: O */
    public final boolean m5107O() throws C24189b0 {
        boolean mo4470P = mo4470P();
        if (mo4470P) {
            m5104W();
        }
        return mo4470P;
    }

    /* renamed from: P */
    public boolean mo4470P() {
        MediaCodec mediaCodec = this.f68225E;
        if (mediaCodec == null) {
            return false;
        }
        if (this.f68259q0 == 3 || this.f68234R || ((this.f68235S && !this.f68265t0) || (this.f68236T && this.f68263s0))) {
            mo4459g0();
            return true;
        }
        mediaCodec.flush();
        m5099i0();
        m5098j0();
        this.f68244h0 = -9223372036854775807L;
        this.f68263s0 = false;
        this.f68261r0 = false;
        this.f68277z0 = true;
        this.f68239W = false;
        this.f68240X = false;
        this.f68249l0 = false;
        this.f68251m0 = false;
        this.f68275y0 = false;
        this.f68264t.clear();
        this.f68267u0 = -9223372036854775807L;
        this.f68269v0 = -9223372036854775807L;
        this.f68257p0 = 0;
        this.f68259q0 = 0;
        this.f68255o0 = this.f68253n0 ? 1 : 0;
        return false;
    }

    /* renamed from: Q */
    public final List<C24446e> m5106Q(boolean z) throws C24451h.C24454c {
        List<C24446e> mo4467T = mo4467T(this.f68248l, this.f68270w, z);
        List<C24446e> list = mo4467T;
        if (mo4467T.isEmpty()) {
            list = mo4467T;
            if (z) {
                List<C24446e> mo4467T2 = mo4467T(this.f68248l, this.f68270w, false);
                list = mo4467T2;
                if (!mo4467T2.isEmpty()) {
                    StringBuilder m8728C = C22128a.m8728C("Drm session requires secure decoder for ");
                    m8728C.append(this.f68270w.f4847i);
                    m8728C.append(", but no secure decoder available. Trying to proceed with ");
                    m8728C.append(mo4467T2);
                    m8728C.append(StringConstant.DOT);
                    m8728C.toString();
                    list = mo4467T2;
                }
            }
        }
        return list;
    }

    /* renamed from: R */
    public boolean mo4469R() {
        return false;
    }

    /* renamed from: S */
    public abstract float mo4468S(float f, Format format, Format[] formatArr);

    /* renamed from: T */
    public abstract List<C24446e> mo4467T(AbstractC24449g abstractC24449g, Format format, boolean z) throws C24451h.C24454c;

    /* renamed from: U */
    public void mo4466U(C24265e c24265e) throws C24189b0 {
    }

    /* JADX WARN: Code restructure failed: missing block: B:95:0x0271, code lost:
        if ("stvm8".equals(r0) == false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0285, code lost:
        if ("OMX.amlogic.avc.decoder.awesome.secure".equals(r0) == false) goto L101;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0364  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03ee  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0259  */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    /* renamed from: V */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5105V(p193e.p1577m.p1578a.p1596c.p1612h1.C24446e r10, android.media.MediaCrypto r11) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 1030
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f.m5105V(e.m.a.c.h1.e, android.media.MediaCrypto):void");
    }

    /* renamed from: W */
    public final void m5104W() throws C24189b0 {
        if (this.f68225E != null || this.f68270w == null) {
            return;
        }
        m5097k0(this.f68276z);
        String str = this.f68270w.f4847i;
        AbstractC24276c<C24283h> abstractC24276c = this.f68274y;
        if (abstractC24276c != null) {
            if (this.f68218A == null) {
                if (abstractC24276c.mo5312c() != null) {
                    try {
                        MediaCrypto mediaCrypto = new MediaCrypto(null, null);
                        this.f68218A = mediaCrypto;
                        this.f68220B = mediaCrypto.requiresSecureDecoderComponent(str);
                    } catch (MediaCryptoException e) {
                        throw m4406v(e, this.f68270w);
                    }
                } else if (this.f68274y.mo5313b() == null) {
                    return;
                }
            }
            if (C24283h.f67330a) {
                int state = this.f68274y.getState();
                if (state == 1) {
                    throw m4406v(this.f68274y.mo5313b(), this.f68270w);
                }
                if (state != 4) {
                    return;
                }
            }
        }
        try {
            m5103X(this.f68218A, this.f68220B);
        } catch (C24448a e2) {
            throw m4406v(e2, this.f68270w);
        }
    }

    /* renamed from: X */
    public final void m5103X(MediaCrypto mediaCrypto, boolean z) throws C24448a {
        if (this.f68228L == null) {
            try {
                List<C24446e> m5106Q = m5106Q(z);
                ArrayDeque<C24446e> arrayDeque = new ArrayDeque<>();
                this.f68228L = arrayDeque;
                if (this.f68254o) {
                    arrayDeque.addAll(m5106Q);
                } else if (!m5106Q.isEmpty()) {
                    this.f68228L.add(m5106Q.get(0));
                }
                this.f68229M = null;
            } catch (C24451h.C24454c e) {
                throw new C24448a(this.f68270w, e, z, -49998);
            }
        }
        if (!this.f68228L.isEmpty()) {
            while (this.f68225E == null) {
                C24446e peekFirst = this.f68228L.peekFirst();
                if (!mo4458m0(peekFirst)) {
                    return;
                }
                try {
                    m5105V(peekFirst, mediaCrypto);
                } catch (Exception e2) {
                    C24789n.m4576a("Failed to initialize decoder: " + peekFirst, e2);
                    this.f68228L.removeFirst();
                    Format format = this.f68270w;
                    StringBuilder m8728C = C22128a.m8728C("Decoder init failed: ");
                    m8728C.append(peekFirst.f68209a);
                    m8728C.append(", ");
                    m8728C.append(format);
                    C24448a c24448a = new C24448a(m8728C.toString(), e2, format.f4847i, z, peekFirst, (C24773d0.f69427a < 21 || !(e2 instanceof MediaCodec.CodecException)) ? null : ((MediaCodec.CodecException) e2).getDiagnosticInfo(), null);
                    C24448a c24448a2 = this.f68229M;
                    if (c24448a2 == null) {
                        this.f68229M = c24448a;
                    } else {
                        this.f68229M = new C24448a(c24448a2.getMessage(), c24448a2.getCause(), c24448a2.f68278a, c24448a2.f68279b, c24448a2.f68280c, c24448a2.f68281d, c24448a);
                    }
                    if (this.f68228L.isEmpty()) {
                        throw this.f68229M;
                    }
                }
            }
            this.f68228L = null;
            return;
        }
        throw new C24448a(this.f68270w, null, z, -49999);
    }

    /* renamed from: Y */
    public abstract void mo4465Y(String str, long j, long j2);

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0117, code lost:
        if (r13 != false) goto L56;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo4464Z(p193e.p1577m.p1578a.p1596c.C24286g0 r7) throws p193e.p1577m.p1578a.p1596c.C24189b0 {
        /*
            Method dump skipped, instructions count: 557
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f.mo4464Z(e.m.a.c.g0):void");
    }

    /* renamed from: a0 */
    public abstract void mo4463a0(MediaCodec mediaCodec, MediaFormat mediaFormat) throws C24189b0;

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: b */
    public boolean mo4400b() {
        boolean z;
        if (this.f68270w != null && !this.f68275y0) {
            z = true;
            if (!(mo4397e() ? this.f69699j : this.f69695f.mo4911b())) {
                z = true;
                if (!(this.f68246j0 >= 0)) {
                    if (this.f68244h0 != -9223372036854775807L && SystemClock.elapsedRealtime() < this.f68244h0) {
                        z = true;
                    }
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: b0 */
    public abstract void mo4462b0(long j);

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: c */
    public boolean mo4399c() {
        return this.f68273x0;
    }

    /* renamed from: c0 */
    public abstract void mo4461c0(C24265e c24265e);

    /* renamed from: d0 */
    public final void m5102d0() throws C24189b0 {
        int i = this.f68259q0;
        if (i == 1) {
            m5107O();
        } else if (i == 2) {
            m5094p0();
        } else if (i != 3) {
            this.f68273x0 = true;
            mo5100h0();
        } else {
            mo4459g0();
            m5104W();
        }
    }

    /* renamed from: e0 */
    public abstract boolean mo4460e0(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z, boolean z2, Format format) throws C24189b0;

    /* renamed from: f0 */
    public final boolean m5101f0(boolean z) throws C24189b0 {
        C24286g0 m4405w = m4405w();
        this.f68260r.clear();
        int m4411E = m4411E(m4405w, this.f68260r, z);
        if (m4411E == -5) {
            mo4464Z(m4405w);
            return true;
        } else if (m4411E != -4 || !this.f68260r.isEndOfStream()) {
            return false;
        } else {
            this.f68271w0 = true;
            m5102d0();
            return false;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u, p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: g */
    public final void mo4396g(float f) throws C24189b0 {
        this.f68224D = f;
        if (this.f68225E == null || this.f68259q0 == 3 || this.f69694e == 0) {
            return;
        }
        m5095o0();
    }

    /* renamed from: g0 */
    public void mo4459g0() {
        this.f68228L = null;
        this.f68230N = null;
        this.f68226J = null;
        this.f68265t0 = false;
        m5099i0();
        m5098j0();
        if (C24773d0.f69427a < 21) {
            this.f68242Z = null;
            this.f68243g0 = null;
        }
        this.f68275y0 = false;
        this.f68244h0 = -9223372036854775807L;
        this.f68264t.clear();
        this.f68267u0 = -9223372036854775807L;
        this.f68269v0 = -9223372036854775807L;
        try {
            MediaCodec mediaCodec = this.f68225E;
            if (mediaCodec != null) {
                this.f68223C0.f67292b++;
                mediaCodec.stop();
                this.f68225E.release();
            }
            this.f68225E = null;
            try {
                MediaCrypto mediaCrypto = this.f68218A;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
            }
        } catch (Throwable th) {
            this.f68225E = null;
            try {
                MediaCrypto mediaCrypto2 = this.f68218A;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
            }
        }
    }

    /* renamed from: h0 */
    public void mo5100h0() throws C24189b0 {
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x008c A[EDGE_INSN: B:60:0x008c->B:33:0x008c ?: BREAK  , SYNTHETIC] */
    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo4394i(long r9, long r11) throws p193e.p1577m.p1578a.p1596c.C24189b0 {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24447f.mo4394i(long, long):void");
    }

    /* renamed from: i0 */
    public final void m5099i0() {
        this.f68245i0 = -1;
        this.f68258q.f67301b = null;
    }

    /* renamed from: j0 */
    public final void m5098j0() {
        this.f68246j0 = -1;
        this.f68247k0 = null;
    }

    /* renamed from: k0 */
    public final void m5097k0(AbstractC24276c<C24283h> abstractC24276c) {
        AbstractC24276c<C24283h> abstractC24276c2 = this.f68274y;
        if (abstractC24276c2 != abstractC24276c) {
            if (abstractC24276c != null) {
                abstractC24276c.mo5314a();
            }
            if (abstractC24276c2 != null) {
                abstractC24276c2.release();
            }
        }
        this.f68274y = abstractC24276c;
    }

    /* renamed from: l0 */
    public final void m5096l0(AbstractC24276c<C24283h> abstractC24276c) {
        AbstractC24276c<C24283h> abstractC24276c2 = this.f68276z;
        if (abstractC24276c2 != abstractC24276c) {
            if (abstractC24276c != null) {
                abstractC24276c.mo5314a();
            }
            if (abstractC24276c2 != null) {
                abstractC24276c2.release();
            }
        }
        this.f68276z = abstractC24276c;
    }

    /* renamed from: m0 */
    public boolean mo4458m0(C24446e c24446e) {
        return true;
    }

    /* renamed from: n0 */
    public abstract int mo4457n0(AbstractC24449g abstractC24449g, AbstractC24279e<C24283h> abstractC24279e, Format format) throws C24451h.C24454c;

    /* renamed from: o0 */
    public final void m5095o0() throws C24189b0 {
        if (C24773d0.f69427a < 23) {
            return;
        }
        float mo4468S = mo4468S(this.f68224D, this.f68226J, this.f69696g);
        float f = this.f68227K;
        if (f == mo4468S) {
            return;
        }
        if (mo4468S == -1.0f) {
            m5111K();
        } else if (f == -1.0f && mo4468S <= this.f68256p) {
        } else {
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", mo4468S);
            this.f68225E.setParameters(bundle);
            this.f68227K = mo4468S;
        }
    }

    /* renamed from: p0 */
    public final void m5094p0() throws C24189b0 {
        if (this.f68276z.mo5312c() == null) {
            mo4459g0();
            m5104W();
        } else if (C24854v.f69705e.equals(null)) {
            mo4459g0();
            m5104W();
        } else if (m5107O()) {
        } else {
            try {
                this.f68218A.setMediaDrmSession(null);
                m5097k0(this.f68276z);
                this.f68257p0 = 0;
                this.f68259q0 = 0;
            } catch (MediaCryptoException e) {
                throw m4406v(e, this.f68270w);
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: x */
    public void mo4404x() {
        this.f68270w = null;
        if (this.f68276z == null && this.f68274y == null) {
            mo4470P();
        } else {
            mo4415A();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: y */
    public void mo4403y(boolean z) throws C24189b0 {
        AbstractC24279e<C24283h> abstractC24279e = this.f68250m;
        if (abstractC24279e != null && !this.f68268v) {
            this.f68268v = true;
            abstractC24279e.mo5318a();
        }
        this.f68223C0 = new C24264d();
    }
}
