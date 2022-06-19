package androidx.media2.exoplayer.external.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Looper;
import android.os.SystemClock;
import androidx.media2.exoplayer.external.AbstractC1435b;
import androidx.media2.exoplayer.external.C1446c;
import androidx.media2.exoplayer.external.C2058x;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.AbstractC1467j;
import androidx.media2.exoplayer.external.drm.AbstractC1468k;
import androidx.media2.exoplayer.external.drm.C1475o;
import androidx.media2.exoplayer.external.drm.DrmSession;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
import androidx.media2.exoplayer.external.p063b.C1441d;
import androidx.media2.exoplayer.external.p063b.C1442e;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1994aa;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2029y;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer.class */
public abstract class MediaCodecRenderer extends AbstractC1435b {

    /* renamed from: b */
    private static final byte[] f6564b = C1996ac.m41615g("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");

    /* renamed from: A */
    private C1659a f6565A;

    /* renamed from: B */
    private int f6566B;

    /* renamed from: C */
    private boolean f6567C;

    /* renamed from: D */
    private boolean f6568D;

    /* renamed from: E */
    private boolean f6569E;

    /* renamed from: F */
    private boolean f6570F;

    /* renamed from: G */
    private boolean f6571G;

    /* renamed from: H */
    private boolean f6572H;

    /* renamed from: I */
    private boolean f6573I;

    /* renamed from: J */
    private boolean f6574J;

    /* renamed from: K */
    private boolean f6575K;

    /* renamed from: L */
    private ByteBuffer[] f6576L;

    /* renamed from: M */
    private ByteBuffer[] f6577M;

    /* renamed from: N */
    private long f6578N;

    /* renamed from: O */
    private int f6579O;

    /* renamed from: P */
    private int f6580P;

    /* renamed from: Q */
    private ByteBuffer f6581Q;

    /* renamed from: R */
    private boolean f6582R;

    /* renamed from: S */
    private boolean f6583S;

    /* renamed from: T */
    private boolean f6584T;

    /* renamed from: X */
    private boolean f6588X;

    /* renamed from: Y */
    private boolean f6589Y;

    /* renamed from: Z */
    private long f6590Z;

    /* renamed from: a */
    protected C1441d f6591a;

    /* renamed from: aa */
    private long f6592aa;

    /* renamed from: ab */
    private boolean f6593ab;

    /* renamed from: ac */
    private boolean f6594ac;

    /* renamed from: ad */
    private boolean f6595ad;

    /* renamed from: ae */
    private boolean f6596ae;

    /* renamed from: af */
    private boolean f6597af;

    /* renamed from: c */
    private final AbstractC1660b f6598c;

    /* renamed from: d */
    private final AbstractC1468k<C1475o> f6599d;

    /* renamed from: e */
    private final boolean f6600e;

    /* renamed from: f */
    private final boolean f6601f;

    /* renamed from: g */
    private final float f6602g;

    /* renamed from: n */
    private Format f6609n;

    /* renamed from: o */
    private Format f6610o;

    /* renamed from: p */
    private DrmSession<C1475o> f6611p;

    /* renamed from: q */
    private DrmSession<C1475o> f6612q;

    /* renamed from: r */
    private MediaCrypto f6613r;

    /* renamed from: s */
    private boolean f6614s;

    /* renamed from: v */
    private MediaCodec f6617v;

    /* renamed from: w */
    private Format f6618w;

    /* renamed from: y */
    private ArrayDeque<C1659a> f6620y;

    /* renamed from: z */
    private DecoderInitializationException f6621z;

    /* renamed from: h */
    private final C1442e f6603h = new C1442e(0);

    /* renamed from: i */
    private final C1442e f6604i = new C1442e(0);

    /* renamed from: j */
    private final C2058x f6605j = new C2058x();

    /* renamed from: k */
    private final C2029y<Format> f6606k = new C2029y<>();

    /* renamed from: l */
    private final ArrayList<Long> f6607l = new ArrayList<>();

    /* renamed from: m */
    private final MediaCodec.BufferInfo f6608m = new MediaCodec.BufferInfo();

    /* renamed from: U */
    private int f6585U = 0;

    /* renamed from: V */
    private int f6586V = 0;

    /* renamed from: W */
    private int f6587W = 0;

    /* renamed from: x */
    private float f6619x = -1.0f;

    /* renamed from: u */
    private float f6616u = 1.0f;

    /* renamed from: t */
    private long f6615t = -9223372036854775807L;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderException.class */
    public static class DecoderException extends Exception {

        /* renamed from: a */
        public final C1659a f6622a;

        /* renamed from: b */
        public final String f6623b;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public DecoderException(java.lang.Throwable r5, androidx.media2.exoplayer.external.mediacodec.C1659a r6) {
            /*
                r4 = this;
                r0 = 0
                r7 = r0
                r0 = r6
                if (r0 != 0) goto Lc
                r0 = 0
                r8 = r0
                goto L12
            Lc:
                r0 = r6
                java.lang.String r0 = r0.f6646a
                r8 = r0
            L12:
                r0 = r8
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r8 = r0
                r0 = r8
                int r0 = r0.length()
                if (r0 == 0) goto L2d
                java.lang.String r0 = "Decoder failed: "
                r1 = r8
                java.lang.String r0 = r0.concat(r1)
                r8 = r0
                goto L38
            L2d:
                java.lang.String r0 = new java.lang.String
                r1 = r0
                java.lang.String r2 = "Decoder failed: "
                r1.<init>(r2)
                r8 = r0
            L38:
                r0 = r4
                r1 = r8
                r2 = r5
                r0.<init>(r1, r2)
                r0 = r4
                r1 = r6
                r0.f6622a = r1
                r0 = r7
                r6 = r0
                int r0 = androidx.media2.exoplayer.external.util.C1996ac.f8062a
                r1 = 21
                if (r0 < r1) goto L5f
                r0 = r7
                r6 = r0
                r0 = r5
                boolean r0 = r0 instanceof android.media.MediaCodec.CodecException
                if (r0 == 0) goto L5f
                r0 = r5
                android.media.MediaCodec$CodecException r0 = (android.media.MediaCodec.CodecException) r0
                java.lang.String r0 = r0.getDiagnosticInfo()
                r6 = r0
            L5f:
                r0 = r4
                r1 = r6
                r0.f6623b = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer.DecoderException.<init>(java.lang.Throwable, androidx.media2.exoplayer.external.mediacodec.a):void");
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException.class */
    public static class DecoderInitializationException extends Exception {

        /* renamed from: a */
        public final String f6624a;

        /* renamed from: b */
        public final boolean f6625b;

        /* renamed from: c */
        public final C1659a f6626c;

        /* renamed from: d */
        public final String f6627d;

        /* renamed from: e */
        public final DecoderInitializationException f6628e;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public DecoderInitializationException(androidx.media2.exoplayer.external.Format r10, java.lang.Throwable r11, boolean r12, int r13) {
            /*
                r9 = this;
                r0 = r10
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r14 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = r14
                java.lang.String r2 = java.lang.String.valueOf(r2)
                int r2 = r2.length()
                r3 = 36
                int r2 = r2 + r3
                r1.<init>(r2)
                r15 = r0
                r0 = r15
                java.lang.String r1 = "Decoder init failed: ["
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r15
                r1 = r13
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r15
                java.lang.String r1 = "], "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r15
                r1 = r14
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r15
                java.lang.String r0 = r0.toString()
                r14 = r0
                r0 = r10
                java.lang.String r0 = r0.sampleMimeType
                r15 = r0
                r0 = r13
                if (r0 >= 0) goto L52
                java.lang.String r0 = "neg_"
                r10 = r0
                goto L55
            L52:
                java.lang.String r0 = ""
                r10 = r0
            L55:
                r0 = r13
                int r0 = java.lang.Math.abs(r0)
                r13 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = r10
                int r2 = r2.length()
                r3 = 76
                int r2 = r2 + r3
                r1.<init>(r2)
                r16 = r0
                r0 = r16
                java.lang.String r1 = "androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer_"
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r16
                r1 = r10
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r16
                r1 = r13
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r14
                r2 = r11
                r3 = r15
                r4 = r12
                r5 = 0
                r6 = r16
                java.lang.String r6 = r6.toString()
                r7 = 0
                r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer.DecoderInitializationException.<init>(androidx.media2.exoplayer.external.Format, java.lang.Throwable, boolean, int):void");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public DecoderInitializationException(androidx.media2.exoplayer.external.Format r10, java.lang.Throwable r11, boolean r12, androidx.media2.exoplayer.external.mediacodec.C1659a r13) {
            /*
                r9 = this;
                r0 = r13
                java.lang.String r0 = r0.f6646a
                r14 = r0
                r0 = r10
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r15 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = r14
                java.lang.String r2 = java.lang.String.valueOf(r2)
                int r2 = r2.length()
                r3 = 23
                int r2 = r2 + r3
                r3 = r15
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r3 = r3.length()
                int r2 = r2 + r3
                r1.<init>(r2)
                r16 = r0
                r0 = r16
                java.lang.String r1 = "Decoder init failed: "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r16
                r1 = r14
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r16
                java.lang.String r1 = ", "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r16
                r1 = r15
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r16
                java.lang.String r0 = r0.toString()
                r15 = r0
                r0 = r10
                java.lang.String r0 = r0.sampleMimeType
                r14 = r0
                int r0 = androidx.media2.exoplayer.external.util.C1996ac.f8062a
                r1 = 21
                if (r0 < r1) goto L71
                r0 = r11
                boolean r0 = r0 instanceof android.media.MediaCodec.CodecException
                if (r0 == 0) goto L71
                r0 = r11
                android.media.MediaCodec$CodecException r0 = (android.media.MediaCodec.CodecException) r0
                java.lang.String r0 = r0.getDiagnosticInfo()
                r10 = r0
                goto L73
            L71:
                r0 = 0
                r10 = r0
            L73:
                r0 = r9
                r1 = r15
                r2 = r11
                r3 = r14
                r4 = r12
                r5 = r13
                r6 = r10
                r7 = 0
                r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer.DecoderInitializationException.<init>(androidx.media2.exoplayer.external.Format, java.lang.Throwable, boolean, androidx.media2.exoplayer.external.mediacodec.a):void");
        }

        private DecoderInitializationException(String str, Throwable th, String str2, boolean z, C1659a c1659a, String str3, DecoderInitializationException decoderInitializationException) {
            super(str, th);
            this.f6624a = str2;
            this.f6625b = z;
            this.f6626c = c1659a;
            this.f6627d = str3;
            this.f6628e = decoderInitializationException;
        }

        /* renamed from: a */
        static /* synthetic */ DecoderInitializationException m42453a(DecoderInitializationException decoderInitializationException, DecoderInitializationException decoderInitializationException2) {
            return new DecoderInitializationException(decoderInitializationException.getMessage(), decoderInitializationException.getCause(), decoderInitializationException.f6624a, decoderInitializationException.f6625b, decoderInitializationException.f6626c, decoderInitializationException.f6627d, decoderInitializationException2);
        }
    }

    public MediaCodecRenderer(int i, AbstractC1660b abstractC1660b, AbstractC1468k<C1475o> abstractC1468k, boolean z, boolean z2, float f) {
        super(i);
        this.f6598c = (AbstractC1660b) C1993a.m41690a(abstractC1660b);
        this.f6599d = abstractC1468k;
        this.f6600e = z;
        this.f6601f = z2;
        this.f6602g = f;
    }

    /* renamed from: H */
    private void m42473H() {
        if (C1996ac.f8062a < 21) {
            this.f6576L = null;
            this.f6577M = null;
        }
    }

    /* renamed from: I */
    private boolean m42472I() {
        return this.f6580P >= 0;
    }

    /* renamed from: J */
    private void m42471J() {
        this.f6579O = -1;
        this.f6603h.f5494c = null;
    }

    /* renamed from: K */
    private void m42470K() {
        this.f6580P = -1;
        this.f6581Q = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:93:0x0250 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0252  */
    /* renamed from: L */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m42469L() throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 876
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer.m42469L():boolean");
    }

    /* renamed from: M */
    private void m42468M() throws ExoPlaybackException {
        if (C1996ac.f8062a < 23) {
            return;
        }
        float mo41463a = mo41463a(this.f6616u, m42917t());
        float f = this.f6619x;
        if (f == mo41463a) {
            return;
        }
        if (mo41463a == -1.0f) {
            m42466O();
        } else if (f == -1.0f && mo41463a <= this.f6602g) {
        } else {
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", mo41463a);
            this.f6617v.setParameters(bundle);
            this.f6619x = mo41463a;
        }
    }

    /* renamed from: N */
    private void m42467N() throws ExoPlaybackException {
        if (C1996ac.f8062a < 23) {
            m42466O();
        } else if (!this.f6588X) {
            m42463R();
        } else {
            this.f6586V = 1;
            this.f6587W = 2;
        }
    }

    /* renamed from: O */
    private void m42466O() throws ExoPlaybackException {
        if (!this.f6588X) {
            m42464Q();
            return;
        }
        this.f6586V = 1;
        this.f6587W = 3;
    }

    /* renamed from: P */
    private void m42465P() throws ExoPlaybackException {
        int i = this.f6587W;
        if (i == 1) {
            m42474F();
        } else if (i == 2) {
            m42463R();
        } else if (i == 3) {
            m42464Q();
        } else {
            this.f6594ac = true;
            mo42454z();
        }
    }

    /* renamed from: Q */
    private void m42464Q() throws ExoPlaybackException {
        mo41472E();
        m42477A();
    }

    /* renamed from: R */
    private void m42463R() throws ExoPlaybackException {
        C1475o mo42863d = this.f6612q.mo42863d();
        if (mo42863d == null) {
            m42464Q();
        } else if (C1446c.f5518e.equals(mo42863d.f5590a)) {
            m42464Q();
        } else if (m42474F()) {
        } else {
            try {
                this.f6613r.setMediaDrmSession(mo42863d.f5591b);
                m42458b(this.f6612q);
                this.f6586V = 0;
                this.f6587W = 0;
            } catch (MediaCryptoException e) {
                throw ExoPlaybackException.m43169a(e, m42915v());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x0388 A[Catch: Exception -> 0x051f, TryCatch #0 {Exception -> 0x051f, blocks: (B:68:0x0233, B:70:0x023c, B:72:0x0248, B:74:0x0254, B:78:0x0266, B:80:0x026e, B:82:0x0279, B:85:0x0287, B:87:0x0290, B:89:0x029c, B:91:0x02a8, B:96:0x02bd, B:98:0x02cf, B:103:0x02e3, B:105:0x02f7, B:107:0x0304, B:112:0x0318, B:114:0x0326, B:116:0x032e, B:118:0x0339, B:120:0x0344, B:120:0x0344, B:123:0x034c, B:125:0x0358, B:127:0x0363, B:132:0x037a, B:134:0x0388, B:136:0x0393, B:136:0x0393, B:139:0x039b, B:141:0x03a7, B:144:0x03b6, B:146:0x03be, B:151:0x03d2, B:153:0x03e0, B:158:0x03f4, B:160:0x0408, B:162:0x0411, B:167:0x0425, B:169:0x043a, B:171:0x0445, B:171:0x0445, B:174:0x044d, B:177:0x045b, B:179:0x0464, B:181:0x0470, B:188:0x0486, B:193:0x0499, B:195:0x04af, B:197:0x04c0), top: B:223:0x0233 }] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x03e0 A[Catch: Exception -> 0x051f, TryCatch #0 {Exception -> 0x051f, blocks: (B:68:0x0233, B:70:0x023c, B:72:0x0248, B:74:0x0254, B:78:0x0266, B:80:0x026e, B:82:0x0279, B:85:0x0287, B:87:0x0290, B:89:0x029c, B:91:0x02a8, B:96:0x02bd, B:98:0x02cf, B:103:0x02e3, B:105:0x02f7, B:107:0x0304, B:112:0x0318, B:114:0x0326, B:116:0x032e, B:118:0x0339, B:120:0x0344, B:120:0x0344, B:123:0x034c, B:125:0x0358, B:127:0x0363, B:132:0x037a, B:134:0x0388, B:136:0x0393, B:136:0x0393, B:139:0x039b, B:141:0x03a7, B:144:0x03b6, B:146:0x03be, B:151:0x03d2, B:153:0x03e0, B:158:0x03f4, B:160:0x0408, B:162:0x0411, B:167:0x0425, B:169:0x043a, B:171:0x0445, B:171:0x0445, B:174:0x044d, B:177:0x045b, B:179:0x0464, B:181:0x0470, B:188:0x0486, B:193:0x0499, B:195:0x04af, B:197:0x04c0), top: B:223:0x0233 }] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0408 A[Catch: Exception -> 0x051f, TryCatch #0 {Exception -> 0x051f, blocks: (B:68:0x0233, B:70:0x023c, B:72:0x0248, B:74:0x0254, B:78:0x0266, B:80:0x026e, B:82:0x0279, B:85:0x0287, B:87:0x0290, B:89:0x029c, B:91:0x02a8, B:96:0x02bd, B:98:0x02cf, B:103:0x02e3, B:105:0x02f7, B:107:0x0304, B:112:0x0318, B:114:0x0326, B:116:0x032e, B:118:0x0339, B:120:0x0344, B:120:0x0344, B:123:0x034c, B:125:0x0358, B:127:0x0363, B:132:0x037a, B:134:0x0388, B:136:0x0393, B:136:0x0393, B:139:0x039b, B:141:0x03a7, B:144:0x03b6, B:146:0x03be, B:151:0x03d2, B:153:0x03e0, B:158:0x03f4, B:160:0x0408, B:162:0x0411, B:167:0x0425, B:169:0x043a, B:171:0x0445, B:171:0x0445, B:174:0x044d, B:177:0x045b, B:179:0x0464, B:181:0x0470, B:188:0x0486, B:193:0x0499, B:195:0x04af, B:197:0x04c0), top: B:223:0x0233 }] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x043a A[Catch: Exception -> 0x051f, TryCatch #0 {Exception -> 0x051f, blocks: (B:68:0x0233, B:70:0x023c, B:72:0x0248, B:74:0x0254, B:78:0x0266, B:80:0x026e, B:82:0x0279, B:85:0x0287, B:87:0x0290, B:89:0x029c, B:91:0x02a8, B:96:0x02bd, B:98:0x02cf, B:103:0x02e3, B:105:0x02f7, B:107:0x0304, B:112:0x0318, B:114:0x0326, B:116:0x032e, B:118:0x0339, B:120:0x0344, B:120:0x0344, B:123:0x034c, B:125:0x0358, B:127:0x0363, B:132:0x037a, B:134:0x0388, B:136:0x0393, B:136:0x0393, B:139:0x039b, B:141:0x03a7, B:144:0x03b6, B:146:0x03be, B:151:0x03d2, B:153:0x03e0, B:158:0x03f4, B:160:0x0408, B:162:0x0411, B:167:0x0425, B:169:0x043a, B:171:0x0445, B:171:0x0445, B:174:0x044d, B:177:0x045b, B:179:0x0464, B:181:0x0470, B:188:0x0486, B:193:0x0499, B:195:0x04af, B:197:0x04c0), top: B:223:0x0233 }] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0486 A[Catch: Exception -> 0x051f, TRY_ENTER, TryCatch #0 {Exception -> 0x051f, blocks: (B:68:0x0233, B:70:0x023c, B:72:0x0248, B:74:0x0254, B:78:0x0266, B:80:0x026e, B:82:0x0279, B:85:0x0287, B:87:0x0290, B:89:0x029c, B:91:0x02a8, B:96:0x02bd, B:98:0x02cf, B:103:0x02e3, B:105:0x02f7, B:107:0x0304, B:112:0x0318, B:114:0x0326, B:116:0x032e, B:118:0x0339, B:120:0x0344, B:120:0x0344, B:123:0x034c, B:125:0x0358, B:127:0x0363, B:132:0x037a, B:134:0x0388, B:136:0x0393, B:136:0x0393, B:139:0x039b, B:141:0x03a7, B:144:0x03b6, B:146:0x03be, B:151:0x03d2, B:153:0x03e0, B:158:0x03f4, B:160:0x0408, B:162:0x0411, B:167:0x0425, B:169:0x043a, B:171:0x0445, B:171:0x0445, B:174:0x044d, B:177:0x045b, B:179:0x0464, B:181:0x0470, B:188:0x0486, B:193:0x0499, B:195:0x04af, B:197:0x04c0), top: B:223:0x0233 }] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x04af A[Catch: Exception -> 0x051f, TRY_LEAVE, TryCatch #0 {Exception -> 0x051f, blocks: (B:68:0x0233, B:70:0x023c, B:72:0x0248, B:74:0x0254, B:78:0x0266, B:80:0x026e, B:82:0x0279, B:85:0x0287, B:87:0x0290, B:89:0x029c, B:91:0x02a8, B:96:0x02bd, B:98:0x02cf, B:103:0x02e3, B:105:0x02f7, B:107:0x0304, B:112:0x0318, B:114:0x0326, B:116:0x032e, B:118:0x0339, B:120:0x0344, B:120:0x0344, B:123:0x034c, B:125:0x0358, B:127:0x0363, B:132:0x037a, B:134:0x0388, B:136:0x0393, B:136:0x0393, B:139:0x039b, B:141:0x03a7, B:144:0x03b6, B:146:0x03be, B:151:0x03d2, B:153:0x03e0, B:158:0x03f4, B:160:0x0408, B:162:0x0411, B:167:0x0425, B:169:0x043a, B:171:0x0445, B:171:0x0445, B:174:0x044d, B:177:0x045b, B:179:0x0464, B:181:0x0470, B:188:0x0486, B:193:0x0499, B:195:0x04af, B:197:0x04c0), top: B:223:0x0233 }] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x04bb  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0536 A[Catch: Exception -> 0x0541, TRY_ENTER, TryCatch #7 {Exception -> 0x0541, blocks: (B:35:0x012c, B:39:0x0142, B:41:0x0151, B:61:0x01fc, B:64:0x0221, B:66:0x022c, B:199:0x04c7, B:207:0x0536, B:209:0x0540), top: B:237:0x012c }] */
    /* JADX WARN: Type inference failed for: r0v174, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m42461a(android.media.MediaCrypto r10, boolean r11) throws androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer.DecoderInitializationException {
        /*
            Method dump skipped, instructions count: 1495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer.m42461a(android.media.MediaCrypto, boolean):void");
    }

    /* renamed from: a */
    private void m42460a(DrmSession<C1475o> drmSession) {
        AbstractC1467j.m42869a(this.f6612q, drmSession);
        this.f6612q = drmSession;
    }

    /* renamed from: b */
    private void m42458b(DrmSession<C1475o> drmSession) {
        AbstractC1467j.m42869a(this.f6611p, drmSession);
        this.f6611p = drmSession;
    }

    /* renamed from: b */
    private boolean m42459b(long j, long j2) throws ExoPlaybackException {
        boolean z;
        int i;
        boolean z2;
        if (!m42472I()) {
            if (!this.f6571G || !this.f6589Y) {
                i = this.f6617v.dequeueOutputBuffer(this.f6608m, 0L);
            } else {
                try {
                    i = this.f6617v.dequeueOutputBuffer(this.f6608m, 0L);
                } catch (IllegalStateException e) {
                    m42465P();
                    if (!this.f6594ac) {
                        return false;
                    }
                    mo41472E();
                    return false;
                }
            }
            if (i < 0) {
                if (i == -2) {
                    MediaFormat outputFormat = this.f6617v.getOutputFormat();
                    if (this.f6566B != 0 && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
                        this.f6574J = true;
                        return true;
                    }
                    if (this.f6572H) {
                        outputFormat.setInteger("channel-count", 1);
                    }
                    mo41458a(this.f6617v, outputFormat);
                    return true;
                } else if (i == -3) {
                    if (C1996ac.f8062a >= 21) {
                        return true;
                    }
                    this.f6577M = this.f6617v.getOutputBuffers();
                    return true;
                } else if (!this.f6575K) {
                    return false;
                } else {
                    if (!this.f6593ab && this.f6586V != 2) {
                        return false;
                    }
                    m42465P();
                    return false;
                }
            } else if (this.f6574J) {
                this.f6574J = false;
                this.f6617v.releaseOutputBuffer(i, false);
                return true;
            } else if (this.f6608m.size == 0 && (this.f6608m.flags & 4) != 0) {
                m42465P();
                return false;
            } else {
                this.f6580P = i;
                ByteBuffer outputBuffer = C1996ac.f8062a >= 21 ? this.f6617v.getOutputBuffer(i) : this.f6577M[i];
                this.f6581Q = outputBuffer;
                if (outputBuffer != null) {
                    outputBuffer.position(this.f6608m.offset);
                    this.f6581Q.limit(this.f6608m.offset + this.f6608m.size);
                }
                long j3 = this.f6608m.presentationTimeUs;
                int size = this.f6607l.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        z2 = false;
                        break;
                    } else if (this.f6607l.get(i2).longValue() == j3) {
                        this.f6607l.remove(i2);
                        z2 = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                this.f6582R = z2;
                this.f6583S = this.f6590Z == this.f6608m.presentationTimeUs;
                m42456d(this.f6608m.presentationTimeUs);
            }
        }
        if (!this.f6571G || !this.f6589Y) {
            z = mo41462a(j, j2, this.f6617v, this.f6581Q, this.f6580P, this.f6608m.flags, this.f6608m.presentationTimeUs, this.f6582R, this.f6583S);
        } else {
            try {
                z = mo41462a(j, j2, this.f6617v, this.f6581Q, this.f6580P, this.f6608m.flags, this.f6608m.presentationTimeUs, this.f6582R, this.f6583S);
            } catch (IllegalStateException e2) {
                m42465P();
                if (!this.f6594ac) {
                    return false;
                }
                mo41472E();
                return false;
            }
        }
        if (z) {
            mo41438c(this.f6608m.presentationTimeUs);
            boolean z3 = (this.f6608m.flags & 4) != 0;
            m42470K();
            if (!z3) {
                return true;
            }
            m42465P();
            return false;
        }
        return false;
    }

    /* renamed from: b */
    private boolean m42457b(boolean z) throws ExoPlaybackException {
        this.f6604i.mo41916a();
        int a = m42933a(this.f6605j, this.f6604i, z);
        if (a == -5) {
            mo41448a(this.f6605j);
            return true;
        } else if (a != -4 || !this.f6604i.m42911c()) {
            return false;
        } else {
            this.f6593ab = true;
            m42465P();
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00bd, code lost:
        if ("AFTB".equals(androidx.media2.exoplayer.external.util.C1996ac.f8065d) != false) goto L32;
     */
    /* renamed from: A */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m42477A() throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer.m42477A():void");
    }

    /* renamed from: B */
    protected boolean mo41473B() {
        return false;
    }

    /* renamed from: C */
    public final MediaCodec m42476C() {
        return this.f6617v;
    }

    /* renamed from: D */
    public final C1659a m42475D() {
        return this.f6565A;
    }

    /* renamed from: E */
    public void mo41472E() {
        this.f6620y = null;
        this.f6565A = null;
        this.f6618w = null;
        m42471J();
        m42470K();
        m42473H();
        this.f6595ad = false;
        this.f6578N = -9223372036854775807L;
        this.f6607l.clear();
        this.f6592aa = -9223372036854775807L;
        this.f6590Z = -9223372036854775807L;
        try {
            if (this.f6617v != null) {
                this.f6591a.f5485b++;
                this.f6617v.stop();
                this.f6617v.release();
            }
            this.f6617v = null;
            try {
                MediaCrypto mediaCrypto = this.f6613r;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
            }
        } catch (Throwable th) {
            this.f6617v = null;
            try {
                MediaCrypto mediaCrypto2 = this.f6613r;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
            }
        }
    }

    /* renamed from: F */
    public final boolean m42474F() throws ExoPlaybackException {
        boolean mo41471G = mo41471G();
        if (mo41471G) {
            m42477A();
        }
        return mo41471G;
    }

    /* renamed from: G */
    public boolean mo41471G() {
        MediaCodec mediaCodec = this.f6617v;
        if (mediaCodec == null) {
            return false;
        }
        if (this.f6587W == 3 || this.f6569E || (this.f6570F && this.f6589Y)) {
            mo41472E();
            return true;
        }
        mediaCodec.flush();
        m42471J();
        m42470K();
        this.f6578N = -9223372036854775807L;
        this.f6589Y = false;
        this.f6588X = false;
        this.f6596ae = true;
        this.f6573I = false;
        this.f6574J = false;
        this.f6582R = false;
        this.f6583S = false;
        this.f6595ad = false;
        this.f6607l.clear();
        this.f6592aa = -9223372036854775807L;
        this.f6590Z = -9223372036854775807L;
        this.f6586V = 0;
        this.f6587W = 0;
        this.f6585U = this.f6584T ? 1 : 0;
        return false;
    }

    /* renamed from: a */
    protected float mo41463a(float f, Format[] formatArr) {
        return -1.0f;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1376ah
    /* renamed from: a */
    public final int mo41178a(Format format) throws ExoPlaybackException {
        try {
            return mo41449a(this.f6598c, this.f6599d, format);
        } catch (MediaCodecUtil.DecoderQueryException e) {
            throw ExoPlaybackException.m43169a(e, m42915v());
        }
    }

    /* renamed from: a */
    protected int mo41453a(C1659a c1659a, Format format, Format format2) {
        return 0;
    }

    /* renamed from: a */
    protected abstract int mo41449a(AbstractC1660b abstractC1660b, AbstractC1468k<C1475o> abstractC1468k, Format format) throws MediaCodecUtil.DecoderQueryException;

    /* renamed from: a */
    protected DecoderException mo41445a(Throwable th, C1659a c1659a) {
        return new DecoderException(th, c1659a);
    }

    /* renamed from: a */
    protected abstract List<C1659a> mo41451a(AbstractC1660b abstractC1660b, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException;

    @Override // androidx.media2.exoplayer.external.AbstractC1435b, androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: a */
    public final void mo42462a(float f) throws ExoPlaybackException {
        this.f6616u = f;
        if (this.f6617v == null || this.f6587W == 3 || mo42923i_() == 0) {
            return;
        }
        m42468M();
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: a */
    public final void mo41180a(long j, long j2) throws ExoPlaybackException {
        boolean z;
        boolean z2;
        try {
            if (this.f6594ac) {
                mo42454z();
            } else if (this.f6609n == null && !m42457b(true)) {
            } else {
                m42477A();
                if (this.f6617v == null) {
                    this.f6591a.f5487d += m42930b(j);
                    m42457b(false);
                    return;
                }
                long elapsedRealtime = SystemClock.elapsedRealtime();
                C1994aa.m41683a("drainAndFeed");
                do {
                } while (m42459b(j, j2));
                do {
                    if (!m42469L()) {
                        break;
                    }
                    if (this.f6615t != -9223372036854775807L && SystemClock.elapsedRealtime() - elapsedRealtime >= this.f6615t) {
                        z2 = false;
                    }
                    z2 = true;
                } while (z2);
                C1994aa.m41684a();
            }
        } catch (IllegalStateException e) {
            if (C1996ac.f8062a < 21 || !(e instanceof MediaCodec.CodecException)) {
                StackTraceElement[] stackTrace = e.getStackTrace();
                z = stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec");
            } else {
                z = true;
            }
            if (!z) {
                throw e;
            }
            throw ExoPlaybackException.m43169a(mo41445a(e, this.f6565A), m42915v());
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: a */
    public void mo41179a(long j, boolean z) throws ExoPlaybackException {
        this.f6593ab = false;
        this.f6594ac = false;
        m42474F();
        this.f6606k.m41484a();
    }

    /* renamed from: a */
    protected void mo41458a(MediaCodec mediaCodec, MediaFormat mediaFormat) throws ExoPlaybackException {
    }

    /* renamed from: a */
    protected void mo41457a(C1442e c1442e) {
    }

    /* renamed from: a */
    protected abstract void mo41455a(C1659a c1659a, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto, float f);

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public void mo41448a(C2058x c2058x) throws ExoPlaybackException {
        Format format = this.f6609n;
        Format format2 = c2058x.f8282c;
        this.f6609n = format2;
        this.f6597af = true;
        if (!C1996ac.m41658a(format2.drmInitData, format == null ? null : format.drmInitData)) {
            if (format2.drmInitData == null) {
                m42460a((DrmSession<C1475o>) null);
            } else if (c2058x.f8280a) {
                m42460a((DrmSession<C1475o>) c2058x.f8281b);
            } else {
                AbstractC1468k<C1475o> abstractC1468k = this.f6599d;
                if (abstractC1468k == null) {
                    throw ExoPlaybackException.m43169a(new IllegalStateException("Media requires a DrmSessionManager"), m42915v());
                }
                DrmSession<C1475o> mo42868a = abstractC1468k.mo42868a(Looper.myLooper(), format2.drmInitData);
                DrmSession<C1475o> drmSession = this.f6612q;
                if (drmSession != null) {
                    drmSession.mo42860g();
                }
                this.f6612q = mo42868a;
            }
        }
        if (this.f6617v == null) {
            m42477A();
            return;
        }
        DrmSession<C1475o> drmSession2 = this.f6612q;
        if ((drmSession2 == null && this.f6611p != null) || ((drmSession2 != null && this.f6611p == null) || ((drmSession2 != null && !this.f6565A.f6652g) || (C1996ac.f8062a < 23 && this.f6612q != this.f6611p)))) {
            m42466O();
            return;
        }
        int mo41453a = mo41453a(this.f6565A, this.f6618w, format2);
        if (mo41453a == 0) {
            m42466O();
        } else if (mo41453a == 1) {
            this.f6618w = format2;
            m42468M();
            if (this.f6612q != this.f6611p) {
                m42467N();
            } else if (!this.f6588X) {
            } else {
                this.f6586V = 1;
                this.f6587W = 1;
            }
        } else if (mo41453a != 2) {
            if (mo41453a != 3) {
                throw new IllegalStateException();
            }
            this.f6618w = format2;
            m42468M();
            if (this.f6612q == this.f6611p) {
                return;
            }
            m42467N();
        } else if (this.f6567C) {
            m42466O();
        } else {
            this.f6584T = true;
            this.f6585U = 1;
            int i = this.f6566B;
            boolean z = true;
            if (i != 2) {
                z = i == 1 && format2.width == this.f6618w.width && format2.height == this.f6618w.height;
            }
            this.f6573I = z;
            this.f6618w = format2;
            m42468M();
            if (this.f6612q == this.f6611p) {
                return;
            }
            m42467N();
        }
    }

    /* renamed from: a */
    protected void mo41446a(String str, long j, long j2) {
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: a */
    public void mo41444a(boolean z) throws ExoPlaybackException {
        this.f6591a = new C1441d();
    }

    /* renamed from: a */
    protected abstract boolean mo41462a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z, boolean z2) throws ExoPlaybackException;

    /* renamed from: a */
    protected boolean mo41456a(C1659a c1659a) {
        return true;
    }

    /* renamed from: b */
    protected void mo41441b(C1442e c1442e) throws ExoPlaybackException {
    }

    /* renamed from: c */
    protected void mo41438c(long j) {
    }

    /* renamed from: d */
    public final Format m42456d(long j) {
        Format m41483a = this.f6606k.m41483a(j);
        if (m41483a != null) {
            this.f6610o = m41483a;
        }
        return m41483a;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b, androidx.media2.exoplayer.external.AbstractC1376ah
    /* renamed from: o */
    public final int mo42455o() {
        return 8;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: p */
    public void mo41435p() {
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: q */
    public void mo41434q() {
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: r */
    public void mo41429r() {
        this.f6609n = null;
        if (this.f6612q == null && this.f6611p == null) {
            mo41471G();
        } else {
            mo41433s();
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: s */
    public void mo41433s() {
        try {
            mo41472E();
        } finally {
            m42460a((DrmSession<C1475o>) null);
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: x */
    public boolean mo41174x() {
        if (this.f6609n == null || this.f6595ad) {
            return false;
        }
        if (m42914w() || m42472I()) {
            return true;
        }
        return this.f6578N != -9223372036854775807L && SystemClock.elapsedRealtime() < this.f6578N;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: y */
    public boolean mo41173y() {
        return this.f6594ac;
    }

    /* renamed from: z */
    protected void mo42454z() throws ExoPlaybackException {
    }
}
