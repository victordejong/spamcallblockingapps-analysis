package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import p131c.p161d.p170b.p188c.AbstractC2962q;
import p131c.p161d.p170b.p188c.C2692b0;
import p131c.p161d.p170b.p188c.C2964r;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2878e0;
import p131c.p161d.p170b.p188c.p203g1.C2883g0;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p203g1.C2899s;
import p131c.p161d.p170b.p188c.p208u0.C3015c;
import p131c.p161d.p170b.p188c.p208u0.C3016d;
import p131c.p161d.p170b.p188c.p209v0.AbstractC3023d;
import p131c.p161d.p170b.p188c.p209v0.C3021b;
import p131c.p161d.p170b.p188c.p209v0.C3027g;
import p131c.p161d.p170b.p188c.p219x0.AbstractC3199f;
import p131c.p161d.p170b.p188c.p219x0.C3198e;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecRenderer.class */
public abstract class MediaCodecRenderer extends AbstractC2962q {

    /* renamed from: r0 */
    public static final byte[] f22056r0 = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};

    /* renamed from: A */
    public boolean f22057A;

    /* renamed from: D */
    public MediaCodec f22060D;

    /* renamed from: E */
    public Format f22061E;

    /* renamed from: G */
    public ArrayDeque<C3198e> f22063G;

    /* renamed from: H */
    public DecoderInitializationException f22064H;

    /* renamed from: I */
    public C3198e f22065I;

    /* renamed from: J */
    public int f22066J;

    /* renamed from: K */
    public boolean f22067K;

    /* renamed from: L */
    public boolean f22068L;

    /* renamed from: M */
    public boolean f22069M;

    /* renamed from: N */
    public boolean f22070N;

    /* renamed from: O */
    public boolean f22071O;

    /* renamed from: P */
    public boolean f22072P;

    /* renamed from: Q */
    public boolean f22073Q;

    /* renamed from: R */
    public boolean f22074R;

    /* renamed from: S */
    public boolean f22075S;

    /* renamed from: T */
    public ByteBuffer[] f22076T;

    /* renamed from: U */
    public ByteBuffer[] f22077U;

    /* renamed from: V */
    public long f22078V;

    /* renamed from: W */
    public int f22079W;

    /* renamed from: X */
    public int f22080X;

    /* renamed from: Y */
    public ByteBuffer f22081Y;

    /* renamed from: Z */
    public boolean f22082Z;

    /* renamed from: a0 */
    public boolean f22083a0;

    /* renamed from: b0 */
    public boolean f22084b0;

    /* renamed from: f0 */
    public boolean f22088f0;

    /* renamed from: g0 */
    public boolean f22089g0;

    /* renamed from: h0 */
    public long f22090h0;

    /* renamed from: i0 */
    public long f22091i0;

    /* renamed from: j0 */
    public boolean f22092j0;

    /* renamed from: k0 */
    public boolean f22093k0;

    /* renamed from: l */
    public final AbstractC3199f f22094l;

    /* renamed from: l0 */
    public boolean f22095l0;

    /* renamed from: m */
    public final AbstractC3023d<C3027g> f22096m;

    /* renamed from: m0 */
    public boolean f22097m0;

    /* renamed from: n */
    public final boolean f22098n;

    /* renamed from: n0 */
    public boolean f22099n0;

    /* renamed from: o */
    public final boolean f22100o;

    /* renamed from: o0 */
    public boolean f22101o0;

    /* renamed from: p */
    public final float f22102p;

    /* renamed from: p0 */
    public boolean f22103p0;

    /* renamed from: q0 */
    public C3015c f22105q0;

    /* renamed from: v */
    public Format f22110v;

    /* renamed from: w */
    public Format f22111w;

    /* renamed from: x */
    public DrmSession<C3027g> f22112x;

    /* renamed from: y */
    public DrmSession<C3027g> f22113y;

    /* renamed from: z */
    public MediaCrypto f22114z;

    /* renamed from: q */
    public final C3016d f22104q = new C3016d(0);

    /* renamed from: r */
    public final C3016d f22106r = C3016d.m28129i();

    /* renamed from: s */
    public final C2878e0<Format> f22107s = new C2878e0<>();

    /* renamed from: t */
    public final ArrayList<Long> f22108t = new ArrayList<>();

    /* renamed from: u */
    public final MediaCodec.BufferInfo f22109u = new MediaCodec.BufferInfo();

    /* renamed from: c0 */
    public int f22085c0 = 0;

    /* renamed from: d0 */
    public int f22086d0 = 0;

    /* renamed from: e0 */
    public int f22087e0 = 0;

    /* renamed from: F */
    public float f22062F = -1.0f;

    /* renamed from: C */
    public float f22059C = 1.0f;

    /* renamed from: B */
    public long f22058B = -9223372036854775807L;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderException.class */
    public static class DecoderException extends Exception {
        public final C3198e codecInfo;
        public final String diagnosticInfo;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public DecoderException(java.lang.Throwable r5, p131c.p161d.p170b.p188c.p219x0.C3198e r6) {
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
                if (r0 != 0) goto L_0x001c
                r0 = 0
                r9 = r0
                goto L_0x0022
            L_0x001c:
                r0 = r6
                java.lang.String r0 = r0.f11799a
                r9 = r0
            L_0x0022:
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
                int r0 = p131c.p161d.p170b.p188c.p203g1.C2885h0.f10477a
                r1 = 21
                if (r0 < r1) goto L_0x0047
                r0 = r5
                java.lang.String r0 = getDiagnosticInfoV21(r0)
                r6 = r0
            L_0x0047:
                r0 = r4
                r1 = r6
                r0.diagnosticInfo = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderException.<init>(java.lang.Throwable, c.d.b.c.x0.e):void");
        }

        public static String getDiagnosticInfoV21(Throwable th) {
            if (th instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException.class */
    public static class DecoderInitializationException extends Exception {
        public static final int CUSTOM_ERROR_CODE_BASE = -50000;
        public static final int DECODER_QUERY_ERROR = -49998;
        public static final int NO_SUITABLE_DECODER_ERROR = -49999;
        public final C3198e codecInfo;
        public final String diagnosticInfo;
        public final DecoderInitializationException fallbackDecoderInitializationException;
        public final String mimeType;
        public final boolean secureDecoderRequired;

        public DecoderInitializationException(Format format, Throwable th, boolean z, int i) {
            this("Decoder init failed: [" + i + "], " + format, th, format.f21952i, z, null, buildCustomDiagnosticInfo(i), null);
        }

        public DecoderInitializationException(Format format, Throwable th, boolean z, C3198e eVar) {
            this("Decoder init failed: " + eVar.f11799a + ", " + format, th, format.f21952i, z, eVar, C2885h0.f10477a >= 21 ? getDiagnosticInfoV21(th) : null, null);
        }

        public DecoderInitializationException(String str, Throwable th, String str2, boolean z, C3198e eVar, String str3, DecoderInitializationException decoderInitializationException) {
            super(str, th);
            this.mimeType = str2;
            this.secureDecoderRequired = z;
            this.codecInfo = eVar;
            this.diagnosticInfo = str3;
            this.fallbackDecoderInitializationException = decoderInitializationException;
        }

        public static String buildCustomDiagnosticInfo(int i) {
            String str = i < 0 ? "neg_" : "";
            return "com.google.android.exoplayer2.mediacodec.MediaCodecRenderer_" + str + Math.abs(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public DecoderInitializationException copyWithFallbackException(DecoderInitializationException decoderInitializationException) {
            return new DecoderInitializationException(getMessage(), getCause(), this.mimeType, this.secureDecoderRequired, this.codecInfo, this.diagnosticInfo, decoderInitializationException);
        }

        public static String getDiagnosticInfoV21(Throwable th) {
            if (th instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }
    }

    public MediaCodecRenderer(int i, AbstractC3199f fVar, AbstractC3023d<C3027g> dVar, boolean z, boolean z2, float f) {
        super(i);
        C2877e.m28737a(fVar);
        this.f22094l = fVar;
        this.f22096m = dVar;
        this.f22098n = z;
        this.f22100o = z2;
        this.f22102p = f;
    }

    /* renamed from: a */
    public static MediaCodec.CryptoInfo m18582a(C3016d dVar, int i) {
        MediaCodec.CryptoInfo a = dVar.f10902b.m28141a();
        if (i == 0) {
            return a;
        }
        if (a.numBytesOfClearData == null) {
            a.numBytesOfClearData = new int[1];
        }
        int[] iArr = a.numBytesOfClearData;
        iArr[0] = iArr[0] + i;
        return a;
    }

    /* renamed from: a */
    public static boolean m18578a(IllegalStateException illegalStateException) {
        boolean z = true;
        if (C2885h0.f10477a >= 21 && m18571b(illegalStateException)) {
            return true;
        }
        StackTraceElement[] stackTrace = illegalStateException.getStackTrace();
        if (stackTrace.length <= 0 || !stackTrace[0].getClassName().equals("android.media.MediaCodec")) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m18576a(String str, Format format) {
        return C2885h0.f10477a < 21 && format.f21954k.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }

    /* renamed from: b */
    public static boolean m18573b(C3198e eVar) {
        String str = eVar.f11799a;
        return (C2885h0.f10477a <= 25 && "OMX.rk.video_decoder.avc".equals(str)) || (C2885h0.f10477a <= 17 && "OMX.allwinner.video.decoder.avc".equals(str)) || ("Amazon".equals(C2885h0.f10479c) && "AFTS".equals(C2885h0.f10480d) && eVar.f11804f);
    }

    /* renamed from: b */
    public static boolean m18571b(IllegalStateException illegalStateException) {
        return illegalStateException instanceof MediaCodec.CodecException;
    }

    /* renamed from: b */
    public static boolean m18570b(String str) {
        return (C2885h0.f10477a <= 23 && "OMX.google.vorbis.decoder".equals(str)) || (C2885h0.f10477a <= 19 && (("hb2000".equals(C2885h0.f10478b) || "stvm8".equals(C2885h0.f10478b)) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str))));
    }

    /* renamed from: b */
    public static boolean m18569b(String str, Format format) {
        boolean z = true;
        if (C2885h0.f10477a > 18 || format.f21965v != 1 || !"OMX.MTK.AUDIO.DECODER.MP3".equals(str)) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public static boolean m18564c(String str) {
        return C2885h0.f10477a == 21 && "OMX.google.aac.decoder".equals(str);
    }

    /* renamed from: d */
    public static boolean m18562d(String str) {
        int i = C2885h0.f10477a;
        return i < 18 || (i == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (C2885h0.f10477a == 19 && C2885h0.f10480d.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
    }

    /* renamed from: e */
    public static boolean m18559e(String str) {
        return C2885h0.f10480d.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str);
    }

    /* renamed from: A */
    public final void m18607A() {
        if (this.f22088f0) {
            this.f22086d0 = 1;
            this.f22087e0 = 1;
        }
    }

    /* renamed from: B */
    public final void m18606B() throws ExoPlaybackException {
        if (this.f22088f0) {
            this.f22086d0 = 1;
            this.f22087e0 = 3;
            return;
        }
        m18594P();
    }

    /* renamed from: C */
    public final void m18605C() throws ExoPlaybackException {
        if (C2885h0.f10477a < 23) {
            m18606B();
        } else if (this.f22088f0) {
            this.f22086d0 = 1;
            this.f22087e0 = 2;
        } else {
            m18587X();
        }
    }

    /* renamed from: D */
    public final boolean m18604D() throws ExoPlaybackException {
        int i;
        int i2;
        MediaCodec mediaCodec = this.f22060D;
        if (mediaCodec == null || this.f22086d0 == 2 || this.f22092j0) {
            return false;
        }
        if (this.f22079W < 0) {
            int dequeueInputBuffer = mediaCodec.dequeueInputBuffer(0L);
            this.f22079W = dequeueInputBuffer;
            if (dequeueInputBuffer < 0) {
                return false;
            }
            this.f22104q.f10903c = m18575b(dequeueInputBuffer);
            this.f22104q.mo28136a();
        }
        if (this.f22086d0 == 1) {
            if (!this.f22075S) {
                this.f22089g0 = true;
                this.f22060D.queueInputBuffer(this.f22079W, 0, 0, 0L, 4);
                m18591T();
            }
            this.f22086d0 = 2;
            return false;
        } else if (this.f22073Q) {
            this.f22073Q = false;
            this.f22104q.f10903c.put(f22056r0);
            this.f22060D.queueInputBuffer(this.f22079W, 0, f22056r0.length, 0L, 0);
            m18591T();
            this.f22088f0 = true;
            return true;
        } else {
            C2692b0 s = m28361s();
            if (this.f22095l0) {
                i = -4;
                i2 = 0;
            } else {
                if (this.f22085c0 == 1) {
                    for (int i3 = 0; i3 < this.f22061E.f21954k.size(); i3++) {
                        this.f22104q.f10903c.put(this.f22061E.f21954k.get(i3));
                    }
                    this.f22085c0 = 2;
                }
                i2 = this.f22104q.f10903c.position();
                i = m28379a(s, this.f22104q, false);
            }
            if (mo28368i()) {
                this.f22091i0 = this.f22090h0;
            }
            if (i == -3) {
                return false;
            }
            if (i == -5) {
                if (this.f22085c0 == 2) {
                    this.f22104q.mo28136a();
                    this.f22085c0 = 1;
                }
                mo18204a(s);
                return true;
            } else if (this.f22104q.m28143d()) {
                if (this.f22085c0 == 2) {
                    this.f22104q.mo28136a();
                    this.f22085c0 = 1;
                }
                this.f22092j0 = true;
                if (!this.f22088f0) {
                    m18597M();
                    return false;
                }
                try {
                    if (this.f22075S) {
                        return false;
                    }
                    this.f22089g0 = true;
                    this.f22060D.queueInputBuffer(this.f22079W, 0, 0, 0L, 4);
                    m18591T();
                    return false;
                } catch (MediaCodec.CryptoException e) {
                    throw m28375a(e, this.f22110v);
                }
            } else if (!this.f22097m0 || this.f22104q.m28142e()) {
                this.f22097m0 = false;
                boolean g = this.f22104q.m28131g();
                boolean d = m18561d(g);
                this.f22095l0 = d;
                if (d) {
                    return false;
                }
                if (this.f22068L && !g) {
                    C2899s.m28576a(this.f22104q.f10903c);
                    if (this.f22104q.f10903c.position() == 0) {
                        return true;
                    }
                    this.f22068L = false;
                }
                try {
                    long j = this.f22104q.f10904d;
                    if (this.f22104q.m28145c()) {
                        this.f22108t.add(Long.valueOf(j));
                    }
                    if (this.f22099n0) {
                        this.f22107s.m28726a(j, (long) this.f22110v);
                        this.f22099n0 = false;
                    }
                    this.f22090h0 = Math.max(this.f22090h0, j);
                    this.f22104q.m28133f();
                    if (this.f22104q.m28147b()) {
                        mo18203a(this.f22104q);
                    }
                    mo18185b(this.f22104q);
                    if (g) {
                        this.f22060D.queueSecureInputBuffer(this.f22079W, 0, m18582a(this.f22104q, i2), j, 0);
                    } else {
                        this.f22060D.queueInputBuffer(this.f22079W, 0, this.f22104q.f10903c.limit(), j, 0);
                    }
                    m18591T();
                    this.f22088f0 = true;
                    this.f22085c0 = 0;
                    this.f22105q0.f10895c++;
                    return true;
                } catch (MediaCodec.CryptoException e2) {
                    throw m28375a(e2, this.f22110v);
                }
            } else {
                this.f22104q.mo28136a();
                if (this.f22085c0 != 2) {
                    return true;
                }
                this.f22085c0 = 1;
                return true;
            }
        }
    }

    /* renamed from: E */
    public final boolean m18603E() throws ExoPlaybackException {
        boolean F = mo18225F();
        if (F) {
            m18598L();
        }
        return F;
    }

    /* renamed from: F */
    public boolean mo18225F() {
        if (this.f22060D == null) {
            return false;
        }
        if (this.f22087e0 == 3 || this.f22069M || (this.f22070N && this.f22089g0)) {
            mo18223Q();
            return true;
        }
        this.f22060D.flush();
        m18591T();
        m18590U();
        this.f22078V = -9223372036854775807L;
        this.f22089g0 = false;
        this.f22088f0 = false;
        this.f22097m0 = true;
        this.f22073Q = false;
        this.f22074R = false;
        this.f22082Z = false;
        this.f22083a0 = false;
        this.f22095l0 = false;
        this.f22108t.clear();
        this.f22090h0 = -9223372036854775807L;
        this.f22091i0 = -9223372036854775807L;
        this.f22086d0 = 0;
        this.f22087e0 = 0;
        this.f22085c0 = this.f22084b0 ? 1 : 0;
        return false;
    }

    /* renamed from: G */
    public final MediaCodec m18602G() {
        return this.f22060D;
    }

    /* renamed from: H */
    public final C3198e m18601H() {
        return this.f22065I;
    }

    /* renamed from: I */
    public boolean mo18224I() {
        return false;
    }

    /* renamed from: J */
    public long m18600J() {
        return 0L;
    }

    /* renamed from: K */
    public final boolean m18599K() {
        return this.f22080X >= 0;
    }

    /* renamed from: L */
    public final void m18598L() throws ExoPlaybackException {
        if (this.f22060D == null && this.f22110v != null) {
            m18579a(this.f22113y);
            String str = this.f22110v.f21952i;
            DrmSession<C3027g> drmSession = this.f22112x;
            if (drmSession != null) {
                if (this.f22114z == null) {
                    C3027g c = drmSession.mo18614c();
                    if (c != null) {
                        try {
                            MediaCrypto mediaCrypto = new MediaCrypto(c.f10916a, c.f10917b);
                            this.f22114z = mediaCrypto;
                            this.f22057A = !c.f10918c && mediaCrypto.requiresSecureDecoderComponent(str);
                        } catch (MediaCryptoException e) {
                            throw m28375a(e, this.f22110v);
                        }
                    } else if (this.f22112x.mo18612e() == null) {
                        return;
                    }
                }
                if (C3027g.f10915d) {
                    int d = this.f22112x.mo18613d();
                    if (d == 1) {
                        throw m28375a(this.f22112x.mo18612e(), this.f22110v);
                    } else if (d != 4) {
                        return;
                    }
                }
            }
            try {
                m18583a(this.f22114z, this.f22057A);
            } catch (DecoderInitializationException e2) {
                throw m28375a(e2, this.f22110v);
            }
        }
    }

    /* renamed from: M */
    public final void m18597M() throws ExoPlaybackException {
        int i = this.f22087e0;
        if (i == 1) {
            m18603E();
        } else if (i == 2) {
            m18587X();
        } else if (i != 3) {
            this.f22093k0 = true;
            mo18593R();
        } else {
            m18594P();
        }
    }

    /* renamed from: N */
    public final void m18596N() {
        if (C2885h0.f10477a < 21) {
            this.f22077U = this.f22060D.getOutputBuffers();
        }
    }

    /* renamed from: O */
    public final void m18595O() throws ExoPlaybackException {
        MediaFormat outputFormat = this.f22060D.getOutputFormat();
        if (this.f22066J != 0 && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
            this.f22074R = true;
            return;
        }
        if (this.f22072P) {
            outputFormat.setInteger("channel-count", 1);
        }
        mo18210a(this.f22060D, outputFormat);
    }

    /* renamed from: P */
    public final void m18594P() throws ExoPlaybackException {
        mo18223Q();
        m18598L();
    }

    /* renamed from: Q */
    public void mo18223Q() {
        this.f22063G = null;
        this.f22065I = null;
        this.f22061E = null;
        m18591T();
        m18590U();
        m18592S();
        this.f22095l0 = false;
        this.f22078V = -9223372036854775807L;
        this.f22108t.clear();
        this.f22090h0 = -9223372036854775807L;
        this.f22091i0 = -9223372036854775807L;
        try {
            if (this.f22060D != null) {
                this.f22105q0.f10894b++;
                if (!this.f22101o0) {
                    this.f22060D.stop();
                }
                this.f22060D.release();
            }
            this.f22060D = null;
            try {
                if (this.f22114z != null) {
                    this.f22114z.release();
                }
            } finally {
            }
        } catch (Throwable th) {
            this.f22060D = null;
            try {
                if (this.f22114z != null) {
                    this.f22114z.release();
                }
                throw th;
            } finally {
            }
        }
    }

    /* renamed from: R */
    public void mo18593R() throws ExoPlaybackException {
    }

    /* renamed from: S */
    public final void m18592S() {
        if (C2885h0.f10477a < 21) {
            this.f22076T = null;
            this.f22077U = null;
        }
    }

    /* renamed from: T */
    public final void m18591T() {
        this.f22079W = -1;
        this.f22104q.f10903c = null;
    }

    /* renamed from: U */
    public final void m18590U() {
        this.f22080X = -1;
        this.f22081Y = null;
    }

    /* renamed from: V */
    public final void m18589V() {
        this.f22103p0 = true;
    }

    /* renamed from: W */
    public final void m18588W() throws ExoPlaybackException {
        if (C2885h0.f10477a >= 23) {
            float a = mo18220a(this.f22059C, this.f22061E, m28359u());
            float f = this.f22062F;
            if (f != a) {
                if (a == -1.0f) {
                    m18606B();
                } else if (f != -1.0f || a > this.f22102p) {
                    Bundle bundle = new Bundle();
                    bundle.putFloat("operating-rate", a);
                    this.f22060D.setParameters(bundle);
                    this.f22062F = a;
                }
            }
        }
    }

    /* renamed from: X */
    public final void m18587X() throws ExoPlaybackException {
        C3027g c = this.f22113y.mo18614c();
        if (c == null) {
            m18594P();
        } else if (C2964r.f10676c.equals(c.f10916a)) {
            m18594P();
        } else if (!m18603E()) {
            try {
                this.f22114z.setMediaDrmSession(c.f10917b);
                m18579a(this.f22113y);
                this.f22086d0 = 0;
                this.f22087e0 = 0;
            } catch (MediaCryptoException e) {
                throw m28375a(e, this.f22110v);
            }
        }
    }

    /* renamed from: a */
    public abstract float mo18220a(float f, Format format, Format[] formatArr);

    /* renamed from: a */
    public abstract int mo18208a(MediaCodec mediaCodec, C3198e eVar, Format format, Format format2);

    /* renamed from: a */
    public abstract int mo18197a(AbstractC3199f fVar, AbstractC3023d<C3027g> dVar, Format format) throws MediaCodecUtil.DecoderQueryException;

    @Override // p131c.p161d.p170b.p188c.AbstractC2957o0
    /* renamed from: a */
    public final int mo18580a(Format format) throws ExoPlaybackException {
        try {
            return mo18197a(this.f22094l, this.f22096m, format);
        } catch (MediaCodecUtil.DecoderQueryException e) {
            throw m28375a(e, format);
        }
    }

    /* renamed from: a */
    public final int m18577a(String str) {
        if (C2885h0.f10477a <= 25 && "OMX.Exynos.avc.dec.secure".equals(str) && (C2885h0.f10480d.startsWith("SM-T585") || C2885h0.f10480d.startsWith("SM-A510") || C2885h0.f10480d.startsWith("SM-A520") || C2885h0.f10480d.startsWith("SM-J700"))) {
            return 2;
        }
        if (C2885h0.f10477a >= 24) {
            return 0;
        }
        if ("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str)) {
            return ("flounder".equals(C2885h0.f10478b) || "flounder_lte".equals(C2885h0.f10478b) || "grouper".equals(C2885h0.f10478b) || "tilapia".equals(C2885h0.f10478b)) ? 1 : 0;
        }
        return 0;
    }

    /* renamed from: a */
    public abstract List<C3198e> mo18196a(AbstractC3199f fVar, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException;

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: a */
    public final void mo18586a(float f) throws ExoPlaybackException {
        this.f22059C = f;
        if (this.f22060D != null && this.f22087e0 != 3 && mo28372d() != 0) {
            m18588W();
        }
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: a */
    public void mo18585a(long j, long j2) throws ExoPlaybackException {
        if (this.f22103p0) {
            this.f22103p0 = false;
            m18597M();
        }
        try {
            if (this.f22093k0) {
                mo18593R();
            } else if (this.f22110v != null || m18563c(true)) {
                m18598L();
                if (this.f22060D != null) {
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    C2883g0.m28701a("drainAndFeed");
                    while (m18574b(j, j2)) {
                    }
                    while (m18604D() && m18560e(elapsedRealtime)) {
                    }
                    C2883g0.m28702a();
                } else {
                    this.f22105q0.f10896d += m28373b(j);
                    m18563c(false);
                }
                this.f22105q0.m28137a();
            }
        } catch (IllegalStateException e) {
            if (m18578a(e)) {
                throw m28375a(e, this.f22110v);
            }
            throw e;
        }
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2962q
    /* renamed from: a */
    public void mo18215a(long j, boolean z) throws ExoPlaybackException {
        this.f22092j0 = false;
        this.f22093k0 = false;
        this.f22103p0 = false;
        m18603E();
        this.f22107s.m28729a();
    }

    /* renamed from: a */
    public final void m18584a(MediaCodec mediaCodec) {
        if (C2885h0.f10477a < 21) {
            this.f22076T = mediaCodec.getInputBuffers();
            this.f22077U = mediaCodec.getOutputBuffers();
        }
    }

    /* renamed from: a */
    public abstract void mo18210a(MediaCodec mediaCodec, MediaFormat mediaFormat) throws ExoPlaybackException;

    /* renamed from: a */
    public final void m18583a(MediaCrypto mediaCrypto, boolean z) throws DecoderInitializationException {
        if (this.f22063G == null) {
            try {
                List<C3198e> b = m18568b(z);
                ArrayDeque<C3198e> arrayDeque = new ArrayDeque<>();
                this.f22063G = arrayDeque;
                if (this.f22100o) {
                    arrayDeque.addAll(b);
                } else if (!b.isEmpty()) {
                    this.f22063G.add(b.get(0));
                }
                this.f22064H = null;
            } catch (MediaCodecUtil.DecoderQueryException e) {
                throw new DecoderInitializationException(this.f22110v, e, z, -49998);
            }
        }
        if (!this.f22063G.isEmpty()) {
            while (this.f22060D == null) {
                C3198e peekFirst = this.f22063G.peekFirst();
                if (mo18202a(peekFirst)) {
                    try {
                        m18581a(peekFirst, mediaCrypto);
                    } catch (Exception e2) {
                        C2894o.m28596b("MediaCodecRenderer", "Failed to initialize decoder: " + peekFirst, e2);
                        this.f22063G.removeFirst();
                        DecoderInitializationException decoderInitializationException = new DecoderInitializationException(this.f22110v, e2, z, peekFirst);
                        DecoderInitializationException decoderInitializationException2 = this.f22064H;
                        if (decoderInitializationException2 == null) {
                            this.f22064H = decoderInitializationException;
                        } else {
                            this.f22064H = decoderInitializationException2.copyWithFallbackException(decoderInitializationException);
                        }
                        if (this.f22063G.isEmpty()) {
                            throw this.f22064H;
                        }
                    }
                } else {
                    return;
                }
            }
            this.f22063G = null;
            return;
        }
        throw new DecoderInitializationException(this.f22110v, (Throwable) null, z, -49999);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public void mo18204a(C2692b0 b0Var) throws ExoPlaybackException {
        this.f22099n0 = true;
        Format format = b0Var.f9832c;
        C2877e.m28737a(format);
        Format format2 = format;
        if (b0Var.f9830a) {
            m18572b((DrmSession<C3027g>) b0Var.f9831b);
        } else {
            this.f22113y = m28376a(this.f22110v, format2, this.f22096m, this.f22113y);
        }
        this.f22110v = format2;
        if (this.f22060D == null) {
            m18598L();
        } else if ((this.f22113y != null || this.f22112x == null) && ((this.f22113y == null || this.f22112x != null) && ((this.f22113y == null || this.f22065I.f11804f) && (C2885h0.f10477a >= 23 || this.f22113y == this.f22112x)))) {
            int a = mo18208a(this.f22060D, this.f22065I, this.f22061E, format2);
            if (a == 0) {
                m18606B();
            } else if (a == 1) {
                this.f22061E = format2;
                m18588W();
                if (this.f22113y != this.f22112x) {
                    m18605C();
                } else {
                    m18607A();
                }
            } else if (a != 2) {
                if (a == 3) {
                    this.f22061E = format2;
                    m18588W();
                    if (this.f22113y != this.f22112x) {
                        m18605C();
                        return;
                    }
                    return;
                }
                throw new IllegalStateException();
            } else if (this.f22067K) {
                m18606B();
            } else {
                this.f22084b0 = true;
                this.f22085c0 = 1;
                int i = this.f22066J;
                boolean z = true;
                if (i != 2) {
                    if (i == 1) {
                        int i2 = format2.f21957n;
                        Format format3 = this.f22061E;
                        if (i2 == format3.f21957n && format2.f21958o == format3.f21958o) {
                            z = true;
                        }
                    }
                    z = false;
                }
                this.f22073Q = z;
                this.f22061E = format2;
                m18588W();
                if (this.f22113y != this.f22112x) {
                    m18605C();
                }
            }
        } else {
            m18606B();
        }
    }

    /* renamed from: a */
    public void mo18203a(C3016d dVar) throws ExoPlaybackException {
    }

    /* renamed from: a */
    public abstract void mo18201a(C3198e eVar, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto, float f);

    /* renamed from: a */
    public final void m18581a(C3198e eVar, MediaCrypto mediaCrypto) throws Exception {
        Exception e;
        String str = eVar.f11799a;
        float a = C2885h0.f10477a < 23 ? -1.0f : mo18220a(this.f22059C, this.f22110v, m28359u());
        if (a <= this.f22102p) {
            a = -1.0f;
        }
        MediaCodec mediaCodec = null;
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            C2883g0.m28701a("createCodec:" + str);
            MediaCodec createByCodecName = MediaCodec.createByCodecName(str);
            try {
                C2883g0.m28702a();
                C2883g0.m28701a("configureCodec");
                mo18201a(eVar, createByCodecName, this.f22110v, mediaCrypto, a);
                C2883g0.m28702a();
                C2883g0.m28701a("startCodec");
                createByCodecName.start();
                C2883g0.m28702a();
                long elapsedRealtime2 = SystemClock.elapsedRealtime();
                m18584a(createByCodecName);
                this.f22060D = createByCodecName;
                this.f22065I = eVar;
                this.f22062F = a;
                this.f22061E = this.f22110v;
                this.f22066J = m18577a(str);
                this.f22067K = m18559e(str);
                this.f22068L = m18576a(str, this.f22061E);
                this.f22069M = m18562d(str);
                this.f22070N = m18570b(str);
                this.f22071O = m18564c(str);
                this.f22072P = m18569b(str, this.f22061E);
                this.f22075S = m18573b(eVar) || mo18224I();
                m18591T();
                m18590U();
                this.f22078V = mo28372d() == 2 ? SystemClock.elapsedRealtime() + 1000 : -9223372036854775807L;
                this.f22084b0 = false;
                this.f22085c0 = 0;
                this.f22089g0 = false;
                this.f22088f0 = false;
                this.f22090h0 = -9223372036854775807L;
                this.f22091i0 = -9223372036854775807L;
                this.f22086d0 = 0;
                this.f22087e0 = 0;
                this.f22073Q = false;
                this.f22074R = false;
                this.f22082Z = false;
                this.f22083a0 = false;
                this.f22097m0 = true;
                this.f22105q0.f10893a++;
                mo18192a(str, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
            } catch (Exception e2) {
                e = e2;
                mediaCodec = createByCodecName;
                if (mediaCodec != null) {
                    m18592S();
                    mediaCodec.release();
                }
                throw e;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    /* renamed from: a */
    public final void m18579a(DrmSession<C3027g> drmSession) {
        C3021b.m28117a(this.f22112x, drmSession);
        this.f22112x = drmSession;
    }

    /* renamed from: a */
    public abstract void mo18192a(String str, long j, long j2);

    @Override // p131c.p161d.p170b.p188c.AbstractC2962q
    /* renamed from: a */
    public void mo18191a(boolean z) throws ExoPlaybackException {
        this.f22105q0 = new C3015c();
    }

    /* renamed from: a */
    public abstract boolean mo18218a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z, boolean z2, Format format) throws ExoPlaybackException;

    /* renamed from: a */
    public boolean mo18202a(C3198e eVar) {
        return true;
    }

    /* renamed from: b */
    public final ByteBuffer m18575b(int i) {
        return C2885h0.f10477a >= 21 ? this.f22060D.getInputBuffer(i) : this.f22076T[i];
    }

    /* renamed from: b */
    public final List<C3198e> m18568b(boolean z) throws MediaCodecUtil.DecoderQueryException {
        List<C3198e> a = mo18196a(this.f22094l, this.f22110v, z);
        List<C3198e> list = a;
        if (a.isEmpty()) {
            list = a;
            if (z) {
                List<C3198e> a2 = mo18196a(this.f22094l, this.f22110v, false);
                list = a2;
                if (!a2.isEmpty()) {
                    C2894o.m28594d("MediaCodecRenderer", "Drm session requires secure decoder for " + this.f22110v.f21952i + ", but no secure decoder available. Trying to proceed with " + a2 + ".");
                    list = a2;
                }
            }
        }
        return list;
    }

    /* renamed from: b */
    public abstract void mo18185b(C3016d dVar);

    /* renamed from: b */
    public final void m18572b(DrmSession<C3027g> drmSession) {
        C3021b.m28117a(this.f22113y, drmSession);
        this.f22113y = drmSession;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: b */
    public boolean mo18188b() {
        return this.f22110v != null && !this.f22095l0 && (m28358v() || m18599K() || (this.f22078V != -9223372036854775807L && SystemClock.elapsedRealtime() < this.f22078V));
    }

    /* renamed from: b */
    public final boolean m18574b(long j, long j2) throws ExoPlaybackException {
        boolean z;
        int i;
        if (!m18599K()) {
            if (!this.f22071O || !this.f22089g0) {
                i = this.f22060D.dequeueOutputBuffer(this.f22109u, m18600J());
            } else {
                try {
                    i = this.f22060D.dequeueOutputBuffer(this.f22109u, m18600J());
                } catch (IllegalStateException e) {
                    m18597M();
                    if (!this.f22093k0) {
                        return false;
                    }
                    mo18223Q();
                    return false;
                }
            }
            if (i < 0) {
                if (i == -2) {
                    m18595O();
                    return true;
                } else if (i == -3) {
                    m18596N();
                    return true;
                } else if (!this.f22075S) {
                    return false;
                } else {
                    if (!this.f22092j0 && this.f22086d0 != 2) {
                        return false;
                    }
                    m18597M();
                    return false;
                }
            } else if (this.f22074R) {
                this.f22074R = false;
                this.f22060D.releaseOutputBuffer(i, false);
                return true;
            } else {
                MediaCodec.BufferInfo bufferInfo = this.f22109u;
                if (bufferInfo.size != 0 || (bufferInfo.flags & 4) == 0) {
                    this.f22080X = i;
                    ByteBuffer c = m18566c(i);
                    this.f22081Y = c;
                    if (c != null) {
                        c.position(this.f22109u.offset);
                        ByteBuffer byteBuffer = this.f22081Y;
                        MediaCodec.BufferInfo bufferInfo2 = this.f22109u;
                        byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
                    }
                    this.f22082Z = m18565c(this.f22109u.presentationTimeUs);
                    this.f22083a0 = this.f22091i0 == this.f22109u.presentationTimeUs;
                    m18558f(this.f22109u.presentationTimeUs);
                } else {
                    m18597M();
                    return false;
                }
            }
        }
        if (!this.f22071O || !this.f22089g0) {
            MediaCodec mediaCodec = this.f22060D;
            ByteBuffer byteBuffer2 = this.f22081Y;
            int i2 = this.f22080X;
            MediaCodec.BufferInfo bufferInfo3 = this.f22109u;
            z = mo18218a(j, j2, mediaCodec, byteBuffer2, i2, bufferInfo3.flags, bufferInfo3.presentationTimeUs, this.f22082Z, this.f22083a0, this.f22111w);
        } else {
            try {
                z = mo18218a(j, j2, this.f22060D, this.f22081Y, this.f22080X, this.f22109u.flags, this.f22109u.presentationTimeUs, this.f22082Z, this.f22083a0, this.f22111w);
            } catch (IllegalStateException e2) {
                m18597M();
                if (!this.f22093k0) {
                    return false;
                }
                mo18223Q();
                return false;
            }
        }
        if (!z) {
            return false;
        }
        mo18177d(this.f22109u.presentationTimeUs);
        boolean z2 = (this.f22109u.flags & 4) != 0;
        m18590U();
        if (!z2) {
            return true;
        }
        m18597M();
        return false;
    }

    /* renamed from: c */
    public final ByteBuffer m18566c(int i) {
        return C2885h0.f10477a >= 21 ? this.f22060D.getOutputBuffer(i) : this.f22077U[i];
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2953m0
    /* renamed from: c */
    public boolean mo18567c() {
        return this.f22093k0;
    }

    /* renamed from: c */
    public final boolean m18565c(long j) {
        int size = this.f22108t.size();
        for (int i = 0; i < size; i++) {
            if (this.f22108t.get(i).longValue() == j) {
                this.f22108t.remove(i);
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public final boolean m18563c(boolean z) throws ExoPlaybackException {
        C2692b0 s = m28361s();
        this.f22106r.mo28136a();
        int a = m28379a(s, this.f22106r, z);
        if (a == -5) {
            mo18204a(s);
            return true;
        } else if (a != -4 || !this.f22106r.m28143d()) {
            return false;
        } else {
            this.f22092j0 = true;
            m18597M();
            return false;
        }
    }

    /* renamed from: d */
    public abstract void mo18177d(long j);

    /* renamed from: d */
    public final boolean m18561d(boolean z) throws ExoPlaybackException {
        DrmSession<C3027g> drmSession = this.f22112x;
        boolean z2 = false;
        if (drmSession == null) {
            return false;
        }
        if (!z && (this.f22098n || drmSession.mo18611f())) {
            return false;
        }
        int d = this.f22112x.mo18613d();
        if (d != 1) {
            if (d != 4) {
                z2 = true;
            }
            return z2;
        }
        throw m28375a(this.f22112x.mo18612e(), this.f22110v);
    }

    /* renamed from: e */
    public final boolean m18560e(long j) {
        return this.f22058B == -9223372036854775807L || SystemClock.elapsedRealtime() - j < this.f22058B;
    }

    /* renamed from: f */
    public final Format m18558f(long j) {
        Format c = this.f22107s.m28721c(j);
        if (c != null) {
            this.f22111w = c;
        }
        return c;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2957o0
    /* renamed from: m */
    public final int mo18557m() {
        return 8;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2962q
    /* renamed from: w */
    public void mo18167w() {
        this.f22110v = null;
        if (this.f22113y == null && this.f22112x == null) {
            mo18225F();
        } else {
            mo18166x();
        }
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2962q
    /* renamed from: x */
    public void mo18166x() {
        try {
            mo18223Q();
        } finally {
            m18572b((DrmSession<C3027g>) null);
        }
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2962q
    /* renamed from: y */
    public void mo18165y() {
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2962q
    /* renamed from: z */
    public void mo18164z() {
    }
}
