package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import com.google.android.exoplayer2.AbstractC10976e;
import com.google.android.exoplayer2.C11258q;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.C10907o;
import com.google.android.exoplayer2.decoder.C10930b;
import com.google.android.exoplayer2.decoder.C10934d;
import com.google.android.exoplayer2.decoder.C10935e;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.AbstractC10963h;
import com.google.android.exoplayer2.drm.C10970j;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.mediacodec.AbstractC11184f;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11596ac;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11624s;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecRenderer.class */
public abstract class MediaCodecRenderer extends AbstractC10976e {

    /* renamed from: a */
    private static final byte[] f36603a = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};

    /* renamed from: C */
    private AbstractC11184f f36606C;

    /* renamed from: D */
    private Format f36607D;

    /* renamed from: E */
    private MediaFormat f36608E;

    /* renamed from: F */
    private boolean f36609F;

    /* renamed from: G */
    private float f36610G;

    /* renamed from: H */
    private ArrayDeque<C11187g> f36611H;

    /* renamed from: I */
    private DecoderInitializationException f36612I;

    /* renamed from: J */
    private C11187g f36613J;

    /* renamed from: K */
    private int f36614K;

    /* renamed from: L */
    private boolean f36615L;

    /* renamed from: M */
    private boolean f36616M;

    /* renamed from: N */
    private boolean f36617N;

    /* renamed from: O */
    private boolean f36618O;

    /* renamed from: P */
    private boolean f36619P;

    /* renamed from: Q */
    private boolean f36620Q;

    /* renamed from: R */
    private boolean f36621R;

    /* renamed from: S */
    private boolean f36622S;

    /* renamed from: T */
    private boolean f36623T;

    /* renamed from: U */
    private boolean f36624U;

    /* renamed from: V */
    private C11183e f36625V;

    /* renamed from: W */
    private long f36626W;

    /* renamed from: X */
    private int f36627X;

    /* renamed from: Y */
    private int f36628Y;

    /* renamed from: Z */
    private ByteBuffer f36629Z;

    /* renamed from: aa */
    private boolean f36630aa;

    /* renamed from: ab */
    private boolean f36631ab;

    /* renamed from: ac */
    private boolean f36632ac;

    /* renamed from: ad */
    private boolean f36633ad;

    /* renamed from: ae */
    private boolean f36634ae;

    /* renamed from: af */
    private boolean f36635af;

    /* renamed from: ag */
    private int f36636ag;

    /* renamed from: ah */
    private int f36637ah;

    /* renamed from: ai */
    private int f36638ai;

    /* renamed from: aj */
    private boolean f36639aj;

    /* renamed from: ak */
    private boolean f36640ak;

    /* renamed from: al */
    private boolean f36641al;

    /* renamed from: am */
    private long f36642am;

    /* renamed from: an */
    private long f36643an;

    /* renamed from: ao */
    private boolean f36644ao;

    /* renamed from: ap */
    private boolean f36645ap;

    /* renamed from: aq */
    private boolean f36646aq;

    /* renamed from: ar */
    private boolean f36647ar;

    /* renamed from: as */
    private ExoPlaybackException f36648as;

    /* renamed from: av */
    private int f36651av;

    /* renamed from: b */
    public boolean f36652b;

    /* renamed from: c */
    public boolean f36653c;

    /* renamed from: d */
    public boolean f36654d;

    /* renamed from: e */
    protected C10934d f36655e;

    /* renamed from: f */
    private final AbstractC11184f.AbstractC11185a f36656f;

    /* renamed from: g */
    private final AbstractC11188h f36657g;

    /* renamed from: h */
    private final boolean f36658h;

    /* renamed from: i */
    private final float f36659i;

    /* renamed from: m */
    private final C11182d f36663m;

    /* renamed from: t */
    private Format f36670t;

    /* renamed from: u */
    private Format f36671u;

    /* renamed from: v */
    private DrmSession f36672v;

    /* renamed from: w */
    private DrmSession f36673w;

    /* renamed from: x */
    private MediaCrypto f36674x;

    /* renamed from: y */
    private boolean f36675y;

    /* renamed from: j */
    private final DecoderInputBuffer f36660j = new DecoderInputBuffer(0);

    /* renamed from: k */
    private final DecoderInputBuffer f36661k = new DecoderInputBuffer(0);

    /* renamed from: l */
    private final DecoderInputBuffer f36662l = new DecoderInputBuffer(2);

    /* renamed from: n */
    private final C11596ac<Format> f36664n = new C11596ac<>();

    /* renamed from: o */
    private final ArrayList<Long> f36665o = new ArrayList<>();

    /* renamed from: p */
    private final MediaCodec.BufferInfo f36666p = new MediaCodec.BufferInfo();

    /* renamed from: A */
    private float f36604A = 1.0f;

    /* renamed from: B */
    private float f36605B = 1.0f;

    /* renamed from: z */
    private long f36676z = -9223372036854775807L;

    /* renamed from: q */
    private final long[] f36667q = new long[10];

    /* renamed from: r */
    private final long[] f36668r = new long[10];

    /* renamed from: s */
    private final long[] f36669s = new long[10];

    /* renamed from: at */
    private long f36649at = -9223372036854775807L;

    /* renamed from: au */
    private long f36650au = -9223372036854775807L;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException.class */
    public static class DecoderInitializationException extends Exception {

        /* renamed from: a */
        public final String f36677a;

        /* renamed from: b */
        public final boolean f36678b;

        /* renamed from: c */
        public final C11187g f36679c;

        /* renamed from: d */
        public final String f36680d;

        /* renamed from: e */
        public final DecoderInitializationException f36681e;

        public DecoderInitializationException(Format format, Throwable th, boolean z, int i) {
            this("Decoder init failed: [" + i + "], " + format, th, format.sampleMimeType, z, null, "com.google.android.exoplayer2.mediacodec.MediaCodecRenderer_" + (i < 0 ? "neg_" : "") + Math.abs(i), null);
        }

        public DecoderInitializationException(Format format, Throwable th, boolean z, C11187g c11187g) {
            this("Decoder init failed: " + c11187g.f36736a + ", " + format, th, format.sampleMimeType, z, c11187g, (C11599af.f38648a < 21 || !(th instanceof MediaCodec.CodecException)) ? null : ((MediaCodec.CodecException) th).getDiagnosticInfo(), null);
        }

        private DecoderInitializationException(String str, Throwable th, String str2, boolean z, C11187g c11187g, String str3, DecoderInitializationException decoderInitializationException) {
            super(str, th);
            this.f36677a = str2;
            this.f36678b = z;
            this.f36679c = c11187g;
            this.f36680d = str3;
            this.f36681e = decoderInitializationException;
        }

        /* renamed from: a */
        static /* synthetic */ DecoderInitializationException m21310a(DecoderInitializationException decoderInitializationException, DecoderInitializationException decoderInitializationException2) {
            return new DecoderInitializationException(decoderInitializationException.getMessage(), decoderInitializationException.getCause(), decoderInitializationException.f36677a, decoderInitializationException.f36678b, decoderInitializationException.f36679c, decoderInitializationException.f36680d, decoderInitializationException2);
        }
    }

    public MediaCodecRenderer(int i, AbstractC11184f.AbstractC11185a abstractC11185a, AbstractC11188h abstractC11188h, boolean z, float f) {
        super(i);
        this.f36656f = abstractC11185a;
        this.f36657g = (AbstractC11188h) C11593a.m20020b(abstractC11188h);
        this.f36658h = z;
        this.f36659i = f;
        C11182d c11182d = new C11182d();
        this.f36663m = c11182d;
        c11182d.m21925c(0);
        c11182d.f35336c.order(ByteOrder.nativeOrder());
        m21334Q();
    }

    /* renamed from: N */
    private void m21337N() {
        this.f36634ae = false;
        this.f36663m.mo20663a();
        this.f36662l.mo20663a();
        this.f36633ad = false;
        this.f36632ac = false;
    }

    /* renamed from: O */
    private boolean m21336O() {
        if (this.f36606C == null) {
            return false;
        }
        if (this.f36638ai == 3 || this.f36616M || ((this.f36617N && !this.f36641al) || (this.f36618O && this.f36640ak))) {
            m21342H();
            return true;
        }
        m21335P();
        return false;
    }

    /* renamed from: P */
    private void m21335P() {
        try {
            this.f36606C.mo21218d();
        } finally {
            mo19729J();
        }
    }

    /* renamed from: Q */
    private void m21334Q() {
        mo19729J();
        this.f36648as = null;
        this.f36625V = null;
        this.f36611H = null;
        this.f36613J = null;
        this.f36607D = null;
        this.f36608E = null;
        this.f36609F = false;
        this.f36641al = false;
        this.f36610G = -1.0f;
        this.f36614K = 0;
        this.f36615L = false;
        this.f36616M = false;
        this.f36617N = false;
        this.f36618O = false;
        this.f36619P = false;
        this.f36620Q = false;
        this.f36621R = false;
        this.f36624U = false;
        this.f36635af = false;
        this.f36636ag = 0;
        this.f36675y = false;
    }

    /* renamed from: R */
    private boolean m21333R() {
        return this.f36628Y >= 0;
    }

    /* renamed from: S */
    private void m21332S() {
        this.f36627X = -1;
        this.f36661k.f35336c = null;
    }

    /* renamed from: T */
    private void m21331T() {
        this.f36628Y = -1;
        this.f36629Z = null;
    }

    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r0v113, types: [long] */
    /* JADX WARN: Type inference failed for: r0v117, types: [long] */
    /* JADX WARN: Type inference failed for: r0v122, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* renamed from: U */
    private boolean m21330U() throws ExoPlaybackException {
        AbstractC11184f abstractC11184f = this.f36606C;
        if (abstractC11184f == null || this.f36637ah == 2 || this.f36644ao) {
            return false;
        }
        if (this.f36627X < 0) {
            int mo21222b = abstractC11184f.mo21222b();
            this.f36627X = mo21222b;
            if (mo21222b < 0) {
                return false;
            }
            this.f36661k.f35336c = this.f36606C.mo21233a(mo21222b);
            this.f36661k.mo20663a();
        }
        if (this.f36637ah == 1) {
            if (!this.f36624U) {
                this.f36640ak = true;
                this.f36606C.mo21232a(this.f36627X, 0, 0L, 4);
                m21332S();
            }
            this.f36637ah = 2;
            return false;
        } else if (this.f36622S) {
            this.f36622S = false;
            ByteBuffer byteBuffer = this.f36661k.f35336c;
            byte[] bArr = f36603a;
            byteBuffer.put(bArr);
            this.f36606C.mo21232a(this.f36627X, bArr.length, 0L, 0);
            m21332S();
            this.f36639aj = true;
            return true;
        } else {
            if (this.f36636ag == 1) {
                for (int i = 0; i < this.f36607D.initializationData.size(); i++) {
                    this.f36661k.f35336c.put(this.f36607D.initializationData.get(i));
                }
                this.f36636ag = 2;
            }
            int position = this.f36661k.f35336c.position();
            C11258q t = m21791t();
            int a = m21808a(t, this.f36661k, false);
            if (mo21799g()) {
                this.f36643an = this.f36642am;
            }
            if (a == -3) {
                return false;
            }
            if (a == -5) {
                if (this.f36636ag == 2) {
                    this.f36661k.mo20663a();
                    this.f36636ag = 1;
                }
                mo19703a(t);
                return true;
            } else if (this.f36661k.m21917c()) {
                if (this.f36636ag == 2) {
                    this.f36661k.mo20663a();
                    this.f36636ag = 1;
                }
                this.f36644ao = true;
                if (!this.f36639aj) {
                    m21326Y();
                    return false;
                }
                try {
                    if (this.f36624U) {
                        return false;
                    }
                    this.f36640ak = true;
                    this.f36606C.mo21232a(this.f36627X, 0, 0L, 4);
                    m21332S();
                    return false;
                } catch (MediaCodec.CryptoException e) {
                    throw m21807a(e, this.f36670t);
                }
            } else if (!this.f36639aj && !this.f36661k.m21916d()) {
                this.f36661k.mo20663a();
                if (this.f36636ag != 2) {
                    return true;
                }
                this.f36636ag = 1;
                return true;
            } else {
                boolean m21922g = this.f36661k.m21922g();
                if (m21922g) {
                    C10930b c10930b = this.f36661k.f35335b;
                    if (position != 0) {
                        if (c10930b.f35348d == null) {
                            c10930b.f35348d = new int[1];
                            c10930b.f35353i.numBytesOfClearData = c10930b.f35348d;
                        }
                        int[] iArr = c10930b.f35348d;
                        iArr[0] = iArr[0] + position;
                    }
                }
                if (this.f36615L && !m21922g) {
                    C11624s.m19835a(this.f36661k.f35336c);
                    if (this.f36661k.f35336c.position() == 0) {
                        return true;
                    }
                    this.f36615L = false;
                }
                char c = this.f36661k.f35338e;
                C11183e c11183e = this.f36625V;
                if (c11183e != null) {
                    Format format = this.f36670t;
                    DecoderInputBuffer decoderInputBuffer = this.f36661k;
                    if (c11183e.f36734c) {
                        c = decoderInputBuffer.f35338e;
                    } else {
                        ByteBuffer byteBuffer2 = (ByteBuffer) C11593a.m20020b(decoderInputBuffer.f35336c);
                        int i2 = 0;
                        for (int i3 = 0; i3 < 4; i3++) {
                            i2 = (i2 << 8) | (byteBuffer2.get(i3) & 255);
                        }
                        int m21993b = C10907o.m21993b(i2);
                        if (m21993b == -1) {
                            c11183e.f36734c = true;
                            C11617n.m19863a("C2Mp3TimestampTracker", "MPEG audio header is invalid.");
                            c = decoderInputBuffer.f35338e;
                        } else if (c11183e.f36732a == 0) {
                            c11183e.f36733b = decoderInputBuffer.f35338e;
                            c11183e.f36732a = m21993b - 529;
                            c = c11183e.f36733b;
                        } else {
                            long j = (c11183e.f36732a * 1000000) / format.sampleRate;
                            c11183e.f36732a += m21993b;
                            c = c11183e.f36733b + j;
                        }
                    }
                }
                if (this.f36661k.m21920E_()) {
                    this.f36665o.add(Long.valueOf(c));
                }
                if (this.f36646aq) {
                    this.f36664n.m20015a((long) c, (char) this.f36670t);
                    this.f36646aq = false;
                }
                if (this.f36625V != null) {
                    this.f36642am = Math.max(this.f36642am, this.f36661k.f35338e);
                } else {
                    this.f36642am = Math.max(this.f36642am, (long) c);
                }
                this.f36661k.m21921h();
                if (this.f36661k.m21915e()) {
                    mo19695b(this.f36661k);
                }
                mo19714a(this.f36661k);
                try {
                    if (m21922g) {
                        this.f36606C.mo21230a(this.f36627X, this.f36661k.f35335b, c);
                    } else {
                        this.f36606C.mo21232a(this.f36627X, this.f36661k.f35336c.limit(), c, 0);
                    }
                    m21332S();
                    this.f36639aj = true;
                    this.f36636ag = 0;
                    this.f36655e.f35359c++;
                    return true;
                } catch (MediaCodec.CryptoException e2) {
                    throw m21807a(e2, this.f36670t);
                }
            }
        }
    }

    /* renamed from: V */
    private boolean m21329V() throws ExoPlaybackException {
        if (C11599af.f38648a < 23) {
            return true;
        }
        float mo19720a = mo19720a(this.f36605B, m21790u());
        float f = this.f36610G;
        if (f == mo19720a) {
            return true;
        }
        if (mo19720a == -1.0f) {
            m21327X();
            return false;
        } else if (f == -1.0f && mo19720a <= this.f36659i) {
            return true;
        } else {
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", mo19720a);
            this.f36606C.mo21226a(bundle);
            this.f36610G = mo19720a;
            return true;
        }
    }

    /* renamed from: W */
    private boolean m21328W() throws ExoPlaybackException {
        if (!this.f36639aj) {
            m21319aa();
            return true;
        }
        this.f36637ah = 1;
        if (this.f36616M || this.f36618O) {
            this.f36638ai = 3;
            return false;
        }
        this.f36638ai = 2;
        return true;
    }

    /* renamed from: X */
    private void m21327X() throws ExoPlaybackException {
        if (!this.f36639aj) {
            m21325Z();
            return;
        }
        this.f36637ah = 1;
        this.f36638ai = 3;
    }

    /* renamed from: Y */
    private void m21326Y() throws ExoPlaybackException {
        int i = this.f36638ai;
        if (i == 1) {
            m21335P();
        } else if (i == 2) {
            m21335P();
            m21319aa();
        } else if (i == 3) {
            m21325Z();
        } else {
            this.f36645ap = true;
            mo21347B();
        }
    }

    /* renamed from: Z */
    private void m21325Z() throws ExoPlaybackException {
        m21342H();
        m21346C();
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
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m21324a(android.media.MediaCrypto r10, boolean r11) throws com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException {
        /*
            Method dump skipped, instructions count: 1484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.m21324a(android.media.MediaCrypto, boolean):void");
    }

    /* renamed from: a */
    private void m21322a(DrmSession drmSession) {
        DrmSession._CC.m21867a(this.f36673w, drmSession);
        this.f36673w = drmSession;
    }

    /* renamed from: a */
    private static boolean m21321a(C10970j c10970j, Format format) {
        if (c10970j.f35483d) {
            return false;
        }
        try {
            MediaCrypto mediaCrypto = new MediaCrypto(c10970j.f35481b, c10970j.f35482c);
            try {
                return mediaCrypto.requiresSecureDecoderComponent(format.sampleMimeType);
            } finally {
                mediaCrypto.release();
            }
        } catch (MediaCryptoException e) {
            return true;
        }
    }

    /* renamed from: a */
    private boolean m21320a(boolean z) throws ExoPlaybackException {
        C11258q t = m21791t();
        this.f36660j.mo20663a();
        int a = m21808a(t, this.f36660j, z);
        if (a == -5) {
            mo19703a(t);
            return true;
        } else if (a != -4 || !this.f36660j.m21917c()) {
            return false;
        } else {
            this.f36644ao = true;
            m21326Y();
            return false;
        }
    }

    /* renamed from: aa */
    private void m21319aa() throws ExoPlaybackException {
        try {
            this.f36674x.setMediaDrmSession(m21313c(this.f36673w).f35482c);
            m21316b(this.f36673w);
            this.f36637ah = 0;
            this.f36638ai = 0;
        } catch (MediaCryptoException e) {
            throw m21807a(e, this.f36670t);
        }
    }

    /* renamed from: b */
    private void m21316b(DrmSession drmSession) {
        DrmSession._CC.m21867a(this.f36672v, drmSession);
        this.f36672v = drmSession;
    }

    /* renamed from: b */
    private boolean m21318b(long j, long j2) throws ExoPlaybackException {
        boolean z;
        int i;
        boolean z2;
        if (!m21333R()) {
            if (!this.f36619P || !this.f36640ak) {
                i = this.f36606C.mo21228a(this.f36666p);
            } else {
                try {
                    i = this.f36606C.mo21228a(this.f36666p);
                } catch (IllegalStateException e) {
                    m21326Y();
                    if (!this.f36645ap) {
                        return false;
                    }
                    m21342H();
                    return false;
                }
            }
            if (i < 0) {
                if (i != -2) {
                    if (!this.f36624U) {
                        return false;
                    }
                    if (!this.f36644ao && this.f36637ah != 2) {
                        return false;
                    }
                    m21326Y();
                    return false;
                }
                this.f36641al = true;
                MediaFormat mo21220c = this.f36606C.mo21220c();
                if (this.f36614K != 0 && mo21220c.getInteger("width") == 32 && mo21220c.getInteger("height") == 32) {
                    this.f36623T = true;
                    return true;
                }
                if (this.f36621R) {
                    mo21220c.setInteger("channel-count", 1);
                }
                this.f36608E = mo21220c;
                this.f36609F = true;
                return true;
            } else if (this.f36623T) {
                this.f36623T = false;
                this.f36606C.mo21229a(i, false);
                return true;
            } else if (this.f36666p.size == 0 && (this.f36666p.flags & 4) != 0) {
                m21326Y();
                return false;
            } else {
                this.f36628Y = i;
                ByteBuffer mo21221b = this.f36606C.mo21221b(i);
                this.f36629Z = mo21221b;
                if (mo21221b != null) {
                    mo21221b.position(this.f36666p.offset);
                    this.f36629Z.limit(this.f36666p.offset + this.f36666p.size);
                }
                if (this.f36620Q && this.f36666p.presentationTimeUs == 0 && (this.f36666p.flags & 4) != 0) {
                    long j3 = this.f36642am;
                    if (j3 != -9223372036854775807L) {
                        this.f36666p.presentationTimeUs = j3;
                    }
                }
                long j4 = this.f36666p.presentationTimeUs;
                int size = this.f36665o.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        z2 = false;
                        break;
                    } else if (this.f36665o.get(i2).longValue() == j4) {
                        this.f36665o.remove(i2);
                        z2 = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                this.f36630aa = z2;
                this.f36631ab = this.f36643an == this.f36666p.presentationTimeUs;
                m21315c(this.f36666p.presentationTimeUs);
            }
        }
        if (!this.f36619P || !this.f36640ak) {
            z = mo19717a(j, j2, this.f36606C, this.f36629Z, this.f36628Y, this.f36666p.flags, 1, this.f36666p.presentationTimeUs, this.f36630aa, this.f36631ab, this.f36671u);
        } else {
            try {
                try {
                    z = mo19717a(j, j2, this.f36606C, this.f36629Z, this.f36628Y, this.f36666p.flags, 1, this.f36666p.presentationTimeUs, this.f36630aa, this.f36631ab, this.f36671u);
                } catch (IllegalStateException e2) {
                    m21326Y();
                    if (!this.f36645ap) {
                        return false;
                    }
                    m21342H();
                    return false;
                }
            } catch (IllegalStateException e3) {
            }
        }
        if (z) {
            mo19690d(this.f36666p.presentationTimeUs);
            boolean z3 = (this.f36666p.flags & 4) != 0;
            m21331T();
            if (!z3) {
                return true;
            }
            m21326Y();
            return false;
        }
        return false;
    }

    /* renamed from: c */
    private C10970j m21313c(DrmSession drmSession) throws ExoPlaybackException {
        AbstractC10963h mo21839g = drmSession.mo21839g();
        if (mo21839g == null || (mo21839g instanceof C10970j)) {
            return (C10970j) mo21839g;
        }
        throw m21807a(new IllegalArgumentException("Expecting FrameworkMediaCrypto but found: ".concat(String.valueOf(mo21839g))), this.f36670t);
    }

    /* renamed from: c */
    public static boolean m21314c(Format format) {
        return format.exoMediaCryptoType == null || C10970j.class.equals(format.exoMediaCryptoType);
    }

    /* renamed from: e */
    private boolean m21312e(long j) {
        return this.f36676z == -9223372036854775807L || SystemClock.elapsedRealtime() - j < this.f36676z;
    }

    /* renamed from: A */
    public void mo19731A() {
    }

    /* renamed from: B */
    protected void mo21347B() throws ExoPlaybackException {
    }

    /* renamed from: C */
    public final void m21346C() throws ExoPlaybackException {
        Format format;
        if (this.f36606C != null || this.f36632ac || (format = this.f36670t) == null) {
            return;
        }
        if (this.f36673w == null && mo21317b(format)) {
            Format format2 = this.f36670t;
            m21337N();
            String str = format2.sampleMimeType;
            if ("audio/mp4a-latm".equals(str) || "audio/mpeg".equals(str) || "audio/opus".equals(str)) {
                this.f36663m.m21255d(32);
            } else {
                this.f36663m.m21255d(1);
            }
            this.f36632ac = true;
            return;
        }
        m21316b(this.f36673w);
        String str2 = this.f36670t.sampleMimeType;
        DrmSession drmSession = this.f36672v;
        if (drmSession != null) {
            if (this.f36674x == null) {
                C10970j m21313c = m21313c(drmSession);
                if (m21313c != null) {
                    try {
                        this.f36674x = new MediaCrypto(m21313c.f35481b, m21313c.f35482c);
                        this.f36675y = !m21313c.f35483d && this.f36674x.requiresSecureDecoderComponent(str2);
                    } catch (MediaCryptoException e) {
                        throw m21807a(e, this.f36670t);
                    }
                } else if (this.f36672v.mo21841e() == null) {
                    return;
                }
            }
            if (C10970j.f35480a) {
                int mo21843c = this.f36672v.mo21843c();
                if (mo21843c == 1) {
                    throw m21807a(this.f36672v.mo21841e(), this.f36670t);
                }
                if (mo21843c != 4) {
                    return;
                }
            }
        }
        try {
            m21324a(this.f36674x, this.f36675y);
        } catch (DecoderInitializationException e2) {
            throw m21807a(e2, this.f36670t);
        }
    }

    /* renamed from: D */
    protected boolean mo19730D() {
        return false;
    }

    /* renamed from: E */
    public final AbstractC11184f m21345E() {
        return this.f36606C;
    }

    /* renamed from: F */
    public final MediaFormat m21344F() {
        return this.f36608E;
    }

    /* renamed from: G */
    public final C11187g m21343G() {
        return this.f36613J;
    }

    /* renamed from: H */
    public final void m21342H() {
        try {
            AbstractC11184f abstractC11184f = this.f36606C;
            if (abstractC11184f != null) {
                abstractC11184f.mo21217e();
                this.f36655e.f35358b++;
                mo19700a(this.f36613J.f36736a);
            }
            this.f36606C = null;
            try {
                MediaCrypto mediaCrypto = this.f36674x;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
            }
        } catch (Throwable th) {
            this.f36606C = null;
            try {
                MediaCrypto mediaCrypto2 = this.f36674x;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
            }
        }
    }

    /* renamed from: I */
    public final boolean m21341I() throws ExoPlaybackException {
        boolean m21336O = m21336O();
        if (m21336O) {
            m21346C();
        }
        return m21336O;
    }

    /* renamed from: J */
    public void mo19729J() {
        m21332S();
        m21331T();
        this.f36626W = -9223372036854775807L;
        this.f36640ak = false;
        this.f36639aj = false;
        this.f36622S = false;
        this.f36623T = false;
        this.f36630aa = false;
        this.f36631ab = false;
        this.f36665o.clear();
        this.f36642am = -9223372036854775807L;
        this.f36643an = -9223372036854775807L;
        C11183e c11183e = this.f36625V;
        if (c11183e != null) {
            c11183e.f36732a = 0L;
            c11183e.f36733b = 0L;
            c11183e.f36734c = false;
        }
        this.f36637ah = 0;
        this.f36638ai = 0;
        this.f36636ag = this.f36635af ? 1 : 0;
    }

    /* renamed from: K */
    public final float m21340K() {
        return this.f36604A;
    }

    /* renamed from: L */
    public final void m21339L() {
        this.f36647ar = true;
    }

    /* renamed from: M */
    public final long m21338M() {
        return this.f36650au;
    }

    /* renamed from: a */
    protected float mo19720a(float f, Format[] formatArr) {
        return -1.0f;
    }

    @Override // com.google.android.exoplayer2.AbstractC10853ag
    /* renamed from: a */
    public final int mo19748a(Format format) throws ExoPlaybackException {
        try {
            return mo19706a(this.f36657g, format);
        } catch (MediaCodecUtil.DecoderQueryException e) {
            throw m21807a(e, format);
        }
    }

    /* renamed from: a */
    protected abstract int mo19706a(AbstractC11188h abstractC11188h, Format format) throws MediaCodecUtil.DecoderQueryException;

    /* renamed from: a */
    protected C10935e mo19709a(C11187g c11187g, Format format, Format format2) {
        return new C10935e(c11187g.f36736a, format, format2, 0, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x016e, code lost:
        if (m21328W() == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01e5, code lost:
        if (m21328W() == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x020c, code lost:
        if (m21328W() == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x020f, code lost:
        r18 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x024e, code lost:
        if (r19 == false) goto L85;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.exoplayer2.decoder.C10935e mo19703a(com.google.android.exoplayer2.C11258q r9) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 665
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.mo19703a(com.google.android.exoplayer2.q):com.google.android.exoplayer2.decoder.e");
    }

    /* renamed from: a */
    protected MediaCodecDecoderException mo19698a(Throwable th, C11187g c11187g) {
        return new MediaCodecDecoderException(th, c11187g);
    }

    /* renamed from: a */
    protected abstract List<C11187g> mo19705a(AbstractC11188h abstractC11188h, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException;

    @Override // com.google.android.exoplayer2.AbstractC10976e, com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: a */
    public void mo19721a(float f, float f2) throws ExoPlaybackException {
        this.f36604A = f;
        this.f36605B = f2;
        if (this.f36606C == null || this.f36638ai == 3 || mo21813C_() == 0) {
            return;
        }
        m21329V();
    }

    /* JADX WARN: Code restructure failed: missing block: B:94:0x01cf, code lost:
        if (r21.f36632ac != false) goto L95;
     */
    /* JADX WARN: Removed duplicated region for block: B:226:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x041a  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0435  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x044c  */
    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo19749a(long r17, long r19) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 1112
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.mo19749a(long, long):void");
    }

    @Override // com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: a */
    public void mo19716a(long j, boolean z) throws ExoPlaybackException {
        this.f36644ao = false;
        this.f36645ap = false;
        this.f36647ar = false;
        if (this.f36632ac) {
            this.f36663m.mo20663a();
            this.f36662l.mo20663a();
            this.f36633ad = false;
        } else {
            m21341I();
        }
        if (this.f36664n.m20013b() > 0) {
            this.f36646aq = true;
        }
        this.f36664n.m20017a();
        int i = this.f36651av;
        if (i != 0) {
            this.f36650au = this.f36668r[i - 1];
            this.f36649at = this.f36667q[i - 1];
            this.f36651av = 0;
        }
    }

    /* renamed from: a */
    public final void m21323a(ExoPlaybackException exoPlaybackException) {
        this.f36648as = exoPlaybackException;
    }

    /* renamed from: a */
    protected void mo19715a(Format format, MediaFormat mediaFormat) throws ExoPlaybackException {
    }

    /* renamed from: a */
    protected void mo19714a(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
    }

    /* renamed from: a */
    protected abstract void mo19708a(C11187g c11187g, AbstractC11184f abstractC11184f, Format format, MediaCrypto mediaCrypto, float f);

    /* renamed from: a */
    protected void mo19700a(String str) {
    }

    /* renamed from: a */
    protected void mo19699a(String str, long j, long j2) {
    }

    @Override // com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: a */
    public void mo19697a(boolean z, boolean z2) throws ExoPlaybackException {
        this.f36655e = new C10934d();
    }

    @Override // com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: a */
    public final void mo19747a(Format[] formatArr, long j, long j2) throws ExoPlaybackException {
        boolean z = true;
        if (this.f36650au == -9223372036854775807L) {
            if (this.f36649at != -9223372036854775807L) {
                z = false;
            }
            C11593a.m20019b(z);
            this.f36649at = j;
            this.f36650au = j2;
            return;
        }
        int i = this.f36651av;
        if (i == this.f36668r.length) {
            C11617n.m19863a("MediaCodecRenderer", "Too many stream changes, so dropping offset: " + this.f36668r[this.f36651av - 1]);
        } else {
            this.f36651av = i + 1;
        }
        long[] jArr = this.f36667q;
        int i2 = this.f36651av;
        jArr[i2 - 1] = j;
        this.f36668r[i2 - 1] = j2;
        this.f36669s[i2 - 1] = this.f36642am;
    }

    /* renamed from: a */
    protected abstract boolean mo19717a(long j, long j2, AbstractC11184f abstractC11184f, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, Format format) throws ExoPlaybackException;

    /* renamed from: a */
    protected boolean mo19711a(C11187g c11187g) {
        return true;
    }

    /* renamed from: b */
    protected void mo19695b(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
    }

    /* renamed from: b */
    protected boolean mo21317b(Format format) {
        return false;
    }

    /* renamed from: c */
    public final void m21315c(long j) throws ExoPlaybackException {
        boolean z;
        Format m20016a = this.f36664n.m20016a(j);
        Format format = m20016a;
        if (m20016a == null) {
            format = m20016a;
            if (this.f36609F) {
                format = this.f36664n.m20011c();
            }
        }
        if (format != null) {
            this.f36671u = format;
            z = true;
        } else {
            z = false;
        }
        if (z || (this.f36609F && this.f36671u != null)) {
            mo19715a(this.f36671u, this.f36608E);
            this.f36609F = false;
        }
    }

    /* renamed from: d */
    public void mo19690d(long j) {
        while (true) {
            int i = this.f36651av;
            if (i == 0 || j < this.f36669s[0]) {
                return;
            }
            long[] jArr = this.f36667q;
            this.f36649at = jArr[0];
            this.f36650au = this.f36668r[0];
            int i2 = i - 1;
            this.f36651av = i2;
            System.arraycopy(jArr, 1, jArr, 0, i2);
            long[] jArr2 = this.f36668r;
            System.arraycopy(jArr2, 1, jArr2, 0, this.f36651av);
            long[] jArr3 = this.f36669s;
            System.arraycopy(jArr3, 1, jArr3, 0, this.f36651av);
            mo19731A();
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC10976e, com.google.android.exoplayer2.AbstractC10853ag
    /* renamed from: o */
    public final int mo21311o() {
        return 8;
    }

    @Override // com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: p */
    public void mo19686p() {
    }

    @Override // com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: q */
    public void mo19685q() {
    }

    @Override // com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: r */
    public void mo19684r() {
        this.f36670t = null;
        this.f36649at = -9223372036854775807L;
        this.f36650au = -9223372036854775807L;
        this.f36651av = 0;
        if (this.f36673w == null && this.f36672v == null) {
            m21336O();
        } else {
            mo19683s();
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: s */
    public void mo19683s() {
        try {
            m21337N();
            m21342H();
        } finally {
            m21322a((DrmSession) null);
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: y */
    public boolean mo19681y() {
        if (this.f36670t != null) {
            if (m21788w() || m21333R()) {
                return true;
            }
            return this.f36626W != -9223372036854775807L && SystemClock.elapsedRealtime() < this.f36626W;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: z */
    public boolean mo19746z() {
        return this.f36645ap;
    }
}
