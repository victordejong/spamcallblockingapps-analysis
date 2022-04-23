package androidx.media2.exoplayer.external.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Looper;
import android.os.SystemClock;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.b;
import androidx.media2.exoplayer.external.b.d;
import androidx.media2.exoplayer.external.b.e;
import androidx.media2.exoplayer.external.c;
import androidx.media2.exoplayer.external.drm.DrmSession;
import androidx.media2.exoplayer.external.drm.j;
import androidx.media2.exoplayer.external.drm.k;
import androidx.media2.exoplayer.external.drm.o;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
import androidx.media2.exoplayer.external.util.a;
import androidx.media2.exoplayer.external.util.aa;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.y;
import androidx.media2.exoplayer.external.x;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer.class */
public abstract class MediaCodecRenderer extends b {

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f3417b = ac.g("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");
    private a A;
    private int B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean J;
    private boolean K;
    private ByteBuffer[] L;
    private ByteBuffer[] M;
    private long N;
    private int O;
    private int P;
    private ByteBuffer Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private boolean X;
    private boolean Y;
    private long Z;

    /* renamed from: a  reason: collision with root package name */
    protected d f3418a;
    private long aa;
    private boolean ab;
    private boolean ac;
    private boolean ad;
    private boolean ae;
    private boolean af;

    /* renamed from: c  reason: collision with root package name */
    private final b f3419c;

    /* renamed from: d  reason: collision with root package name */
    private final k<o> f3420d;
    private final boolean e;
    private final boolean f;
    private final float g;
    private Format n;
    private Format o;
    private DrmSession<o> p;
    private DrmSession<o> q;
    private MediaCrypto r;
    private boolean s;
    private MediaCodec v;
    private Format w;
    private ArrayDeque<a> y;
    private DecoderInitializationException z;
    private final e h = new e(0);
    private final e i = new e(0);
    private final x j = new x();
    private final y<Format> k = new y<>();
    private final ArrayList<Long> l = new ArrayList<>();
    private final MediaCodec.BufferInfo m = new MediaCodec.BufferInfo();
    private int U = 0;
    private int V = 0;
    private int W = 0;
    private float x = -1.0f;
    private float u = 1.0f;
    private long t = -9223372036854775807L;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderException.class */
    public static class DecoderException extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final a f3421a;

        /* renamed from: b  reason: collision with root package name */
        public final String f3422b;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public DecoderException(java.lang.Throwable r5, androidx.media2.exoplayer.external.mediacodec.a r6) {
            /*
                r4 = this;
                r0 = 0
                r7 = r0
                r0 = r6
                if (r0 != 0) goto L_0x000c
                r0 = 0
                r8 = r0
                goto L_0x0012
            L_0x000c:
                r0 = r6
                java.lang.String r0 = r0.f3436a
                r8 = r0
            L_0x0012:
                r0 = r8
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r8 = r0
                r0 = r8
                int r0 = r0.length()
                if (r0 == 0) goto L_0x002d
                java.lang.String r0 = "Decoder failed: "
                r1 = r8
                java.lang.String r0 = r0.concat(r1)
                r8 = r0
                goto L_0x0038
            L_0x002d:
                java.lang.String r0 = new java.lang.String
                r1 = r0
                java.lang.String r2 = "Decoder failed: "
                r1.<init>(r2)
                r8 = r0
            L_0x0038:
                r0 = r4
                r1 = r8
                r2 = r5
                r0.<init>(r1, r2)
                r0 = r4
                r1 = r6
                r0.f3421a = r1
                r0 = r7
                r6 = r0
                int r0 = androidx.media2.exoplayer.external.util.ac.f4119a
                r1 = 21
                if (r0 < r1) goto L_0x005f
                r0 = r7
                r6 = r0
                r0 = r5
                boolean r0 = r0 instanceof android.media.MediaCodec.CodecException
                if (r0 == 0) goto L_0x005f
                r0 = r5
                android.media.MediaCodec$CodecException r0 = (android.media.MediaCodec.CodecException) r0
                java.lang.String r0 = r0.getDiagnosticInfo()
                r6 = r0
            L_0x005f:
                r0 = r4
                r1 = r6
                r0.f3422b = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer.DecoderException.<init>(java.lang.Throwable, androidx.media2.exoplayer.external.mediacodec.a):void");
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException.class */
    public static class DecoderInitializationException extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final String f3423a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f3424b;

        /* renamed from: c  reason: collision with root package name */
        public final a f3425c;

        /* renamed from: d  reason: collision with root package name */
        public final String f3426d;
        public final DecoderInitializationException e;

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
                if (r0 >= 0) goto L_0x0052
                java.lang.String r0 = "neg_"
                r10 = r0
                goto L_0x0055
            L_0x0052:
                java.lang.String r0 = ""
                r10 = r0
            L_0x0055:
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
        public DecoderInitializationException(androidx.media2.exoplayer.external.Format r10, java.lang.Throwable r11, boolean r12, androidx.media2.exoplayer.external.mediacodec.a r13) {
            /*
                r9 = this;
                r0 = r13
                java.lang.String r0 = r0.f3436a
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
                int r0 = androidx.media2.exoplayer.external.util.ac.f4119a
                r1 = 21
                if (r0 < r1) goto L_0x0071
                r0 = r11
                boolean r0 = r0 instanceof android.media.MediaCodec.CodecException
                if (r0 == 0) goto L_0x0071
                r0 = r11
                android.media.MediaCodec$CodecException r0 = (android.media.MediaCodec.CodecException) r0
                java.lang.String r0 = r0.getDiagnosticInfo()
                r10 = r0
                goto L_0x0073
            L_0x0071:
                r0 = 0
                r10 = r0
            L_0x0073:
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

        private DecoderInitializationException(String str, Throwable th, String str2, boolean z, a aVar, String str3, DecoderInitializationException decoderInitializationException) {
            super(str, th);
            this.f3423a = str2;
            this.f3424b = z;
            this.f3425c = aVar;
            this.f3426d = str3;
            this.e = decoderInitializationException;
        }

        static /* synthetic */ DecoderInitializationException a(DecoderInitializationException decoderInitializationException, DecoderInitializationException decoderInitializationException2) {
            return new DecoderInitializationException(decoderInitializationException.getMessage(), decoderInitializationException.getCause(), decoderInitializationException.f3423a, decoderInitializationException.f3424b, decoderInitializationException.f3425c, decoderInitializationException.f3426d, decoderInitializationException2);
        }
    }

    public MediaCodecRenderer(int i, b bVar, k<o> kVar, boolean z, boolean z2, float f) {
        super(i);
        this.f3419c = (b) a.a(bVar);
        this.f3420d = kVar;
        this.e = z;
        this.f = z2;
        this.g = f;
    }

    private void H() {
        if (ac.f4119a < 21) {
            this.L = null;
            this.M = null;
        }
    }

    private boolean I() {
        return this.P >= 0;
    }

    private void J() {
        this.O = -1;
        this.h.f2949c = null;
    }

    private void K() {
        this.P = -1;
        this.Q = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:93:0x0250 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0252  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean L() throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 876
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer.L():boolean");
    }

    private void M() throws ExoPlaybackException {
        if (ac.f4119a >= 23) {
            float a2 = a(this.u, t());
            float f = this.x;
            if (f == a2) {
                return;
            }
            if (a2 == -1.0f) {
                O();
            } else if (f != -1.0f || a2 > this.g) {
                Bundle bundle = new Bundle();
                bundle.putFloat("operating-rate", a2);
                this.v.setParameters(bundle);
                this.x = a2;
            }
        }
    }

    private void N() throws ExoPlaybackException {
        if (ac.f4119a < 23) {
            O();
        } else if (this.X) {
            this.V = 1;
            this.W = 2;
        } else {
            R();
        }
    }

    private void O() throws ExoPlaybackException {
        if (this.X) {
            this.V = 1;
            this.W = 3;
            return;
        }
        Q();
    }

    private void P() throws ExoPlaybackException {
        int i = this.W;
        if (i == 1) {
            F();
        } else if (i == 2) {
            R();
        } else if (i != 3) {
            this.ac = true;
            z();
        } else {
            Q();
        }
    }

    private void Q() throws ExoPlaybackException {
        E();
        A();
    }

    private void R() throws ExoPlaybackException {
        o d2 = this.q.d();
        if (d2 == null) {
            Q();
        } else if (c.e.equals(d2.f2997a)) {
            Q();
        } else if (!F()) {
            try {
                this.r.setMediaDrmSession(d2.f2998b);
                b(this.q);
                this.V = 0;
                this.W = 0;
            } catch (MediaCryptoException e) {
                throw ExoPlaybackException.a(e, v());
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(android.media.MediaCrypto r10, boolean r11) throws androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer.DecoderInitializationException {
        /*
            Method dump skipped, instructions count: 1495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer.a(android.media.MediaCrypto, boolean):void");
    }

    private void a(DrmSession<o> drmSession) {
        j.a(this.q, drmSession);
        this.q = drmSession;
    }

    private void b(DrmSession<o> drmSession) {
        j.a(this.p, drmSession);
        this.p = drmSession;
    }

    private boolean b(long j, long j2) throws ExoPlaybackException {
        boolean z;
        int i;
        boolean z2;
        if (!I()) {
            if (!this.G || !this.Y) {
                i = this.v.dequeueOutputBuffer(this.m, 0L);
            } else {
                try {
                    i = this.v.dequeueOutputBuffer(this.m, 0L);
                } catch (IllegalStateException e) {
                    P();
                    if (!this.ac) {
                        return false;
                    }
                    E();
                    return false;
                }
            }
            if (i < 0) {
                if (i == -2) {
                    MediaFormat outputFormat = this.v.getOutputFormat();
                    if (this.B != 0 && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
                        this.J = true;
                        return true;
                    }
                    if (this.H) {
                        outputFormat.setInteger("channel-count", 1);
                    }
                    a(this.v, outputFormat);
                    return true;
                } else if (i == -3) {
                    if (ac.f4119a >= 21) {
                        return true;
                    }
                    this.M = this.v.getOutputBuffers();
                    return true;
                } else if (!this.K) {
                    return false;
                } else {
                    if (!this.ab && this.V != 2) {
                        return false;
                    }
                    P();
                    return false;
                }
            } else if (this.J) {
                this.J = false;
                this.v.releaseOutputBuffer(i, false);
                return true;
            } else if (this.m.size != 0 || (this.m.flags & 4) == 0) {
                this.P = i;
                ByteBuffer outputBuffer = ac.f4119a >= 21 ? this.v.getOutputBuffer(i) : this.M[i];
                this.Q = outputBuffer;
                if (outputBuffer != null) {
                    outputBuffer.position(this.m.offset);
                    this.Q.limit(this.m.offset + this.m.size);
                }
                long j3 = this.m.presentationTimeUs;
                int size = this.l.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        z2 = false;
                        break;
                    } else if (this.l.get(i2).longValue() == j3) {
                        this.l.remove(i2);
                        z2 = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                this.R = z2;
                this.S = this.Z == this.m.presentationTimeUs;
                d(this.m.presentationTimeUs);
            } else {
                P();
                return false;
            }
        }
        if (!this.G || !this.Y) {
            z = a(j, j2, this.v, this.Q, this.P, this.m.flags, this.m.presentationTimeUs, this.R, this.S);
        } else {
            try {
                z = a(j, j2, this.v, this.Q, this.P, this.m.flags, this.m.presentationTimeUs, this.R, this.S);
            } catch (IllegalStateException e2) {
                P();
                if (!this.ac) {
                    return false;
                }
                E();
                return false;
            }
        }
        if (!z) {
            return false;
        }
        c(this.m.presentationTimeUs);
        boolean z3 = (this.m.flags & 4) != 0;
        K();
        if (!z3) {
            return true;
        }
        P();
        return false;
    }

    private boolean b(boolean z) throws ExoPlaybackException {
        this.i.a();
        int a2 = a(this.j, this.i, z);
        if (a2 == -5) {
            a(this.j);
            return true;
        } else if (a2 != -4 || !this.i.c()) {
            return false;
        } else {
            this.ab = true;
            P();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00bd, code lost:
        if ("AFTB".equals(androidx.media2.exoplayer.external.util.ac.f4122d) != false) goto L_0x00c0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A() throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer.A():void");
    }

    protected boolean B() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final MediaCodec C() {
        return this.v;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final a D() {
        return this.A;
    }

    public void E() {
        this.y = null;
        this.A = null;
        this.w = null;
        J();
        K();
        H();
        this.ad = false;
        this.N = -9223372036854775807L;
        this.l.clear();
        this.aa = -9223372036854775807L;
        this.Z = -9223372036854775807L;
        try {
            if (this.v != null) {
                this.f3418a.f2945b++;
                this.v.stop();
                this.v.release();
            }
            this.v = null;
            try {
                MediaCrypto mediaCrypto = this.r;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
            }
        } catch (Throwable th) {
            this.v = null;
            try {
                MediaCrypto mediaCrypto2 = this.r;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean F() throws ExoPlaybackException {
        boolean G = G();
        if (G) {
            A();
        }
        return G;
    }

    public boolean G() {
        MediaCodec mediaCodec = this.v;
        if (mediaCodec == null) {
            return false;
        }
        if (this.W == 3 || this.E || (this.F && this.Y)) {
            E();
            return true;
        }
        mediaCodec.flush();
        J();
        K();
        this.N = -9223372036854775807L;
        this.Y = false;
        this.X = false;
        this.ae = true;
        this.I = false;
        this.J = false;
        this.R = false;
        this.S = false;
        this.ad = false;
        this.l.clear();
        this.aa = -9223372036854775807L;
        this.Z = -9223372036854775807L;
        this.V = 0;
        this.W = 0;
        this.U = this.T ? 1 : 0;
        return false;
    }

    protected float a(float f, Format[] formatArr) {
        return -1.0f;
    }

    @Override // androidx.media2.exoplayer.external.ah
    public final int a(Format format) throws ExoPlaybackException {
        try {
            return a(this.f3419c, this.f3420d, format);
        } catch (MediaCodecUtil.DecoderQueryException e) {
            throw ExoPlaybackException.a(e, v());
        }
    }

    protected int a(a aVar, Format format, Format format2) {
        return 0;
    }

    protected abstract int a(b bVar, k<o> kVar, Format format) throws MediaCodecUtil.DecoderQueryException;

    protected DecoderException a(Throwable th, a aVar) {
        return new DecoderException(th, aVar);
    }

    protected abstract List<a> a(b bVar, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException;

    @Override // androidx.media2.exoplayer.external.b, androidx.media2.exoplayer.external.ag
    public final void a(float f) throws ExoPlaybackException {
        this.u = f;
        if (this.v != null && this.W != 3 && i_() != 0) {
            M();
        }
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final void a(long j, long j2) throws ExoPlaybackException {
        boolean z;
        boolean z2;
        try {
            if (this.ac) {
                z();
            } else if (this.n != null || b(true)) {
                A();
                if (this.v != null) {
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    aa.a("drainAndFeed");
                    do {
                    } while (b(j, j2));
                    do {
                        if (!L()) {
                            break;
                        }
                        if (this.t != -9223372036854775807L && SystemClock.elapsedRealtime() - elapsedRealtime >= this.t) {
                            z2 = false;
                        }
                        z2 = true;
                    } while (z2);
                    aa.a();
                    return;
                }
                this.f3418a.f2947d += b(j);
                b(false);
            }
        } catch (IllegalStateException e) {
            if (ac.f4119a < 21 || !(e instanceof MediaCodec.CodecException)) {
                StackTraceElement[] stackTrace = e.getStackTrace();
                z = stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec");
            } else {
                z = true;
            }
            if (z) {
                throw ExoPlaybackException.a(a(e, this.A), v());
            }
            throw e;
        }
    }

    @Override // androidx.media2.exoplayer.external.b
    public void a(long j, boolean z) throws ExoPlaybackException {
        this.ab = false;
        this.ac = false;
        F();
        this.k.a();
    }

    protected void a(MediaCodec mediaCodec, MediaFormat mediaFormat) throws ExoPlaybackException {
    }

    protected void a(e eVar) {
    }

    protected abstract void a(a aVar, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto, float f);

    /* JADX WARN: Multi-variable type inference failed */
    public void a(x xVar) throws ExoPlaybackException {
        Format format = this.n;
        Format format2 = xVar.f4257c;
        this.n = format2;
        this.af = true;
        if (!ac.a(format2.drmInitData, format == null ? null : format.drmInitData)) {
            if (format2.drmInitData == null) {
                a((DrmSession<o>) null);
            } else if (xVar.f4255a) {
                a((DrmSession<o>) xVar.f4256b);
            } else {
                k<o> kVar = this.f3420d;
                if (kVar != null) {
                    DrmSession<o> a2 = kVar.a(Looper.myLooper(), format2.drmInitData);
                    DrmSession<o> drmSession = this.q;
                    if (drmSession != null) {
                        drmSession.g();
                    }
                    this.q = a2;
                } else {
                    throw ExoPlaybackException.a(new IllegalStateException("Media requires a DrmSessionManager"), v());
                }
            }
        }
        if (this.v == null) {
            A();
            return;
        }
        DrmSession<o> drmSession2 = this.q;
        if ((drmSession2 != null || this.p == null) && ((drmSession2 == null || this.p != null) && ((drmSession2 == null || this.A.g) && (ac.f4119a >= 23 || this.q == this.p)))) {
            int a3 = a(this.A, this.w, format2);
            if (a3 == 0) {
                O();
            } else if (a3 == 1) {
                this.w = format2;
                M();
                if (this.q != this.p) {
                    N();
                } else if (this.X) {
                    this.V = 1;
                    this.W = 1;
                }
            } else if (a3 != 2) {
                if (a3 == 3) {
                    this.w = format2;
                    M();
                    if (this.q != this.p) {
                        N();
                        return;
                    }
                    return;
                }
                throw new IllegalStateException();
            } else if (this.C) {
                O();
            } else {
                this.T = true;
                this.U = 1;
                int i = this.B;
                boolean z = true;
                if (i != 2) {
                    z = i == 1 && format2.width == this.w.width && format2.height == this.w.height;
                }
                this.I = z;
                this.w = format2;
                M();
                if (this.q != this.p) {
                    N();
                }
            }
        } else {
            O();
        }
    }

    protected void a(String str, long j, long j2) {
    }

    @Override // androidx.media2.exoplayer.external.b
    public void a(boolean z) throws ExoPlaybackException {
        this.f3418a = new d();
    }

    protected abstract boolean a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z, boolean z2) throws ExoPlaybackException;

    protected boolean a(a aVar) {
        return true;
    }

    protected void b(e eVar) throws ExoPlaybackException {
    }

    protected void c(long j) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Format d(long j) {
        Format a2 = this.k.a(j);
        if (a2 != null) {
            this.o = a2;
        }
        return a2;
    }

    @Override // androidx.media2.exoplayer.external.b, androidx.media2.exoplayer.external.ah
    public final int o() {
        return 8;
    }

    @Override // androidx.media2.exoplayer.external.b
    public void p() {
    }

    @Override // androidx.media2.exoplayer.external.b
    public void q() {
    }

    @Override // androidx.media2.exoplayer.external.b
    public void r() {
        this.n = null;
        if (this.q == null && this.p == null) {
            G();
        } else {
            s();
        }
    }

    @Override // androidx.media2.exoplayer.external.b
    public void s() {
        try {
            E();
        } finally {
            a((DrmSession<o>) null);
        }
    }

    @Override // androidx.media2.exoplayer.external.ag
    public boolean x() {
        if (this.n == null || this.ad) {
            return false;
        }
        if (w() || I()) {
            return true;
        }
        return this.N != -9223372036854775807L && SystemClock.elapsedRealtime() < this.N;
    }

    @Override // androidx.media2.exoplayer.external.ag
    public boolean y() {
        return this.ac;
    }

    protected void z() throws ExoPlaybackException {
    }
}
