package com.google.android.exoplayer2.mediacodec;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import com.google.android.exoplayer2.AbstractC5415u;
import com.google.android.exoplayer2.C5090f0;
import com.google.android.exoplayer2.C5543v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.AbstractC5040k;
import com.google.android.exoplayer2.drm.C5038i;
import com.google.android.exoplayer2.drm.C5049o;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.p242b1.C4857d;
import com.google.android.exoplayer2.p242b1.C4858e;
import com.google.android.exoplayer2.util.C5507d0;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5511f0;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5531s;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecRenderer.class */
public abstract class MediaCodecRenderer extends AbstractC5415u {

    /* renamed from: o */
    private static final byte[] f15991o = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};

    /* renamed from: A */
    private Format f15992A;

    /* renamed from: B */
    private Format f15993B;

    /* renamed from: C */
    private DrmSession<C5049o> f15994C;

    /* renamed from: D */
    private DrmSession<C5049o> f15995D;

    /* renamed from: E */
    private MediaCrypto f15996E;

    /* renamed from: F */
    private boolean f15997F;

    /* renamed from: I */
    private MediaCodec f16000I;

    /* renamed from: J */
    private Format f16001J;

    /* renamed from: L */
    private ArrayDeque<C5115e> f16003L;

    /* renamed from: M */
    private DecoderInitializationException f16004M;

    /* renamed from: N */
    private C5115e f16005N;

    /* renamed from: O */
    private int f16006O;

    /* renamed from: P */
    private boolean f16007P;

    /* renamed from: Q */
    private boolean f16008Q;

    /* renamed from: R */
    private boolean f16009R;

    /* renamed from: S */
    private boolean f16010S;

    /* renamed from: T */
    private boolean f16011T;

    /* renamed from: U */
    private boolean f16012U;

    /* renamed from: V */
    private boolean f16013V;

    /* renamed from: W */
    private boolean f16014W;

    /* renamed from: X */
    private boolean f16015X;

    /* renamed from: Y */
    private ByteBuffer[] f16016Y;

    /* renamed from: Z */
    private ByteBuffer[] f16017Z;

    /* renamed from: a0 */
    private long f16018a0;

    /* renamed from: b0 */
    private int f16019b0;

    /* renamed from: c0 */
    private int f16020c0;

    /* renamed from: d0 */
    private ByteBuffer f16021d0;

    /* renamed from: e0 */
    private boolean f16022e0;

    /* renamed from: f0 */
    private boolean f16023f0;

    /* renamed from: g0 */
    private boolean f16024g0;

    /* renamed from: k0 */
    private boolean f16028k0;

    /* renamed from: l0 */
    private boolean f16029l0;

    /* renamed from: m0 */
    private long f16030m0;

    /* renamed from: n0 */
    private long f16031n0;

    /* renamed from: o0 */
    private boolean f16032o0;

    /* renamed from: p */
    private final AbstractC5116f f16033p;

    /* renamed from: p0 */
    private boolean f16034p0;

    /* renamed from: q */
    private final AbstractC5040k<C5049o> f16035q;

    /* renamed from: q0 */
    private boolean f16036q0;

    /* renamed from: r */
    private final boolean f16037r;

    /* renamed from: r0 */
    private boolean f16038r0;

    /* renamed from: s */
    private final boolean f16039s;

    /* renamed from: s0 */
    private boolean f16040s0;

    /* renamed from: t */
    private final float f16041t;

    /* renamed from: t0 */
    private boolean f16042t0;

    /* renamed from: u0 */
    private boolean f16044u0;

    /* renamed from: v0 */
    protected C4857d f16046v0;

    /* renamed from: z */
    private boolean f16050z;

    /* renamed from: u */
    private final C4858e f16043u = new C4858e(0);

    /* renamed from: v */
    private final C4858e f16045v = C4858e.m21424l();

    /* renamed from: w */
    private final C5507d0<Format> f16047w = new C5507d0<>();

    /* renamed from: x */
    private final ArrayList<Long> f16048x = new ArrayList<>();

    /* renamed from: y */
    private final MediaCodec.BufferInfo f16049y = new MediaCodec.BufferInfo();

    /* renamed from: h0 */
    private int f16025h0 = 0;

    /* renamed from: i0 */
    private int f16026i0 = 0;

    /* renamed from: j0 */
    private int f16027j0 = 0;

    /* renamed from: K */
    private float f16002K = -1.0f;

    /* renamed from: H */
    private float f15999H = 1.0f;

    /* renamed from: G */
    private long f15998G = -9223372036854775807L;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderException.class */
    public static class DecoderException extends Exception {
        public final C5115e codecInfo;
        public final String diagnosticInfo;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public DecoderException(java.lang.Throwable r5, com.google.android.exoplayer2.mediacodec.C5115e r6) {
            /*
                r4 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r1.<init>()
                r7 = r0
                r0 = r7
                java.lang.String r1 = "Decoder failed: "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = 0
                r8 = r0
                r0 = r6
                if (r0 != 0) goto L1c
                r0 = 0
                r9 = r0
                goto L22
            L1c:
                r0 = r6
                java.lang.String r0 = r0.f16072a
                r9 = r0
            L22:
                r0 = r7
                r1 = r9
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r4
                r1 = r7
                java.lang.String r1 = r1.toString()
                r2 = r5
                r0.<init>(r1, r2)
                r0 = r4
                r1 = r6
                r0.codecInfo = r1
                r0 = r8
                r6 = r0
                int r0 = com.google.android.exoplayer2.util.C5515h0.f17876a
                r1 = 21
                if (r0 < r1) goto L47
                r0 = r5
                java.lang.String r0 = m20466a(r0)
                r6 = r0
            L47:
                r0 = r4
                r1 = r6
                r0.diagnosticInfo = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderException.<init>(java.lang.Throwable, com.google.android.exoplayer2.mediacodec.e):void");
        }

        @TargetApi(21)
        /* renamed from: a */
        private static String m20466a(Throwable th) {
            if (th instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException.class */
    public static class DecoderInitializationException extends Exception {
        public final C5115e codecInfo;
        public final String diagnosticInfo;
        public final DecoderInitializationException fallbackDecoderInitializationException;
        public final String mimeType;
        public final boolean secureDecoderRequired;

        public DecoderInitializationException(Format format, Throwable th, boolean z, int i) {
            this("Decoder init failed: [" + i + "], " + format, th, format.f14461l, z, null, m20465a(i), null);
        }

        public DecoderInitializationException(Format format, Throwable th, boolean z, C5115e c5115e) {
            this("Decoder init failed: " + c5115e.f16072a + ", " + format, th, format.f14461l, z, c5115e, C5515h0.f17876a >= 21 ? m20463c(th) : null, null);
        }

        private DecoderInitializationException(String str, Throwable th, String str2, boolean z, C5115e c5115e, String str3, DecoderInitializationException decoderInitializationException) {
            super(str, th);
            this.mimeType = str2;
            this.secureDecoderRequired = z;
            this.codecInfo = c5115e;
            this.diagnosticInfo = str3;
            this.fallbackDecoderInitializationException = decoderInitializationException;
        }

        /* renamed from: a */
        private static String m20465a(int i) {
            String str = i < 0 ? "neg_" : "";
            return "com.google.android.exoplayer2.mediacodec.MediaCodecRenderer_" + str + Math.abs(i);
        }

        /* renamed from: b */
        public DecoderInitializationException m20464b(DecoderInitializationException decoderInitializationException) {
            return new DecoderInitializationException(getMessage(), getCause(), this.mimeType, this.secureDecoderRequired, this.codecInfo, this.diagnosticInfo, decoderInitializationException);
        }

        @TargetApi(21)
        /* renamed from: c */
        private static String m20463c(Throwable th) {
            if (th instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }
    }

    public MediaCodecRenderer(int i, AbstractC5116f abstractC5116f, AbstractC5040k<C5049o> abstractC5040k, boolean z, boolean z2, float f) {
        super(i);
        this.f16033p = (AbstractC5116f) C5508e.m18911e(abstractC5116f);
        this.f16035q = abstractC5040k;
        this.f16037r = z;
        this.f16039s = z2;
        this.f16041t = f;
    }

    /* renamed from: A0 */
    private static boolean m20513A0(DrmSession<C5049o> drmSession, Format format) {
        C5049o mo20765e = drmSession.mo20765e();
        if (mo20765e == null) {
            return true;
        }
        if (mo20765e.f15723d) {
            return false;
        }
        try {
            MediaCrypto mediaCrypto = new MediaCrypto(mo20765e.f15721b, mo20765e.f15722c);
            try {
                return mediaCrypto.requiresSecureDecoderComponent(format.f14461l);
            } finally {
                mediaCrypto.release();
            }
        } catch (MediaCryptoException e) {
            return true;
        }
    }

    /* renamed from: G0 */
    private void m20512G0() {
        int i = this.f16027j0;
        if (i == 1) {
            m20482f0();
        } else if (i == 2) {
            m20489Z0();
        } else if (i == 3) {
            m20508L0();
        } else {
            this.f16034p0 = true;
            mo20507N0();
        }
    }

    /* renamed from: I0 */
    private void m20511I0() {
        if (C5515h0.f17876a < 21) {
            this.f16017Z = this.f16000I.getOutputBuffers();
        }
    }

    /* renamed from: J0 */
    private void m20510J0() {
        MediaFormat outputFormat = this.f16000I.getOutputFormat();
        if (this.f16006O != 0 && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
            this.f16014W = true;
            return;
        }
        if (this.f16012U) {
            outputFormat.setInteger("channel-count", 1);
        }
        mo18612D0(this.f16000I, outputFormat);
    }

    /* renamed from: K0 */
    private boolean m20509K0(boolean z) {
        C5090f0 m19269B = m19269B();
        this.f16045v.clear();
        int m19264N = m19264N(m19269B, this.f16045v, z);
        if (m19264N == -5) {
            mo18614C0(m19269B);
            return true;
        } else if (m19264N != -4 || !this.f16045v.isEndOfStream()) {
            return false;
        } else {
            this.f16032o0 = true;
            m20512G0();
            return false;
        }
    }

    /* renamed from: L0 */
    private void m20508L0() {
        mo18595M0();
        m20468y0();
    }

    /* renamed from: O0 */
    private void m20506O0() {
        if (C5515h0.f17876a < 21) {
            this.f16016Y = null;
            this.f16017Z = null;
        }
    }

    /* renamed from: P0 */
    private void m20505P0() {
        this.f16019b0 = -1;
        this.f16043u.f14775e = null;
    }

    /* renamed from: Q0 */
    private void m20504Q0() {
        this.f16020c0 = -1;
        this.f16021d0 = null;
    }

    /* renamed from: R */
    private int m20503R(String str) {
        int i = C5515h0.f17876a;
        if (i <= 25 && "OMX.Exynos.avc.dec.secure".equals(str)) {
            String str2 = C5515h0.f17879d;
            if (str2.startsWith("SM-T585") || str2.startsWith("SM-A510") || str2.startsWith("SM-A520") || str2.startsWith("SM-J700")) {
                return 2;
            }
        }
        if (i < 24) {
            if (!"OMX.Nvidia.h264.decode".equals(str) && !"OMX.Nvidia.h264.decode.secure".equals(str)) {
                return 0;
            }
            String str3 = C5515h0.f17877b;
            return ("flounder".equals(str3) || "flounder_lte".equals(str3) || "grouper".equals(str3) || "tilapia".equals(str3)) ? 1 : 0;
        }
        return 0;
    }

    /* renamed from: R0 */
    private void m20502R0(DrmSession<C5049o> drmSession) {
        C5038i.m20780a(this.f15994C, drmSession);
        this.f15994C = drmSession;
    }

    /* renamed from: S */
    private static boolean m20501S(String str, Format format) {
        return C5515h0.f17876a < 21 && format.f14463n.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002f, code lost:
        if ("stvm8".equals(r0) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0043, code lost:
        if ("OMX.amlogic.avc.decoder.awesome.secure".equals(r3) == false) goto L17;
     */
    /* renamed from: T */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m20499T(java.lang.String r3) {
        /*
            int r0 = com.google.android.exoplayer2.util.C5515h0.f17876a
            r4 = r0
            r0 = r4
            r1 = 23
            if (r0 > r1) goto L14
            java.lang.String r0 = "OMX.google.vorbis.decoder"
            r1 = r3
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L46
        L14:
            r0 = r4
            r1 = 19
            if (r0 > r1) goto L4b
            java.lang.String r0 = com.google.android.exoplayer2.util.C5515h0.f17877b
            r5 = r0
            java.lang.String r0 = "hb2000"
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L32
            java.lang.String r0 = "stvm8"
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4b
        L32:
            java.lang.String r0 = "OMX.amlogic.avc.decoder.awesome"
            r1 = r3
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L46
            java.lang.String r0 = "OMX.amlogic.avc.decoder.awesome.secure"
            r1 = r3
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4b
        L46:
            r0 = 1
            r6 = r0
            goto L4d
        L4b:
            r0 = 0
            r6 = r0
        L4d:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.m20499T(java.lang.String):boolean");
    }

    /* renamed from: T0 */
    private void m20498T0(DrmSession<C5049o> drmSession) {
        C5038i.m20780a(this.f15995D, drmSession);
        this.f15995D = drmSession;
    }

    /* renamed from: U */
    private static boolean m20497U(String str) {
        return C5515h0.f17876a == 21 && "OMX.google.aac.decoder".equals(str);
    }

    /* renamed from: U0 */
    private boolean m20496U0(long j) {
        return this.f15998G == -9223372036854775807L || SystemClock.elapsedRealtime() - j < this.f15998G;
    }

    /* renamed from: V */
    private static boolean m20495V(C5115e c5115e) {
        String str = c5115e.f16072a;
        int i = C5515h0.f17876a;
        return (i <= 25 && "OMX.rk.video_decoder.avc".equals(str)) || (i <= 17 && "OMX.allwinner.video.decoder.avc".equals(str)) || ("Amazon".equals(C5515h0.f17878c) && "AFTS".equals(C5515h0.f17879d) && c5115e.f16078g);
    }

    /* renamed from: W */
    private static boolean m20494W(String str) {
        int i = C5515h0.f17876a;
        return i < 18 || (i == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (i == 19 && C5515h0.f17879d.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
    }

    /* renamed from: W0 */
    private boolean m20493W0(boolean z) {
        DrmSession<C5049o> drmSession = this.f15994C;
        if (drmSession != null) {
            if (!z && (this.f16037r || drmSession.mo20767c())) {
                return false;
            }
            int state = this.f15994C.getState();
            if (state == 1) {
                throw m19244z(this.f15994C.mo20764f(), this.f15992A);
            }
            boolean z2 = false;
            if (state != 4) {
                z2 = true;
            }
            return z2;
        }
        return false;
    }

    /* renamed from: X */
    private static boolean m20492X(String str, Format format) {
        boolean z = true;
        if (C5515h0.f17876a > 18 || format.f14474y != 1 || !"OMX.MTK.AUDIO.DECODER.MP3".equals(str)) {
            z = false;
        }
        return z;
    }

    /* renamed from: Y */
    private static boolean m20491Y(String str) {
        return C5515h0.f17879d.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str);
    }

    /* renamed from: Y0 */
    private void m20490Y0() {
        if (C5515h0.f17876a < 23) {
            return;
        }
        float mo18577m0 = mo18577m0(this.f15999H, this.f16001J, m19267D());
        float f = this.f16002K;
        if (f == mo18577m0) {
            return;
        }
        if (mo18577m0 == -1.0f) {
            m20486b0();
        } else if (f == -1.0f && mo18577m0 <= this.f16041t) {
        } else {
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", mo18577m0);
            this.f16000I.setParameters(bundle);
            this.f16002K = mo18577m0;
        }
    }

    @TargetApi(23)
    /* renamed from: Z0 */
    private void m20489Z0() {
        C5049o mo20765e = this.f15995D.mo20765e();
        if (mo20765e == null) {
            m20508L0();
        } else if (C5543v.f17964e.equals(mo20765e.f15721b)) {
            m20508L0();
        } else if (m20482f0()) {
        } else {
            try {
                this.f15996E.setMediaDrmSession(mo20765e.f15722c);
                m20502R0(this.f15995D);
                this.f16026i0 = 0;
                this.f16027j0 = 0;
            } catch (MediaCryptoException e) {
                throw m19244z(e, this.f15992A);
            }
        }
    }

    /* renamed from: a0 */
    private void m20488a0() {
        if (this.f16028k0) {
            this.f16026i0 = 1;
            this.f16027j0 = 1;
        }
    }

    /* renamed from: b0 */
    private void m20486b0() {
        if (!this.f16028k0) {
            m20508L0();
            return;
        }
        this.f16026i0 = 1;
        this.f16027j0 = 3;
    }

    /* renamed from: c0 */
    private void m20485c0() {
        if (C5515h0.f17876a < 23) {
            m20486b0();
        } else if (!this.f16028k0) {
            m20489Z0();
        } else {
            this.f16026i0 = 1;
            this.f16027j0 = 2;
        }
    }

    /* renamed from: d0 */
    private boolean m20484d0(long j, long j2) {
        boolean z;
        int i;
        if (!m20473t0()) {
            if (!this.f16011T || !this.f16029l0) {
                i = this.f16000I.dequeueOutputBuffer(this.f16049y, m20477o0());
            } else {
                try {
                    i = this.f16000I.dequeueOutputBuffer(this.f16049y, m20477o0());
                } catch (IllegalStateException e) {
                    m20512G0();
                    if (!this.f16034p0) {
                        return false;
                    }
                    mo18595M0();
                    return false;
                }
            }
            if (i < 0) {
                if (i == -2) {
                    m20510J0();
                    return true;
                } else if (i == -3) {
                    m20511I0();
                    return true;
                } else if (!this.f16015X) {
                    return false;
                } else {
                    if (!this.f16032o0 && this.f16026i0 != 2) {
                        return false;
                    }
                    m20512G0();
                    return false;
                }
            } else if (this.f16014W) {
                this.f16014W = false;
                this.f16000I.releaseOutputBuffer(i, false);
                return true;
            } else {
                MediaCodec.BufferInfo bufferInfo = this.f16049y;
                if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                    m20512G0();
                    return false;
                }
                this.f16020c0 = i;
                ByteBuffer m20474r0 = m20474r0(i);
                this.f16021d0 = m20474r0;
                if (m20474r0 != null) {
                    m20474r0.position(this.f16049y.offset);
                    ByteBuffer byteBuffer = this.f16021d0;
                    MediaCodec.BufferInfo bufferInfo2 = this.f16049y;
                    byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
                }
                this.f16022e0 = m20471v0(this.f16049y.presentationTimeUs);
                long j3 = this.f16031n0;
                long j4 = this.f16049y.presentationTimeUs;
                this.f16023f0 = j3 == j4;
                m20487a1(j4);
            }
        }
        if (!this.f16011T || !this.f16029l0) {
            MediaCodec mediaCodec = this.f16000I;
            ByteBuffer byteBuffer2 = this.f16021d0;
            int i2 = this.f16020c0;
            MediaCodec.BufferInfo bufferInfo3 = this.f16049y;
            z = mo18604H0(j, j2, mediaCodec, byteBuffer2, i2, bufferInfo3.flags, bufferInfo3.presentationTimeUs, this.f16022e0, this.f16023f0, this.f15993B);
        } else {
            try {
                MediaCodec mediaCodec2 = this.f16000I;
                ByteBuffer byteBuffer3 = this.f16021d0;
                int i3 = this.f16020c0;
                MediaCodec.BufferInfo bufferInfo4 = this.f16049y;
                try {
                    z = mo18604H0(j, j2, mediaCodec2, byteBuffer3, i3, bufferInfo4.flags, bufferInfo4.presentationTimeUs, this.f16022e0, this.f16023f0, this.f15993B);
                } catch (IllegalStateException e2) {
                    m20512G0();
                    if (!this.f16034p0) {
                        return false;
                    }
                    mo18595M0();
                    return false;
                }
            } catch (IllegalStateException e3) {
            }
        }
        if (z) {
            mo18610E0(this.f16049y.presentationTimeUs);
            boolean z2 = (this.f16049y.flags & 4) != 0;
            m20504Q0();
            if (!z2) {
                return true;
            }
            m20512G0();
            return false;
        }
        return false;
    }

    /* renamed from: e0 */
    private boolean m20483e0() {
        int i;
        int i2;
        MediaCodec mediaCodec = this.f16000I;
        if (mediaCodec == null || this.f16026i0 == 2 || this.f16032o0) {
            return false;
        }
        if (this.f16019b0 < 0) {
            int dequeueInputBuffer = mediaCodec.dequeueInputBuffer(0L);
            this.f16019b0 = dequeueInputBuffer;
            if (dequeueInputBuffer < 0) {
                return false;
            }
            this.f16043u.f14775e = m20475q0(dequeueInputBuffer);
            this.f16043u.clear();
        }
        if (this.f16026i0 == 1) {
            if (!this.f16015X) {
                this.f16029l0 = true;
                this.f16000I.queueInputBuffer(this.f16019b0, 0, 0, 0L, 4);
                m20505P0();
            }
            this.f16026i0 = 2;
            return false;
        } else if (this.f16013V) {
            this.f16013V = false;
            ByteBuffer byteBuffer = this.f16043u.f14775e;
            byte[] bArr = f15991o;
            byteBuffer.put(bArr);
            this.f16000I.queueInputBuffer(this.f16019b0, 0, bArr.length, 0L, 0);
            m20505P0();
            this.f16028k0 = true;
            return true;
        } else {
            C5090f0 m19269B = m19269B();
            if (this.f16036q0) {
                i = -4;
                i2 = 0;
            } else {
                if (this.f16025h0 == 1) {
                    for (int i3 = 0; i3 < this.f16001J.f14463n.size(); i3++) {
                        this.f16043u.f14775e.put(this.f16001J.f14463n.get(i3));
                    }
                    this.f16025h0 = 2;
                }
                i2 = this.f16043u.f14775e.position();
                i = m19264N(m19269B, this.f16043u, false);
            }
            if (mo19257j()) {
                this.f16031n0 = this.f16030m0;
            }
            if (i == -3) {
                return false;
            }
            if (i == -5) {
                if (this.f16025h0 == 2) {
                    this.f16043u.clear();
                    this.f16025h0 = 1;
                }
                mo18614C0(m19269B);
                return true;
            } else if (this.f16043u.isEndOfStream()) {
                if (this.f16025h0 == 2) {
                    this.f16043u.clear();
                    this.f16025h0 = 1;
                }
                this.f16032o0 = true;
                if (!this.f16028k0) {
                    m20512G0();
                    return false;
                }
                try {
                    if (this.f16015X) {
                        return false;
                    }
                    this.f16029l0 = true;
                    this.f16000I.queueInputBuffer(this.f16019b0, 0, 0, 0L, 4);
                    m20505P0();
                    return false;
                } catch (MediaCodec.CryptoException e) {
                    throw m19244z(e, this.f15992A);
                }
            } else if (this.f16038r0 && !this.f16043u.isKeyFrame()) {
                this.f16043u.clear();
                if (this.f16025h0 != 2) {
                    return true;
                }
                this.f16025h0 = 1;
                return true;
            } else {
                this.f16038r0 = false;
                boolean m21426j = this.f16043u.m21426j();
                boolean m20493W0 = m20493W0(m21426j);
                this.f16036q0 = m20493W0;
                if (m20493W0) {
                    return false;
                }
                if (this.f16008Q && !m21426j) {
                    C5531s.m18721b(this.f16043u.f14775e);
                    if (this.f16043u.f14775e.position() == 0) {
                        return true;
                    }
                    this.f16008Q = false;
                }
                try {
                    C4858e c4858e = this.f16043u;
                    long j = c4858e.f14776f;
                    if (c4858e.isDecodeOnly()) {
                        this.f16048x.add(Long.valueOf(j));
                    }
                    if (this.f16040s0) {
                        this.f16047w.m18924a(j, this.f15992A);
                        this.f16040s0 = false;
                    }
                    this.f16030m0 = Math.max(this.f16030m0, j);
                    this.f16043u.m21427i();
                    if (this.f16043u.hasSupplementalData()) {
                        mo18569s0(this.f16043u);
                    }
                    mo18608F0(this.f16043u);
                    if (m21426j) {
                        this.f16000I.queueSecureInputBuffer(this.f16019b0, 0, m20476p0(this.f16043u, i2), j, 0);
                    } else {
                        this.f16000I.queueInputBuffer(this.f16019b0, 0, this.f16043u.f14775e.limit(), j, 0);
                    }
                    m20505P0();
                    this.f16028k0 = true;
                    this.f16025h0 = 0;
                    this.f16046v0.f14767c++;
                    return true;
                } catch (MediaCodec.CryptoException e2) {
                    throw m19244z(e2, this.f15992A);
                }
            }
        }
    }

    /* renamed from: h0 */
    private List<C5115e> m20481h0(boolean z) {
        List<C5115e> mo18575n0 = mo18575n0(this.f16033p, this.f15992A, z);
        List<C5115e> list = mo18575n0;
        if (mo18575n0.isEmpty()) {
            list = mo18575n0;
            if (z) {
                List<C5115e> mo18575n02 = mo18575n0(this.f16033p, this.f15992A, false);
                list = mo18575n02;
                if (!mo18575n02.isEmpty()) {
                    C5526o.m18742f("MediaCodecRenderer", "Drm session requires secure decoder for " + this.f15992A.f14461l + ", but no secure decoder available. Trying to proceed with " + mo18575n02 + ".");
                    list = mo18575n02;
                }
            }
        }
        return list;
    }

    /* renamed from: j0 */
    private void m20479j0(MediaCodec mediaCodec) {
        if (C5515h0.f17876a < 21) {
            this.f16016Y = mediaCodec.getInputBuffers();
            this.f16017Z = mediaCodec.getOutputBuffers();
        }
    }

    /* renamed from: p0 */
    private static MediaCodec.CryptoInfo m20476p0(C4858e c4858e, int i) {
        MediaCodec.CryptoInfo m21434a = c4858e.f14774d.m21434a();
        if (i == 0) {
            return m21434a;
        }
        if (m21434a.numBytesOfClearData == null) {
            m21434a.numBytesOfClearData = new int[1];
        }
        int[] iArr = m21434a.numBytesOfClearData;
        iArr[0] = iArr[0] + i;
        return m21434a;
    }

    /* renamed from: q0 */
    private ByteBuffer m20475q0(int i) {
        return C5515h0.f17876a >= 21 ? this.f16000I.getInputBuffer(i) : this.f16016Y[i];
    }

    /* renamed from: r0 */
    private ByteBuffer m20474r0(int i) {
        return C5515h0.f17876a >= 21 ? this.f16000I.getOutputBuffer(i) : this.f16017Z[i];
    }

    /* renamed from: t0 */
    private boolean m20473t0() {
        return this.f16020c0 >= 0;
    }

    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* renamed from: u0 */
    private void m20472u0(C5115e c5115e, MediaCrypto mediaCrypto) {
        MediaCodec mediaCodec;
        Exception e;
        String str = c5115e.f16072a;
        float mo18577m0 = C5515h0.f17876a < 23 ? -1.0f : mo18577m0(this.f15999H, this.f15992A, m19267D());
        if (mo18577m0 <= this.f16041t) {
            mo18577m0 = -1.0f;
        }
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            C5511f0.m18893a("createCodec:" + str);
            MediaCodec createByCodecName = MediaCodec.createByCodecName(str);
            try {
                C5511f0.m18891c();
                C5511f0.m18893a("configureCodec");
                mo18591Z(c5115e, createByCodecName, this.f15992A, mediaCrypto, mo18577m0);
                C5511f0.m18891c();
                C5511f0.m18893a("startCodec");
                createByCodecName.start();
                C5511f0.m18891c();
                long elapsedRealtime2 = SystemClock.elapsedRealtime();
                m20479j0(createByCodecName);
                this.f16000I = createByCodecName;
                this.f16005N = c5115e;
                this.f16002K = mo18577m0;
                this.f16001J = this.f15992A;
                this.f16006O = m20503R(str);
                this.f16007P = m20491Y(str);
                this.f16008Q = m20501S(str, this.f16001J);
                this.f16009R = m20494W(str);
                this.f16010S = m20499T(str);
                this.f16011T = m20497U(str);
                this.f16012U = m20492X(str, this.f16001J);
                this.f16015X = m20495V(c5115e) || mo18579l0();
                m20505P0();
                m20504Q0();
                this.f16018a0 = getState() == 2 ? SystemClock.elapsedRealtime() + 1000 : (char) 1;
                this.f16024g0 = false;
                this.f16025h0 = 0;
                this.f16029l0 = false;
                this.f16028k0 = false;
                this.f16030m0 = -9223372036854775807L;
                this.f16031n0 = -9223372036854775807L;
                this.f16026i0 = 0;
                this.f16027j0 = 0;
                this.f16013V = false;
                this.f16014W = false;
                this.f16022e0 = false;
                this.f16023f0 = false;
                this.f16038r0 = true;
                this.f16046v0.f14765a++;
                mo18616B0(str, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
            } catch (Exception e2) {
                e = e2;
                mediaCodec = createByCodecName;
                if (mediaCodec != null) {
                    m20506O0();
                    mediaCodec.release();
                }
                throw e;
            }
        } catch (Exception e3) {
            e = e3;
            mediaCodec = null;
        }
    }

    /* renamed from: v0 */
    private boolean m20471v0(long j) {
        int size = this.f16048x.size();
        for (int i = 0; i < size; i++) {
            if (this.f16048x.get(i).longValue() == j) {
                this.f16048x.remove(i);
                return true;
            }
        }
        return false;
    }

    /* renamed from: w0 */
    private static boolean m20470w0(IllegalStateException illegalStateException) {
        boolean z = true;
        if (C5515h0.f17876a < 21 || !m20469x0(illegalStateException)) {
            StackTraceElement[] stackTrace = illegalStateException.getStackTrace();
            if (stackTrace.length <= 0 || !stackTrace[0].getClassName().equals("android.media.MediaCodec")) {
                z = false;
            }
            return z;
        }
        return true;
    }

    @TargetApi(21)
    /* renamed from: x0 */
    private static boolean m20469x0(IllegalStateException illegalStateException) {
        return illegalStateException instanceof MediaCodec.CodecException;
    }

    /* renamed from: z0 */
    private void m20467z0(MediaCrypto mediaCrypto, boolean z) {
        if (this.f16003L == null) {
            try {
                List<C5115e> m20481h0 = m20481h0(z);
                ArrayDeque<C5115e> arrayDeque = new ArrayDeque<>();
                this.f16003L = arrayDeque;
                if (this.f16039s) {
                    arrayDeque.addAll(m20481h0);
                } else if (!m20481h0.isEmpty()) {
                    this.f16003L.add(m20481h0.get(0));
                }
                this.f16004M = null;
            } catch (MediaCodecUtil.DecoderQueryException e) {
                throw new DecoderInitializationException(this.f15992A, e, z, -49998);
            }
        }
        if (!this.f16003L.isEmpty()) {
            while (this.f16000I == null) {
                C5115e peekFirst = this.f16003L.peekFirst();
                if (!mo18593V0(peekFirst)) {
                    return;
                }
                try {
                    m20472u0(peekFirst, mediaCrypto);
                } catch (Exception e2) {
                    C5526o.m18741g("MediaCodecRenderer", "Failed to initialize decoder: " + peekFirst, e2);
                    this.f16003L.removeFirst();
                    DecoderInitializationException decoderInitializationException = new DecoderInitializationException(this.f15992A, e2, z, peekFirst);
                    if (this.f16004M == null) {
                        this.f16004M = decoderInitializationException;
                    } else {
                        this.f16004M = this.f16004M.m20464b(decoderInitializationException);
                    }
                    if (this.f16003L.isEmpty()) {
                        throw this.f16004M;
                    }
                }
            }
            this.f16003L = null;
            return;
        }
        throw new DecoderInitializationException(this.f15992A, (Throwable) null, z, -49999);
    }

    /* renamed from: B0 */
    protected abstract void mo18616B0(String str, long j, long j2);

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: C0 */
    public void mo18614C0(C5090f0 c5090f0) {
        this.f16040s0 = true;
        Format format = (Format) C5508e.m18911e(c5090f0.f15930c);
        if (c5090f0.f15928a) {
            m20498T0(c5090f0.f15929b);
        } else {
            this.f15995D = m19266E(this.f15992A, format, this.f16035q, this.f15995D);
        }
        this.f15992A = format;
        if (this.f16000I == null) {
            m20468y0();
            return;
        }
        DrmSession<C5049o> drmSession = this.f15995D;
        if ((drmSession == null && this.f15994C != null) || ((drmSession != null && this.f15994C == null) || ((drmSession != this.f15994C && !this.f16005N.f16078g && m20513A0(drmSession, format)) || (C5515h0.f17876a < 23 && this.f15995D != this.f15994C)))) {
            m20486b0();
            return;
        }
        int mo18594Q = mo18594Q(this.f16000I, this.f16005N, this.f16001J, format);
        if (mo18594Q == 0) {
            m20486b0();
        } else if (mo18594Q == 1) {
            this.f16001J = format;
            m20490Y0();
            if (this.f15995D != this.f15994C) {
                m20485c0();
            } else {
                m20488a0();
            }
        } else if (mo18594Q != 2) {
            if (mo18594Q != 3) {
                throw new IllegalStateException();
            }
            this.f16001J = format;
            m20490Y0();
            if (this.f15995D == this.f15994C) {
                return;
            }
            m20485c0();
        } else if (this.f16007P) {
            m20486b0();
        } else {
            this.f16024g0 = true;
            this.f16025h0 = 1;
            int i = this.f16006O;
            boolean z = true;
            if (i != 2) {
                if (i == 1) {
                    int i2 = format.f14466q;
                    Format format2 = this.f16001J;
                    if (i2 == format2.f14466q && format.f14467r == format2.f14467r) {
                        z = true;
                    }
                }
                z = false;
            }
            this.f16013V = z;
            this.f16001J = format;
            m20490Y0();
            if (this.f15995D == this.f15994C) {
                return;
            }
            m20485c0();
        }
    }

    /* renamed from: D0 */
    protected abstract void mo18612D0(MediaCodec mediaCodec, MediaFormat mediaFormat);

    /* renamed from: E0 */
    protected abstract void mo18610E0(long j);

    /* renamed from: F0 */
    protected abstract void mo18608F0(C4858e c4858e);

    @Override // com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: G */
    public void mo18512G() {
        this.f15992A = null;
        if (this.f15995D == null && this.f15994C == null) {
            mo18585g0();
        } else {
            mo18601J();
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: H */
    public void mo18605H(boolean z) {
        AbstractC5040k<C5049o> abstractC5040k = this.f16035q;
        if (abstractC5040k != null && !this.f16050z) {
            this.f16050z = true;
            abstractC5040k.mo20773c();
        }
        this.f16046v0 = new C4857d();
    }

    /* renamed from: H0 */
    protected abstract boolean mo18604H0(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z, boolean z2, Format format);

    @Override // com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: I */
    public void mo18511I(long j, boolean z) {
        this.f16032o0 = false;
        this.f16034p0 = false;
        this.f16044u0 = false;
        m20482f0();
        this.f16047w.m18922c();
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: J */
    public void mo18601J() {
        try {
            mo18595M0();
            m20498T0(null);
            AbstractC5040k<C5049o> abstractC5040k = this.f16035q;
            if (abstractC5040k == null || !this.f16050z) {
                return;
            }
            this.f16050z = false;
            abstractC5040k.mo20774b();
        } catch (Throwable th) {
            m20498T0(null);
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: K */
    public void mo18599K() {
    }

    @Override // com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: L */
    public void mo18597L() {
    }

    /* renamed from: M0 */
    public void mo18595M0() {
        this.f16003L = null;
        this.f16005N = null;
        this.f16001J = null;
        m20505P0();
        m20504Q0();
        m20506O0();
        this.f16036q0 = false;
        this.f16018a0 = -9223372036854775807L;
        this.f16048x.clear();
        this.f16030m0 = -9223372036854775807L;
        this.f16031n0 = -9223372036854775807L;
        try {
            MediaCodec mediaCodec = this.f16000I;
            if (mediaCodec != null) {
                this.f16046v0.f14766b++;
                if (!this.f16042t0) {
                    mediaCodec.stop();
                }
                this.f16000I.release();
            }
            this.f16000I = null;
            try {
                MediaCrypto mediaCrypto = this.f15996E;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
            }
        } catch (Throwable th) {
            this.f16000I = null;
            try {
                MediaCrypto mediaCrypto2 = this.f15996E;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
            }
        }
    }

    /* renamed from: N0 */
    protected void mo20507N0() {
    }

    /* renamed from: Q */
    protected abstract int mo18594Q(MediaCodec mediaCodec, C5115e c5115e, Format format, Format format2);

    /* renamed from: S0 */
    public final void m20500S0() {
        this.f16044u0 = true;
    }

    /* renamed from: V0 */
    protected boolean mo18593V0(C5115e c5115e) {
        return true;
    }

    /* renamed from: X0 */
    protected abstract int mo18592X0(AbstractC5116f abstractC5116f, AbstractC5040k<C5049o> abstractC5040k, Format format);

    /* renamed from: Z */
    protected abstract void mo18591Z(C5115e c5115e, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto, float f);

    /* renamed from: a1 */
    public final Format m20487a1(long j) {
        Format m18916i = this.f16047w.m18916i(j);
        if (m18916i != null) {
            this.f15993B = m18916i;
        }
        return m18916i;
    }

    @Override // com.google.android.exoplayer2.AbstractC5315t0
    /* renamed from: b */
    public final int mo18507b(Format format) {
        try {
            return mo18592X0(this.f16033p, this.f16035q, format);
        } catch (MediaCodecUtil.DecoderQueryException e) {
            throw m19244z(e, format);
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: c */
    public boolean mo18506c() {
        return this.f16034p0;
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: e */
    public boolean mo18505e() {
        return this.f15992A != null && !this.f16036q0 && (m19265F() || m20473t0() || (this.f16018a0 != -9223372036854775807L && SystemClock.elapsedRealtime() < this.f16018a0));
    }

    /* renamed from: f0 */
    public final boolean m20482f0() {
        boolean mo18585g0 = mo18585g0();
        if (mo18585g0) {
            m20468y0();
        }
        return mo18585g0;
    }

    /* renamed from: g0 */
    public boolean mo18585g0() {
        MediaCodec mediaCodec = this.f16000I;
        if (mediaCodec == null) {
            return false;
        }
        if (this.f16027j0 == 3 || this.f16009R || (this.f16010S && this.f16029l0)) {
            mo18595M0();
            return true;
        }
        mediaCodec.flush();
        m20505P0();
        m20504Q0();
        this.f16018a0 = -9223372036854775807L;
        this.f16029l0 = false;
        this.f16028k0 = false;
        this.f16038r0 = true;
        this.f16013V = false;
        this.f16014W = false;
        this.f16022e0 = false;
        this.f16023f0 = false;
        this.f16036q0 = false;
        this.f16048x.clear();
        this.f16030m0 = -9223372036854775807L;
        this.f16031n0 = -9223372036854775807L;
        this.f16026i0 = 0;
        this.f16027j0 = 0;
        this.f16025h0 = this.f16024g0 ? 1 : 0;
        return false;
    }

    /* renamed from: i0 */
    public final MediaCodec m20480i0() {
        return this.f16000I;
    }

    /* renamed from: k0 */
    public final C5115e m20478k0() {
        return this.f16005N;
    }

    /* renamed from: l0 */
    protected boolean mo18579l0() {
        return false;
    }

    /* renamed from: m0 */
    protected abstract float mo18577m0(float f, Format format, Format[] formatArr);

    /* renamed from: n0 */
    protected abstract List<C5115e> mo18575n0(AbstractC5116f abstractC5116f, Format format, boolean z);

    /* renamed from: o0 */
    protected long m20477o0() {
        return 0L;
    }

    @Override // com.google.android.exoplayer2.AbstractC5415u, com.google.android.exoplayer2.AbstractC5315t0
    /* renamed from: p */
    public final int mo19252p() {
        return 8;
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: q */
    public void mo18504q(long j, long j2) {
        if (this.f16044u0) {
            this.f16044u0 = false;
            m20512G0();
        }
        try {
            if (this.f16034p0) {
                mo20507N0();
            } else if (this.f15992A == null && !m20509K0(true)) {
            } else {
                m20468y0();
                if (this.f16000I != null) {
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    C5511f0.m18893a("drainAndFeed");
                    while (m20484d0(j, j2)) {
                    }
                    while (m20483e0() && m20496U0(elapsedRealtime)) {
                    }
                    C5511f0.m18891c();
                } else {
                    this.f16046v0.f14768d += m19263O(j);
                    m20509K0(false);
                }
                this.f16046v0.m21430a();
            }
        } catch (IllegalStateException e) {
            if (!m20470w0(e)) {
                throw e;
            }
            throw m19244z(e, this.f15992A);
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5415u, com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: s */
    public final void mo19251s(float f) {
        this.f15999H = f;
        if (this.f16000I == null || this.f16027j0 == 3 || getState() == 0) {
            return;
        }
        m20490Y0();
    }

    /* renamed from: s0 */
    protected void mo18569s0(C4858e c4858e) {
    }

    /* renamed from: y0 */
    public final void m20468y0() {
        if (this.f16000I != null || this.f15992A == null) {
            return;
        }
        m20502R0(this.f15995D);
        String str = this.f15992A.f14461l;
        DrmSession<C5049o> drmSession = this.f15994C;
        if (drmSession != null) {
            if (this.f15996E == null) {
                C5049o mo20765e = drmSession.mo20765e();
                if (mo20765e != null) {
                    try {
                        MediaCrypto mediaCrypto = new MediaCrypto(mo20765e.f15721b, mo20765e.f15722c);
                        this.f15996E = mediaCrypto;
                        this.f15997F = !mo20765e.f15723d && mediaCrypto.requiresSecureDecoderComponent(str);
                    } catch (MediaCryptoException e) {
                        throw m19244z(e, this.f15992A);
                    }
                } else if (this.f15994C.mo20764f() == null) {
                    return;
                }
            }
            if (C5049o.f15720a) {
                int state = this.f15994C.getState();
                if (state == 1) {
                    throw m19244z(this.f15994C.mo20764f(), this.f15992A);
                }
                if (state != 4) {
                    return;
                }
            }
        }
        try {
            m20467z0(this.f15996E, this.f15997F);
        } catch (DecoderInitializationException e2) {
            throw m19244z(e2, this.f15992A);
        }
    }
}
