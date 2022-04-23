package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.o;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.decoder.b;
import com.google.android.exoplayer2.decoder.d;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.h;
import com.google.android.exoplayer2.drm.j;
import com.google.android.exoplayer2.e;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.mediacodec.f;
import com.google.android.exoplayer2.q;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.ac;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.s;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecRenderer.class */
public abstract class MediaCodecRenderer extends e {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f21388a = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    private f C;
    private Format D;
    private MediaFormat E;
    private boolean F;
    private float G;
    private ArrayDeque<g> H;
    private DecoderInitializationException I;
    private g J;
    private int K;
    private boolean L;
    private boolean M;
    private boolean N;
    private boolean O;
    private boolean P;
    private boolean Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private boolean U;
    private e V;
    private long W;
    private int X;
    private int Y;
    private ByteBuffer Z;
    private boolean aa;
    private boolean ab;
    private boolean ac;
    private boolean ad;
    private boolean ae;
    private boolean af;
    private int ag;
    private int ah;
    private int ai;
    private boolean aj;
    private boolean ak;
    private boolean al;
    private long am;
    private long an;
    private boolean ao;
    private boolean ap;
    private boolean aq;
    private boolean ar;
    private ExoPlaybackException as;
    private int av;

    /* renamed from: b  reason: collision with root package name */
    public boolean f21389b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f21390c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f21391d;
    protected d e;
    private final f.a f;
    private final h g;
    private final boolean h;
    private final float i;
    private final d m;
    private Format t;
    private Format u;
    private DrmSession v;
    private DrmSession w;
    private MediaCrypto x;
    private boolean y;
    private final DecoderInputBuffer j = new DecoderInputBuffer(0);
    private final DecoderInputBuffer k = new DecoderInputBuffer(0);
    private final DecoderInputBuffer l = new DecoderInputBuffer(2);
    private final ac<Format> n = new ac<>();
    private final ArrayList<Long> o = new ArrayList<>();
    private final MediaCodec.BufferInfo p = new MediaCodec.BufferInfo();
    private float A = 1.0f;
    private float B = 1.0f;
    private long z = -9223372036854775807L;
    private final long[] q = new long[10];
    private final long[] r = new long[10];
    private final long[] s = new long[10];
    private long at = -9223372036854775807L;
    private long au = -9223372036854775807L;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException.class */
    public static class DecoderInitializationException extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final String f21392a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f21393b;

        /* renamed from: c  reason: collision with root package name */
        public final g f21394c;

        /* renamed from: d  reason: collision with root package name */
        public final String f21395d;
        public final DecoderInitializationException e;

        public DecoderInitializationException(Format format, Throwable th, boolean z, int i) {
            this("Decoder init failed: [" + i + "], " + format, th, format.sampleMimeType, z, null, "com.google.android.exoplayer2.mediacodec.MediaCodecRenderer_" + (i < 0 ? "neg_" : "") + Math.abs(i), null);
        }

        public DecoderInitializationException(Format format, Throwable th, boolean z, g gVar) {
            this("Decoder init failed: " + gVar.f21428a + ", " + format, th, format.sampleMimeType, z, gVar, (af.f22275a < 21 || !(th instanceof MediaCodec.CodecException)) ? null : ((MediaCodec.CodecException) th).getDiagnosticInfo(), null);
        }

        private DecoderInitializationException(String str, Throwable th, String str2, boolean z, g gVar, String str3, DecoderInitializationException decoderInitializationException) {
            super(str, th);
            this.f21392a = str2;
            this.f21393b = z;
            this.f21394c = gVar;
            this.f21395d = str3;
            this.e = decoderInitializationException;
        }

        static /* synthetic */ DecoderInitializationException a(DecoderInitializationException decoderInitializationException, DecoderInitializationException decoderInitializationException2) {
            return new DecoderInitializationException(decoderInitializationException.getMessage(), decoderInitializationException.getCause(), decoderInitializationException.f21392a, decoderInitializationException.f21393b, decoderInitializationException.f21394c, decoderInitializationException.f21395d, decoderInitializationException2);
        }
    }

    public MediaCodecRenderer(int i, f.a aVar, h hVar, boolean z, float f) {
        super(i);
        this.f = aVar;
        this.g = (h) a.b(hVar);
        this.h = z;
        this.i = f;
        d dVar = new d();
        this.m = dVar;
        dVar.c(0);
        dVar.f20822c.order(ByteOrder.nativeOrder());
        Q();
    }

    private void N() {
        this.ae = false;
        this.m.a();
        this.l.a();
        this.ad = false;
        this.ac = false;
    }

    private boolean O() {
        if (this.C == null) {
            return false;
        }
        if (this.ai == 3 || this.M || ((this.N && !this.al) || (this.O && this.ak))) {
            H();
            return true;
        }
        P();
        return false;
    }

    private void P() {
        try {
            this.C.d();
        } finally {
            J();
        }
    }

    private void Q() {
        J();
        this.as = null;
        this.V = null;
        this.H = null;
        this.J = null;
        this.D = null;
        this.E = null;
        this.F = false;
        this.al = false;
        this.G = -1.0f;
        this.K = 0;
        this.L = false;
        this.M = false;
        this.N = false;
        this.O = false;
        this.P = false;
        this.Q = false;
        this.R = false;
        this.U = false;
        this.af = false;
        this.ag = 0;
        this.y = false;
    }

    private boolean R() {
        return this.Y >= 0;
    }

    private void S() {
        this.X = -1;
        this.k.f20822c = null;
    }

    private void T() {
        this.Y = -1;
        this.Z = null;
    }

    private boolean U() throws ExoPlaybackException {
        f fVar = this.C;
        if (fVar == null || this.ah == 2 || this.ao) {
            return false;
        }
        if (this.X < 0) {
            int b2 = fVar.b();
            this.X = b2;
            if (b2 < 0) {
                return false;
            }
            this.k.f20822c = this.C.a(b2);
            this.k.a();
        }
        if (this.ah == 1) {
            if (!this.U) {
                this.ak = true;
                this.C.a(this.X, 0, 0L, 4);
                S();
            }
            this.ah = 2;
            return false;
        } else if (this.S) {
            this.S = false;
            ByteBuffer byteBuffer = this.k.f20822c;
            byte[] bArr = f21388a;
            byteBuffer.put(bArr);
            this.C.a(this.X, bArr.length, 0L, 0);
            S();
            this.aj = true;
            return true;
        } else {
            if (this.ag == 1) {
                for (int i = 0; i < this.D.initializationData.size(); i++) {
                    this.k.f20822c.put(this.D.initializationData.get(i));
                }
                this.ag = 2;
            }
            int position = this.k.f20822c.position();
            q t = t();
            int a2 = a(t, this.k, false);
            if (g()) {
                this.an = this.am;
            }
            if (a2 == -3) {
                return false;
            }
            if (a2 == -5) {
                if (this.ag == 2) {
                    this.k.a();
                    this.ag = 1;
                }
                a(t);
                return true;
            } else if (this.k.c()) {
                if (this.ag == 2) {
                    this.k.a();
                    this.ag = 1;
                }
                this.ao = true;
                if (!this.aj) {
                    Y();
                    return false;
                }
                try {
                    if (this.U) {
                        return false;
                    }
                    this.ak = true;
                    this.C.a(this.X, 0, 0L, 4);
                    S();
                    return false;
                } catch (MediaCodec.CryptoException e) {
                    throw a(e, this.t);
                }
            } else if (this.aj || this.k.d()) {
                boolean g = this.k.g();
                if (g) {
                    b bVar = this.k.f20821b;
                    if (position != 0) {
                        if (bVar.f20830d == null) {
                            bVar.f20830d = new int[1];
                            bVar.i.numBytesOfClearData = bVar.f20830d;
                        }
                        int[] iArr = bVar.f20830d;
                        iArr[0] = iArr[0] + position;
                    }
                }
                if (this.L && !g) {
                    s.a(this.k.f20822c);
                    if (this.k.f20822c.position() == 0) {
                        return true;
                    }
                    this.L = false;
                }
                long j = this.k.e;
                e eVar = this.V;
                if (eVar != null) {
                    Format format = this.t;
                    DecoderInputBuffer decoderInputBuffer = this.k;
                    if (eVar.f21426c) {
                        j = decoderInputBuffer.e;
                    } else {
                        ByteBuffer byteBuffer2 = (ByteBuffer) a.b(decoderInputBuffer.f20822c);
                        int i2 = 0;
                        for (int i3 = 0; i3 < 4; i3++) {
                            i2 = (i2 << 8) | (byteBuffer2.get(i3) & 255);
                        }
                        int b3 = o.b(i2);
                        if (b3 == -1) {
                            eVar.f21426c = true;
                            n.a("C2Mp3TimestampTracker", "MPEG audio header is invalid.");
                            j = decoderInputBuffer.e;
                        } else if (eVar.f21424a == 0) {
                            eVar.f21425b = decoderInputBuffer.e;
                            eVar.f21424a = b3 - 529;
                            j = eVar.f21425b;
                        } else {
                            long j2 = (eVar.f21424a * 1000000) / format.sampleRate;
                            eVar.f21424a += b3;
                            j = eVar.f21425b + j2;
                        }
                    }
                }
                if (this.k.E_()) {
                    this.o.add(Long.valueOf(j));
                }
                if (this.aq) {
                    this.n.a(j, (long) this.t);
                    this.aq = false;
                }
                if (this.V != null) {
                    this.am = Math.max(this.am, this.k.e);
                } else {
                    this.am = Math.max(this.am, j);
                }
                this.k.h();
                if (this.k.e()) {
                    b(this.k);
                }
                a(this.k);
                try {
                    if (g) {
                        this.C.a(this.X, this.k.f20821b, j);
                    } else {
                        this.C.a(this.X, this.k.f20822c.limit(), j, 0);
                    }
                    S();
                    this.aj = true;
                    this.ag = 0;
                    this.e.f20835c++;
                    return true;
                } catch (MediaCodec.CryptoException e2) {
                    throw a(e2, this.t);
                }
            } else {
                this.k.a();
                if (this.ag != 2) {
                    return true;
                }
                this.ag = 1;
                return true;
            }
        }
    }

    private boolean V() throws ExoPlaybackException {
        if (af.f22275a < 23) {
            return true;
        }
        float a2 = a(this.B, u());
        float f = this.G;
        if (f == a2) {
            return true;
        }
        if (a2 == -1.0f) {
            X();
            return false;
        } else if (f == -1.0f && a2 <= this.i) {
            return true;
        } else {
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", a2);
            this.C.a(bundle);
            this.G = a2;
            return true;
        }
    }

    private boolean W() throws ExoPlaybackException {
        if (this.aj) {
            this.ah = 1;
            if (this.M || this.O) {
                this.ai = 3;
                return false;
            }
            this.ai = 2;
            return true;
        }
        aa();
        return true;
    }

    private void X() throws ExoPlaybackException {
        if (this.aj) {
            this.ah = 1;
            this.ai = 3;
            return;
        }
        Z();
    }

    private void Y() throws ExoPlaybackException {
        int i = this.ai;
        if (i == 1) {
            P();
        } else if (i == 2) {
            P();
            aa();
        } else if (i != 3) {
            this.ap = true;
            B();
        } else {
            Z();
        }
    }

    private void Z() throws ExoPlaybackException {
        H();
        C();
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x032a A[Catch: Exception -> 0x0558, TryCatch #2 {Exception -> 0x0558, blocks: (B:35:0x00ff, B:39:0x0116, B:41:0x0125, B:58:0x01cb, B:61:0x01ef, B:63:0x01fa, B:65:0x0206, B:67:0x0212, B:69:0x021e, B:73:0x0230, B:75:0x0238, B:77:0x0243, B:80:0x0251, B:82:0x025a, B:84:0x0266, B:86:0x0272, B:91:0x0287, B:93:0x029a, B:95:0x02a6, B:100:0x02ba, B:102:0x02c8, B:104:0x02d0, B:106:0x02db, B:108:0x02e6, B:108:0x02e6, B:111:0x02ee, B:113:0x02fa, B:115:0x0305, B:120:0x031c, B:122:0x032a, B:127:0x033e, B:129:0x034c, B:131:0x0357, B:131:0x0357, B:134:0x035f, B:136:0x036b, B:139:0x037a, B:141:0x0382, B:146:0x0396, B:148:0x03a4, B:153:0x03b8, B:155:0x03c6, B:157:0x03d1, B:159:0x03dd, B:161:0x03e9, B:163:0x03f5, B:165:0x0401, B:167:0x040d, B:169:0x0419, B:174:0x042e, B:176:0x0441, B:178:0x0449, B:183:0x045d, B:185:0x0471, B:187:0x047b, B:187:0x047b, B:190:0x0483, B:192:0x048d, B:192:0x048d, B:195:0x0495, B:197:0x049f, B:200:0x04ac, B:202:0x04b5, B:204:0x04c1, B:211:0x04d7, B:216:0x04ea, B:218:0x04fe, B:220:0x050c, B:222:0x0513, B:224:0x051f, B:231:0x054f, B:233:0x0557), top: B:251:0x00ff }] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x034c A[Catch: Exception -> 0x0558, TryCatch #2 {Exception -> 0x0558, blocks: (B:35:0x00ff, B:39:0x0116, B:41:0x0125, B:58:0x01cb, B:61:0x01ef, B:63:0x01fa, B:65:0x0206, B:67:0x0212, B:69:0x021e, B:73:0x0230, B:75:0x0238, B:77:0x0243, B:80:0x0251, B:82:0x025a, B:84:0x0266, B:86:0x0272, B:91:0x0287, B:93:0x029a, B:95:0x02a6, B:100:0x02ba, B:102:0x02c8, B:104:0x02d0, B:106:0x02db, B:108:0x02e6, B:108:0x02e6, B:111:0x02ee, B:113:0x02fa, B:115:0x0305, B:120:0x031c, B:122:0x032a, B:127:0x033e, B:129:0x034c, B:131:0x0357, B:131:0x0357, B:134:0x035f, B:136:0x036b, B:139:0x037a, B:141:0x0382, B:146:0x0396, B:148:0x03a4, B:153:0x03b8, B:155:0x03c6, B:157:0x03d1, B:159:0x03dd, B:161:0x03e9, B:163:0x03f5, B:165:0x0401, B:167:0x040d, B:169:0x0419, B:174:0x042e, B:176:0x0441, B:178:0x0449, B:183:0x045d, B:185:0x0471, B:187:0x047b, B:187:0x047b, B:190:0x0483, B:192:0x048d, B:192:0x048d, B:195:0x0495, B:197:0x049f, B:200:0x04ac, B:202:0x04b5, B:204:0x04c1, B:211:0x04d7, B:216:0x04ea, B:218:0x04fe, B:220:0x050c, B:222:0x0513, B:224:0x051f, B:231:0x054f, B:233:0x0557), top: B:251:0x00ff }] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x03a4 A[Catch: Exception -> 0x0558, TryCatch #2 {Exception -> 0x0558, blocks: (B:35:0x00ff, B:39:0x0116, B:41:0x0125, B:58:0x01cb, B:61:0x01ef, B:63:0x01fa, B:65:0x0206, B:67:0x0212, B:69:0x021e, B:73:0x0230, B:75:0x0238, B:77:0x0243, B:80:0x0251, B:82:0x025a, B:84:0x0266, B:86:0x0272, B:91:0x0287, B:93:0x029a, B:95:0x02a6, B:100:0x02ba, B:102:0x02c8, B:104:0x02d0, B:106:0x02db, B:108:0x02e6, B:108:0x02e6, B:111:0x02ee, B:113:0x02fa, B:115:0x0305, B:120:0x031c, B:122:0x032a, B:127:0x033e, B:129:0x034c, B:131:0x0357, B:131:0x0357, B:134:0x035f, B:136:0x036b, B:139:0x037a, B:141:0x0382, B:146:0x0396, B:148:0x03a4, B:153:0x03b8, B:155:0x03c6, B:157:0x03d1, B:159:0x03dd, B:161:0x03e9, B:163:0x03f5, B:165:0x0401, B:167:0x040d, B:169:0x0419, B:174:0x042e, B:176:0x0441, B:178:0x0449, B:183:0x045d, B:185:0x0471, B:187:0x047b, B:187:0x047b, B:190:0x0483, B:192:0x048d, B:192:0x048d, B:195:0x0495, B:197:0x049f, B:200:0x04ac, B:202:0x04b5, B:204:0x04c1, B:211:0x04d7, B:216:0x04ea, B:218:0x04fe, B:220:0x050c, B:222:0x0513, B:224:0x051f, B:231:0x054f, B:233:0x0557), top: B:251:0x00ff }] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03c6 A[Catch: Exception -> 0x0558, TryCatch #2 {Exception -> 0x0558, blocks: (B:35:0x00ff, B:39:0x0116, B:41:0x0125, B:58:0x01cb, B:61:0x01ef, B:63:0x01fa, B:65:0x0206, B:67:0x0212, B:69:0x021e, B:73:0x0230, B:75:0x0238, B:77:0x0243, B:80:0x0251, B:82:0x025a, B:84:0x0266, B:86:0x0272, B:91:0x0287, B:93:0x029a, B:95:0x02a6, B:100:0x02ba, B:102:0x02c8, B:104:0x02d0, B:106:0x02db, B:108:0x02e6, B:108:0x02e6, B:111:0x02ee, B:113:0x02fa, B:115:0x0305, B:120:0x031c, B:122:0x032a, B:127:0x033e, B:129:0x034c, B:131:0x0357, B:131:0x0357, B:134:0x035f, B:136:0x036b, B:139:0x037a, B:141:0x0382, B:146:0x0396, B:148:0x03a4, B:153:0x03b8, B:155:0x03c6, B:157:0x03d1, B:159:0x03dd, B:161:0x03e9, B:163:0x03f5, B:165:0x0401, B:167:0x040d, B:169:0x0419, B:174:0x042e, B:176:0x0441, B:178:0x0449, B:183:0x045d, B:185:0x0471, B:187:0x047b, B:187:0x047b, B:190:0x0483, B:192:0x048d, B:192:0x048d, B:195:0x0495, B:197:0x049f, B:200:0x04ac, B:202:0x04b5, B:204:0x04c1, B:211:0x04d7, B:216:0x04ea, B:218:0x04fe, B:220:0x050c, B:222:0x0513, B:224:0x051f, B:231:0x054f, B:233:0x0557), top: B:251:0x00ff }] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0441 A[Catch: Exception -> 0x0558, TryCatch #2 {Exception -> 0x0558, blocks: (B:35:0x00ff, B:39:0x0116, B:41:0x0125, B:58:0x01cb, B:61:0x01ef, B:63:0x01fa, B:65:0x0206, B:67:0x0212, B:69:0x021e, B:73:0x0230, B:75:0x0238, B:77:0x0243, B:80:0x0251, B:82:0x025a, B:84:0x0266, B:86:0x0272, B:91:0x0287, B:93:0x029a, B:95:0x02a6, B:100:0x02ba, B:102:0x02c8, B:104:0x02d0, B:106:0x02db, B:108:0x02e6, B:108:0x02e6, B:111:0x02ee, B:113:0x02fa, B:115:0x0305, B:120:0x031c, B:122:0x032a, B:127:0x033e, B:129:0x034c, B:131:0x0357, B:131:0x0357, B:134:0x035f, B:136:0x036b, B:139:0x037a, B:141:0x0382, B:146:0x0396, B:148:0x03a4, B:153:0x03b8, B:155:0x03c6, B:157:0x03d1, B:159:0x03dd, B:161:0x03e9, B:163:0x03f5, B:165:0x0401, B:167:0x040d, B:169:0x0419, B:174:0x042e, B:176:0x0441, B:178:0x0449, B:183:0x045d, B:185:0x0471, B:187:0x047b, B:187:0x047b, B:190:0x0483, B:192:0x048d, B:192:0x048d, B:195:0x0495, B:197:0x049f, B:200:0x04ac, B:202:0x04b5, B:204:0x04c1, B:211:0x04d7, B:216:0x04ea, B:218:0x04fe, B:220:0x050c, B:222:0x0513, B:224:0x051f, B:231:0x054f, B:233:0x0557), top: B:251:0x00ff }] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0471 A[Catch: Exception -> 0x0558, TryCatch #2 {Exception -> 0x0558, blocks: (B:35:0x00ff, B:39:0x0116, B:41:0x0125, B:58:0x01cb, B:61:0x01ef, B:63:0x01fa, B:65:0x0206, B:67:0x0212, B:69:0x021e, B:73:0x0230, B:75:0x0238, B:77:0x0243, B:80:0x0251, B:82:0x025a, B:84:0x0266, B:86:0x0272, B:91:0x0287, B:93:0x029a, B:95:0x02a6, B:100:0x02ba, B:102:0x02c8, B:104:0x02d0, B:106:0x02db, B:108:0x02e6, B:108:0x02e6, B:111:0x02ee, B:113:0x02fa, B:115:0x0305, B:120:0x031c, B:122:0x032a, B:127:0x033e, B:129:0x034c, B:131:0x0357, B:131:0x0357, B:134:0x035f, B:136:0x036b, B:139:0x037a, B:141:0x0382, B:146:0x0396, B:148:0x03a4, B:153:0x03b8, B:155:0x03c6, B:157:0x03d1, B:159:0x03dd, B:161:0x03e9, B:163:0x03f5, B:165:0x0401, B:167:0x040d, B:169:0x0419, B:174:0x042e, B:176:0x0441, B:178:0x0449, B:183:0x045d, B:185:0x0471, B:187:0x047b, B:187:0x047b, B:190:0x0483, B:192:0x048d, B:192:0x048d, B:195:0x0495, B:197:0x049f, B:200:0x04ac, B:202:0x04b5, B:204:0x04c1, B:211:0x04d7, B:216:0x04ea, B:218:0x04fe, B:220:0x050c, B:222:0x0513, B:224:0x051f, B:231:0x054f, B:233:0x0557), top: B:251:0x00ff }] */
    /* JADX WARN: Removed duplicated region for block: B:211:0x04d7 A[Catch: Exception -> 0x0558, TRY_ENTER, TryCatch #2 {Exception -> 0x0558, blocks: (B:35:0x00ff, B:39:0x0116, B:41:0x0125, B:58:0x01cb, B:61:0x01ef, B:63:0x01fa, B:65:0x0206, B:67:0x0212, B:69:0x021e, B:73:0x0230, B:75:0x0238, B:77:0x0243, B:80:0x0251, B:82:0x025a, B:84:0x0266, B:86:0x0272, B:91:0x0287, B:93:0x029a, B:95:0x02a6, B:100:0x02ba, B:102:0x02c8, B:104:0x02d0, B:106:0x02db, B:108:0x02e6, B:108:0x02e6, B:111:0x02ee, B:113:0x02fa, B:115:0x0305, B:120:0x031c, B:122:0x032a, B:127:0x033e, B:129:0x034c, B:131:0x0357, B:131:0x0357, B:134:0x035f, B:136:0x036b, B:139:0x037a, B:141:0x0382, B:146:0x0396, B:148:0x03a4, B:153:0x03b8, B:155:0x03c6, B:157:0x03d1, B:159:0x03dd, B:161:0x03e9, B:163:0x03f5, B:165:0x0401, B:167:0x040d, B:169:0x0419, B:174:0x042e, B:176:0x0441, B:178:0x0449, B:183:0x045d, B:185:0x0471, B:187:0x047b, B:187:0x047b, B:190:0x0483, B:192:0x048d, B:192:0x048d, B:195:0x0495, B:197:0x049f, B:200:0x04ac, B:202:0x04b5, B:204:0x04c1, B:211:0x04d7, B:216:0x04ea, B:218:0x04fe, B:220:0x050c, B:222:0x0513, B:224:0x051f, B:231:0x054f, B:233:0x0557), top: B:251:0x00ff }] */
    /* JADX WARN: Removed duplicated region for block: B:218:0x04fe A[Catch: Exception -> 0x0558, TryCatch #2 {Exception -> 0x0558, blocks: (B:35:0x00ff, B:39:0x0116, B:41:0x0125, B:58:0x01cb, B:61:0x01ef, B:63:0x01fa, B:65:0x0206, B:67:0x0212, B:69:0x021e, B:73:0x0230, B:75:0x0238, B:77:0x0243, B:80:0x0251, B:82:0x025a, B:84:0x0266, B:86:0x0272, B:91:0x0287, B:93:0x029a, B:95:0x02a6, B:100:0x02ba, B:102:0x02c8, B:104:0x02d0, B:106:0x02db, B:108:0x02e6, B:108:0x02e6, B:111:0x02ee, B:113:0x02fa, B:115:0x0305, B:120:0x031c, B:122:0x032a, B:127:0x033e, B:129:0x034c, B:131:0x0357, B:131:0x0357, B:134:0x035f, B:136:0x036b, B:139:0x037a, B:141:0x0382, B:146:0x0396, B:148:0x03a4, B:153:0x03b8, B:155:0x03c6, B:157:0x03d1, B:159:0x03dd, B:161:0x03e9, B:163:0x03f5, B:165:0x0401, B:167:0x040d, B:169:0x0419, B:174:0x042e, B:176:0x0441, B:178:0x0449, B:183:0x045d, B:185:0x0471, B:187:0x047b, B:187:0x047b, B:190:0x0483, B:192:0x048d, B:192:0x048d, B:195:0x0495, B:197:0x049f, B:200:0x04ac, B:202:0x04b5, B:204:0x04c1, B:211:0x04d7, B:216:0x04ea, B:218:0x04fe, B:220:0x050c, B:222:0x0513, B:224:0x051f, B:231:0x054f, B:233:0x0557), top: B:251:0x00ff }] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0513 A[Catch: Exception -> 0x0558, TryCatch #2 {Exception -> 0x0558, blocks: (B:35:0x00ff, B:39:0x0116, B:41:0x0125, B:58:0x01cb, B:61:0x01ef, B:63:0x01fa, B:65:0x0206, B:67:0x0212, B:69:0x021e, B:73:0x0230, B:75:0x0238, B:77:0x0243, B:80:0x0251, B:82:0x025a, B:84:0x0266, B:86:0x0272, B:91:0x0287, B:93:0x029a, B:95:0x02a6, B:100:0x02ba, B:102:0x02c8, B:104:0x02d0, B:106:0x02db, B:108:0x02e6, B:108:0x02e6, B:111:0x02ee, B:113:0x02fa, B:115:0x0305, B:120:0x031c, B:122:0x032a, B:127:0x033e, B:129:0x034c, B:131:0x0357, B:131:0x0357, B:134:0x035f, B:136:0x036b, B:139:0x037a, B:141:0x0382, B:146:0x0396, B:148:0x03a4, B:153:0x03b8, B:155:0x03c6, B:157:0x03d1, B:159:0x03dd, B:161:0x03e9, B:163:0x03f5, B:165:0x0401, B:167:0x040d, B:169:0x0419, B:174:0x042e, B:176:0x0441, B:178:0x0449, B:183:0x045d, B:185:0x0471, B:187:0x047b, B:187:0x047b, B:190:0x0483, B:192:0x048d, B:192:0x048d, B:195:0x0495, B:197:0x049f, B:200:0x04ac, B:202:0x04b5, B:204:0x04c1, B:211:0x04d7, B:216:0x04ea, B:218:0x04fe, B:220:0x050c, B:222:0x0513, B:224:0x051f, B:231:0x054f, B:233:0x0557), top: B:251:0x00ff }] */
    /* JADX WARN: Removed duplicated region for block: B:231:0x054f A[Catch: Exception -> 0x0558, TRY_ENTER, TryCatch #2 {Exception -> 0x0558, blocks: (B:35:0x00ff, B:39:0x0116, B:41:0x0125, B:58:0x01cb, B:61:0x01ef, B:63:0x01fa, B:65:0x0206, B:67:0x0212, B:69:0x021e, B:73:0x0230, B:75:0x0238, B:77:0x0243, B:80:0x0251, B:82:0x025a, B:84:0x0266, B:86:0x0272, B:91:0x0287, B:93:0x029a, B:95:0x02a6, B:100:0x02ba, B:102:0x02c8, B:104:0x02d0, B:106:0x02db, B:108:0x02e6, B:108:0x02e6, B:111:0x02ee, B:113:0x02fa, B:115:0x0305, B:120:0x031c, B:122:0x032a, B:127:0x033e, B:129:0x034c, B:131:0x0357, B:131:0x0357, B:134:0x035f, B:136:0x036b, B:139:0x037a, B:141:0x0382, B:146:0x0396, B:148:0x03a4, B:153:0x03b8, B:155:0x03c6, B:157:0x03d1, B:159:0x03dd, B:161:0x03e9, B:163:0x03f5, B:165:0x0401, B:167:0x040d, B:169:0x0419, B:174:0x042e, B:176:0x0441, B:178:0x0449, B:183:0x045d, B:185:0x0471, B:187:0x047b, B:187:0x047b, B:190:0x0483, B:192:0x048d, B:192:0x048d, B:195:0x0495, B:197:0x049f, B:200:0x04ac, B:202:0x04b5, B:204:0x04c1, B:211:0x04d7, B:216:0x04ea, B:218:0x04fe, B:220:0x050c, B:222:0x0513, B:224:0x051f, B:231:0x054f, B:233:0x0557), top: B:251:0x00ff }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(android.media.MediaCrypto r10, boolean r11) throws com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException {
        /*
            Method dump skipped, instructions count: 1484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.a(android.media.MediaCrypto, boolean):void");
    }

    private void a(DrmSession drmSession) {
        DrmSession._CC.a(this.w, drmSession);
        this.w = drmSession;
    }

    private static boolean a(j jVar, Format format) {
        if (jVar.f20896d) {
            return false;
        }
        try {
            MediaCrypto mediaCrypto = new MediaCrypto(jVar.f20894b, jVar.f20895c);
            try {
                return mediaCrypto.requiresSecureDecoderComponent(format.sampleMimeType);
            } finally {
                mediaCrypto.release();
            }
        } catch (MediaCryptoException e) {
            return true;
        }
    }

    private boolean a(boolean z) throws ExoPlaybackException {
        q t = t();
        this.j.a();
        int a2 = a(t, this.j, z);
        if (a2 == -5) {
            a(t);
            return true;
        } else if (a2 != -4 || !this.j.c()) {
            return false;
        } else {
            this.ao = true;
            Y();
            return false;
        }
    }

    private void aa() throws ExoPlaybackException {
        try {
            this.x.setMediaDrmSession(c(this.w).f20895c);
            b(this.w);
            this.ah = 0;
            this.ai = 0;
        } catch (MediaCryptoException e) {
            throw a(e, this.t);
        }
    }

    private void b(DrmSession drmSession) {
        DrmSession._CC.a(this.v, drmSession);
        this.v = drmSession;
    }

    private boolean b(long j, long j2) throws ExoPlaybackException {
        boolean z;
        int i;
        boolean z2;
        if (!R()) {
            if (!this.P || !this.ak) {
                i = this.C.a(this.p);
            } else {
                try {
                    i = this.C.a(this.p);
                } catch (IllegalStateException e) {
                    Y();
                    if (!this.ap) {
                        return false;
                    }
                    H();
                    return false;
                }
            }
            if (i < 0) {
                if (i == -2) {
                    this.al = true;
                    MediaFormat c2 = this.C.c();
                    if (this.K != 0 && c2.getInteger("width") == 32 && c2.getInteger("height") == 32) {
                        this.T = true;
                        return true;
                    }
                    if (this.R) {
                        c2.setInteger("channel-count", 1);
                    }
                    this.E = c2;
                    this.F = true;
                    return true;
                } else if (!this.U) {
                    return false;
                } else {
                    if (!this.ao && this.ah != 2) {
                        return false;
                    }
                    Y();
                    return false;
                }
            } else if (this.T) {
                this.T = false;
                this.C.a(i, false);
                return true;
            } else if (this.p.size != 0 || (this.p.flags & 4) == 0) {
                this.Y = i;
                ByteBuffer b2 = this.C.b(i);
                this.Z = b2;
                if (b2 != null) {
                    b2.position(this.p.offset);
                    this.Z.limit(this.p.offset + this.p.size);
                }
                if (this.Q && this.p.presentationTimeUs == 0 && (this.p.flags & 4) != 0) {
                    long j3 = this.am;
                    if (j3 != -9223372036854775807L) {
                        this.p.presentationTimeUs = j3;
                    }
                }
                long j4 = this.p.presentationTimeUs;
                int size = this.o.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        z2 = false;
                        break;
                    } else if (this.o.get(i2).longValue() == j4) {
                        this.o.remove(i2);
                        z2 = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                this.aa = z2;
                this.ab = this.an == this.p.presentationTimeUs;
                c(this.p.presentationTimeUs);
            } else {
                Y();
                return false;
            }
        }
        if (!this.P || !this.ak) {
            z = a(j, j2, this.C, this.Z, this.Y, this.p.flags, 1, this.p.presentationTimeUs, this.aa, this.ab, this.u);
        } else {
            try {
                try {
                    z = a(j, j2, this.C, this.Z, this.Y, this.p.flags, 1, this.p.presentationTimeUs, this.aa, this.ab, this.u);
                } catch (IllegalStateException e2) {
                    Y();
                    if (!this.ap) {
                        return false;
                    }
                    H();
                    return false;
                }
            } catch (IllegalStateException e3) {
            }
        }
        if (!z) {
            return false;
        }
        d(this.p.presentationTimeUs);
        boolean z3 = (this.p.flags & 4) != 0;
        T();
        if (!z3) {
            return true;
        }
        Y();
        return false;
    }

    private j c(DrmSession drmSession) throws ExoPlaybackException {
        h g = drmSession.g();
        if (g == null || (g instanceof j)) {
            return (j) g;
        }
        throw a(new IllegalArgumentException("Expecting FrameworkMediaCrypto but found: ".concat(String.valueOf(g))), this.t);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean c(Format format) {
        return format.exoMediaCryptoType == null || j.class.equals(format.exoMediaCryptoType);
    }

    private boolean e(long j) {
        return this.z == -9223372036854775807L || SystemClock.elapsedRealtime() - j < this.z;
    }

    public void A() {
    }

    protected void B() throws ExoPlaybackException {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void C() throws ExoPlaybackException {
        Format format;
        if (this.C == null && !this.ac && (format = this.t) != null) {
            if (this.w != null || !b(format)) {
                b(this.w);
                String str = this.t.sampleMimeType;
                DrmSession drmSession = this.v;
                if (drmSession != null) {
                    if (this.x == null) {
                        j c2 = c(drmSession);
                        if (c2 != null) {
                            try {
                                this.x = new MediaCrypto(c2.f20894b, c2.f20895c);
                                this.y = !c2.f20896d && this.x.requiresSecureDecoderComponent(str);
                            } catch (MediaCryptoException e) {
                                throw a(e, this.t);
                            }
                        } else if (this.v.e() == null) {
                            return;
                        }
                    }
                    if (j.f20893a) {
                        int c3 = this.v.c();
                        if (c3 == 1) {
                            throw a(this.v.e(), this.t);
                        } else if (c3 != 4) {
                            return;
                        }
                    }
                }
                try {
                    a(this.x, this.y);
                } catch (DecoderInitializationException e2) {
                    throw a(e2, this.t);
                }
            } else {
                Format format2 = this.t;
                N();
                String str2 = format2.sampleMimeType;
                if ("audio/mp4a-latm".equals(str2) || "audio/mpeg".equals(str2) || "audio/opus".equals(str2)) {
                    this.m.d(32);
                } else {
                    this.m.d(1);
                }
                this.ac = true;
            }
        }
    }

    protected boolean D() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final f E() {
        return this.C;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final MediaFormat F() {
        return this.E;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final g G() {
        return this.J;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void H() {
        try {
            f fVar = this.C;
            if (fVar != null) {
                fVar.e();
                this.e.f20834b++;
                a(this.J.f21428a);
            }
            this.C = null;
            try {
                MediaCrypto mediaCrypto = this.x;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
            }
        } catch (Throwable th) {
            this.C = null;
            try {
                MediaCrypto mediaCrypto2 = this.x;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean I() throws ExoPlaybackException {
        boolean O = O();
        if (O) {
            C();
        }
        return O;
    }

    public void J() {
        S();
        T();
        this.W = -9223372036854775807L;
        this.ak = false;
        this.aj = false;
        this.S = false;
        this.T = false;
        this.aa = false;
        this.ab = false;
        this.o.clear();
        this.am = -9223372036854775807L;
        this.an = -9223372036854775807L;
        e eVar = this.V;
        if (eVar != null) {
            eVar.f21424a = 0L;
            eVar.f21425b = 0L;
            eVar.f21426c = false;
        }
        this.ah = 0;
        this.ai = 0;
        this.ag = this.af ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final float K() {
        return this.A;
    }

    public final void L() {
        this.ar = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long M() {
        return this.au;
    }

    protected float a(float f, Format[] formatArr) {
        return -1.0f;
    }

    @Override // com.google.android.exoplayer2.ag
    public final int a(Format format) throws ExoPlaybackException {
        try {
            return a(this.g, format);
        } catch (MediaCodecUtil.DecoderQueryException e) {
            throw a(e, format);
        }
    }

    protected abstract int a(h hVar, Format format) throws MediaCodecUtil.DecoderQueryException;

    protected com.google.android.exoplayer2.decoder.e a(g gVar, Format format, Format format2) {
        return new com.google.android.exoplayer2.decoder.e(gVar.f21428a, format, format2, 0, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x016e, code lost:
        if (W() == false) goto L_0x020f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01e5, code lost:
        if (W() == false) goto L_0x020f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x020c, code lost:
        if (W() == false) goto L_0x020f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x020f, code lost:
        r18 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x024e, code lost:
        if (r19 == false) goto L_0x020f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.exoplayer2.decoder.e a(com.google.android.exoplayer2.q r9) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 665
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.a(com.google.android.exoplayer2.q):com.google.android.exoplayer2.decoder.e");
    }

    protected MediaCodecDecoderException a(Throwable th, g gVar) {
        return new MediaCodecDecoderException(th, gVar);
    }

    protected abstract List<g> a(h hVar, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException;

    @Override // com.google.android.exoplayer2.e, com.google.android.exoplayer2.af
    public void a(float f, float f2) throws ExoPlaybackException {
        this.A = f;
        this.B = f2;
        if (this.C != null && this.ai != 3 && C_() != 0) {
            V();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:94:0x01cf, code lost:
        if (r21.ac != false) goto L_0x01d2;
     */
    /* JADX WARN: Removed duplicated region for block: B:226:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x041a  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0435  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x044c  */
    @Override // com.google.android.exoplayer2.af
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r17, long r19) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 1112
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.a(long, long):void");
    }

    @Override // com.google.android.exoplayer2.e
    public void a(long j, boolean z) throws ExoPlaybackException {
        this.ao = false;
        this.ap = false;
        this.ar = false;
        if (this.ac) {
            this.m.a();
            this.l.a();
            this.ad = false;
        } else {
            I();
        }
        if (this.n.b() > 0) {
            this.aq = true;
        }
        this.n.a();
        int i = this.av;
        if (i != 0) {
            this.au = this.r[i - 1];
            this.at = this.q[i - 1];
            this.av = 0;
        }
    }

    public final void a(ExoPlaybackException exoPlaybackException) {
        this.as = exoPlaybackException;
    }

    protected void a(Format format, MediaFormat mediaFormat) throws ExoPlaybackException {
    }

    protected void a(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
    }

    protected abstract void a(g gVar, f fVar, Format format, MediaCrypto mediaCrypto, float f);

    protected void a(String str) {
    }

    protected void a(String str, long j, long j2) {
    }

    @Override // com.google.android.exoplayer2.e
    public void a(boolean z, boolean z2) throws ExoPlaybackException {
        this.e = new d();
    }

    @Override // com.google.android.exoplayer2.e
    public final void a(Format[] formatArr, long j, long j2) throws ExoPlaybackException {
        boolean z = true;
        if (this.au == -9223372036854775807L) {
            if (this.at != -9223372036854775807L) {
                z = false;
            }
            a.b(z);
            this.at = j;
            this.au = j2;
            return;
        }
        int i = this.av;
        if (i == this.r.length) {
            n.a("MediaCodecRenderer", "Too many stream changes, so dropping offset: " + this.r[this.av - 1]);
        } else {
            this.av = i + 1;
        }
        long[] jArr = this.q;
        int i2 = this.av;
        jArr[i2 - 1] = j;
        this.r[i2 - 1] = j2;
        this.s[i2 - 1] = this.am;
    }

    protected abstract boolean a(long j, long j2, f fVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, Format format) throws ExoPlaybackException;

    protected boolean a(g gVar) {
        return true;
    }

    protected void b(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
    }

    protected boolean b(Format format) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c(long j) throws ExoPlaybackException {
        boolean z;
        Format a2 = this.n.a(j);
        Format format = a2;
        if (a2 == null) {
            format = a2;
            if (this.F) {
                format = this.n.c();
            }
        }
        if (format != null) {
            this.u = format;
            z = true;
        } else {
            z = false;
        }
        if (z || (this.F && this.u != null)) {
            a(this.u, this.E);
            this.F = false;
        }
    }

    public void d(long j) {
        while (true) {
            int i = this.av;
            if (i != 0 && j >= this.s[0]) {
                long[] jArr = this.q;
                this.at = jArr[0];
                this.au = this.r[0];
                int i2 = i - 1;
                this.av = i2;
                System.arraycopy(jArr, 1, jArr, 0, i2);
                long[] jArr2 = this.r;
                System.arraycopy(jArr2, 1, jArr2, 0, this.av);
                long[] jArr3 = this.s;
                System.arraycopy(jArr3, 1, jArr3, 0, this.av);
                A();
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.exoplayer2.e, com.google.android.exoplayer2.ag
    public final int o() {
        return 8;
    }

    @Override // com.google.android.exoplayer2.e
    public void p() {
    }

    @Override // com.google.android.exoplayer2.e
    public void q() {
    }

    @Override // com.google.android.exoplayer2.e
    public void r() {
        this.t = null;
        this.at = -9223372036854775807L;
        this.au = -9223372036854775807L;
        this.av = 0;
        if (this.w == null && this.v == null) {
            O();
        } else {
            s();
        }
    }

    @Override // com.google.android.exoplayer2.e
    public void s() {
        try {
            N();
            H();
        } finally {
            a((DrmSession) null);
        }
    }

    @Override // com.google.android.exoplayer2.af
    public boolean y() {
        if (this.t == null) {
            return false;
        }
        if (w() || R()) {
            return true;
        }
        return this.W != -9223372036854775807L && SystemClock.elapsedRealtime() < this.W;
    }

    @Override // com.google.android.exoplayer2.af
    public boolean z() {
        return this.ap;
    }
}
