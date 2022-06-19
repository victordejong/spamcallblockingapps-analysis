package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Looper;
import android.os.SystemClock;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dzq.class */
public abstract class dzq extends dvi {

    /* renamed from: b */
    private static final byte[] f48396b = ede.m15184d("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");

    /* renamed from: A */
    private long f48397A;

    /* renamed from: B */
    private int f48398B;

    /* renamed from: C */
    private int f48399C;

    /* renamed from: D */
    private boolean f48400D;

    /* renamed from: E */
    private boolean f48401E;

    /* renamed from: F */
    private int f48402F;

    /* renamed from: G */
    private int f48403G;

    /* renamed from: H */
    private boolean f48404H;

    /* renamed from: I */
    private boolean f48405I;

    /* renamed from: J */
    private boolean f48406J;

    /* renamed from: K */
    private boolean f48407K;

    /* renamed from: L */
    private boolean f48408L;

    /* renamed from: M */
    private boolean f48409M;

    /* renamed from: a */
    protected dxk f48410a;

    /* renamed from: c */
    private final dzs f48411c;

    /* renamed from: d */
    private final dxq<Object> f48412d;

    /* renamed from: e */
    private final boolean f48413e;

    /* renamed from: f */
    private final dxm f48414f;

    /* renamed from: g */
    private final dxm f48415g;

    /* renamed from: h */
    private final dvw f48416h;

    /* renamed from: i */
    private final List<Long> f48417i;

    /* renamed from: j */
    private final MediaCodec.BufferInfo f48418j;

    /* renamed from: k */
    private zzht f48419k;

    /* renamed from: l */
    private dxo<Object> f48420l;

    /* renamed from: m */
    private dxo<Object> f48421m;

    /* renamed from: n */
    private MediaCodec f48422n;

    /* renamed from: o */
    private dzr f48423o;

    /* renamed from: p */
    private boolean f48424p;

    /* renamed from: q */
    private boolean f48425q;

    /* renamed from: r */
    private boolean f48426r;

    /* renamed from: s */
    private boolean f48427s;

    /* renamed from: t */
    private boolean f48428t;

    /* renamed from: u */
    private boolean f48429u;

    /* renamed from: v */
    private boolean f48430v;

    /* renamed from: w */
    private boolean f48431w;

    /* renamed from: x */
    private boolean f48432x;

    /* renamed from: y */
    private ByteBuffer[] f48433y;

    /* renamed from: z */
    private ByteBuffer[] f48434z;

    public dzq(int i, dzs dzsVar, dxq<Object> dxqVar, boolean z) {
        super(i);
        ecr.m15247b(ede.f48739a >= 16);
        this.f48411c = (dzs) ecr.m15251a(dzsVar);
        this.f48412d = null;
        this.f48413e = z;
        this.f48414f = new dxm(0);
        this.f48415g = new dxm(0);
        this.f48416h = new dvw();
        this.f48417i = new ArrayList();
        this.f48418j = new MediaCodec.BufferInfo();
        this.f48402F = 0;
        this.f48403G = 0;
    }

    /* renamed from: a */
    private final void m15400a(zzly zzlyVar) throws zzhe {
        throw zzhe.m13625a(zzlyVar, m15659r());
    }

    /* renamed from: b */
    private final boolean m15399b(long j, long j2) throws zzhe {
        boolean z;
        boolean z2;
        if (this.f48399C < 0) {
            if (!this.f48429u || !this.f48405I) {
                this.f48399C = this.f48422n.dequeueOutputBuffer(this.f48418j, 0L);
            } else {
                try {
                    this.f48399C = this.f48422n.dequeueOutputBuffer(this.f48418j, 0L);
                } catch (IllegalStateException e) {
                    m15395w();
                    if (!this.f48407K) {
                        return false;
                    }
                    mo15177E();
                    return false;
                }
            }
            int i = this.f48399C;
            if (i < 0) {
                if (i == -2) {
                    MediaFormat outputFormat = this.f48422n.getOutputFormat();
                    if (this.f48426r && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
                        this.f48432x = true;
                        return true;
                    }
                    if (this.f48430v) {
                        outputFormat.setInteger("channel-count", 1);
                    }
                    mo15168a(this.f48422n, outputFormat);
                    return true;
                } else if (i == -3) {
                    this.f48434z = this.f48422n.getOutputBuffers();
                    return true;
                } else if (!this.f48427s) {
                    return false;
                } else {
                    if (!this.f48406J && this.f48403G != 2) {
                        return false;
                    }
                    m15395w();
                    return false;
                }
            } else if (this.f48432x) {
                this.f48432x = false;
                this.f48422n.releaseOutputBuffer(i, false);
                this.f48399C = -1;
                return true;
            } else if ((this.f48418j.flags & 4) != 0) {
                m15395w();
                this.f48399C = -1;
                return false;
            } else {
                ByteBuffer byteBuffer = this.f48434z[this.f48399C];
                if (byteBuffer != null) {
                    byteBuffer.position(this.f48418j.offset);
                    byteBuffer.limit(this.f48418j.offset + this.f48418j.size);
                }
                long j3 = this.f48418j.presentationTimeUs;
                int size = this.f48417i.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        z2 = false;
                        break;
                    } else if (this.f48417i.get(i2).longValue() == j3) {
                        this.f48417i.remove(i2);
                        z2 = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                this.f48400D = z2;
            }
        }
        if (!this.f48429u || !this.f48405I) {
            MediaCodec mediaCodec = this.f48422n;
            ByteBuffer[] byteBufferArr = this.f48434z;
            int i3 = this.f48399C;
            z = mo15172a(j, j2, mediaCodec, byteBufferArr[i3], i3, this.f48418j.flags, this.f48418j.presentationTimeUs, this.f48400D);
        } else {
            try {
                MediaCodec mediaCodec2 = this.f48422n;
                ByteBuffer[] byteBufferArr2 = this.f48434z;
                int i4 = this.f48399C;
                z = mo15172a(j, j2, mediaCodec2, byteBufferArr2[i4], i4, this.f48418j.flags, this.f48418j.presentationTimeUs, this.f48400D);
            } catch (IllegalStateException e2) {
                m15395w();
                if (!this.f48407K) {
                    return false;
                }
                mo15177E();
                return false;
            }
        }
        if (z) {
            long j4 = this.f48418j.presentationTimeUs;
            this.f48399C = -1;
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x022b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x022d  */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m15396v() throws com.google.android.gms.internal.ads.zzhe {
        /*
            Method dump skipped, instructions count: 786
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dzq.m15396v():boolean");
    }

    /* renamed from: w */
    private final void m15395w() throws zzhe {
        if (this.f48403G == 2) {
            mo15177E();
            m15406B();
            return;
        }
        this.f48407K = true;
        mo15407A();
    }

    /* renamed from: A */
    protected void mo15407A() throws zzhe {
    }

    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* renamed from: B */
    public final void m15406B() throws zzhe {
        zzht zzhtVar;
        if (this.f48422n != null || (zzhtVar = this.f48419k) == null) {
            return;
        }
        dxo<Object> dxoVar = this.f48421m;
        this.f48420l = dxoVar;
        if (dxoVar != null) {
            int m15508a = dxoVar.m15508a();
            if (m15508a == 0) {
                throw zzhe.m13625a(this.f48420l.m15507b(), m15659r());
            }
            if (m15508a != 3 && m15508a != 4) {
                return;
            }
            throw new NoSuchMethodError();
        }
        if (this.f48423o == null) {
            try {
                this.f48423o = mo15402a(this.f48411c, zzhtVar, false);
            } catch (zzmd e) {
                m15400a(new zzly(this.f48419k, (Throwable) e, false, -49998));
            }
            if (this.f48423o == null) {
                m15400a(new zzly(this.f48419k, (Throwable) null, false, -49999));
            }
        }
        if (!mo15167a(this.f48423o)) {
            return;
        }
        String str = this.f48423o.f48435a;
        this.f48424p = ede.f48739a < 21 && this.f48419k.zzahq.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
        this.f48425q = ede.f48739a < 18 || (ede.f48739a == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (ede.f48739a == 19 && ede.f48742d.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
        this.f48426r = ede.f48739a < 24 && ("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str)) && ("flounder".equals(ede.f48740b) || "flounder_lte".equals(ede.f48740b) || "grouper".equals(ede.f48740b) || "tilapia".equals(ede.f48740b));
        this.f48427s = ede.f48739a <= 17 && ("OMX.rk.video_decoder.avc".equals(str) || "OMX.allwinner.video.decoder.avc".equals(str));
        this.f48428t = (ede.f48739a <= 23 && "OMX.google.vorbis.decoder".equals(str)) || (ede.f48739a <= 19 && "hb2000".equals(ede.f48740b) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str)));
        this.f48429u = ede.f48739a == 21 && "OMX.google.aac.decoder".equals(str);
        this.f48430v = ede.f48739a <= 18 && this.f48419k.zzahy == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            String valueOf = String.valueOf(str);
            edf.m15182a(valueOf.length() != 0 ? "createCodec:".concat(valueOf) : new String("createCodec:"));
            this.f48422n = MediaCodec.createByCodecName(str);
            edf.m15183a();
            edf.m15182a("configureCodec");
            mo15166a(this.f48423o, this.f48422n, this.f48419k);
            edf.m15183a();
            edf.m15182a("startCodec");
            this.f48422n.start();
            edf.m15183a();
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            mo15163a(str, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
            this.f48433y = this.f48422n.getInputBuffers();
            this.f48434z = this.f48422n.getOutputBuffers();
        } catch (Exception e2) {
            m15400a(new zzly(this.f48419k, (Throwable) e2, false, str));
        }
        this.f48397A = mo15588d() == 2 ? SystemClock.elapsedRealtime() + 1000 : (char) 1;
        this.f48398B = -1;
        this.f48399C = -1;
        this.f48409M = true;
        this.f48410a.f47964a++;
    }

    /* renamed from: C */
    public final MediaCodec m15405C() {
        return this.f48422n;
    }

    /* renamed from: D */
    public final dzr m15404D() {
        return this.f48423o;
    }

    /* renamed from: E */
    public void mo15177E() {
        this.f48397A = -9223372036854775807L;
        this.f48398B = -1;
        this.f48399C = -1;
        this.f48408L = false;
        this.f48400D = false;
        this.f48417i.clear();
        this.f48433y = null;
        this.f48434z = null;
        this.f48423o = null;
        this.f48401E = false;
        this.f48404H = false;
        this.f48424p = false;
        this.f48425q = false;
        this.f48426r = false;
        this.f48427s = false;
        this.f48428t = false;
        this.f48430v = false;
        this.f48431w = false;
        this.f48432x = false;
        this.f48405I = false;
        this.f48402F = 0;
        this.f48403G = 0;
        this.f48414f.f47974c = null;
        if (this.f48422n != null) {
            this.f48410a.f47965b++;
            try {
                this.f48422n.stop();
                try {
                    this.f48422n.release();
                    this.f48422n = null;
                    dxo<Object> dxoVar = this.f48420l;
                    if (dxoVar == null || this.f48421m == dxoVar) {
                        return;
                    }
                    this.f48420l = null;
                } finally {
                }
            } catch (Throwable th) {
                try {
                    this.f48422n.release();
                    throw th;
                } finally {
                    this.f48422n = null;
                    dxo<Object> dxoVar2 = this.f48420l;
                    if (dxoVar2 != null && this.f48421m != dxoVar2) {
                        this.f48420l = null;
                    }
                }
            }
        }
    }

    /* renamed from: F */
    protected void mo15176F() {
    }

    /* renamed from: a */
    protected abstract int mo15165a(dzs dzsVar, zzht zzhtVar) throws zzmd;

    @Override // com.google.android.gms.internal.ads.dwc
    /* renamed from: a */
    public final int mo15401a(zzht zzhtVar) throws zzhe {
        try {
            return mo15165a(this.f48411c, zzhtVar);
        } catch (zzmd e) {
            throw zzhe.m13625a(e, m15659r());
        }
    }

    /* renamed from: a */
    public dzr mo15402a(dzs dzsVar, zzht zzhtVar, boolean z) throws zzmd {
        return dzsVar.mo15381a(zzhtVar.zzaho, z);
    }

    @Override // com.google.android.gms.internal.ads.dvy
    /* renamed from: a */
    public final void mo15403a(long j, long j2) throws zzhe {
        if (this.f48407K) {
            mo15407A();
            return;
        }
        if (this.f48419k == null) {
            this.f48415g.mo15511a();
            int m15662a = m15662a(this.f48416h, this.f48415g, true);
            if (m15662a != -5) {
                if (m15662a != -4) {
                    return;
                }
                ecr.m15247b(this.f48415g.m15522c());
                this.f48406J = true;
                m15395w();
                return;
            }
            mo15158b(this.f48416h.f47756a);
        }
        m15406B();
        if (this.f48422n != null) {
            edf.m15182a("drainAndFeed");
            do {
            } while (m15399b(j, j2));
            do {
            } while (m15396v());
            edf.m15183a();
            return;
        }
        m15661b(j);
        this.f48415g.mo15511a();
        int m15662a2 = m15662a(this.f48416h, this.f48415g, false);
        if (m15662a2 == -5) {
            mo15158b(this.f48416h.f47756a);
        } else if (m15662a2 != -4) {
        } else {
            ecr.m15247b(this.f48415g.m15522c());
            this.f48406J = true;
            m15395w();
        }
    }

    @Override // com.google.android.gms.internal.ads.dvi
    /* renamed from: a */
    public void mo15171a(long j, boolean z) throws zzhe {
        this.f48406J = false;
        this.f48407K = false;
        if (this.f48422n != null) {
            this.f48397A = -9223372036854775807L;
            this.f48398B = -1;
            this.f48399C = -1;
            this.f48409M = true;
            this.f48408L = false;
            this.f48400D = false;
            this.f48417i.clear();
            this.f48431w = false;
            this.f48432x = false;
            if (this.f48425q || (this.f48428t && this.f48405I)) {
                mo15177E();
                m15406B();
            } else if (this.f48403G != 0) {
                mo15177E();
                m15406B();
            } else {
                this.f48422n.flush();
                this.f48404H = false;
            }
            if (!this.f48401E || this.f48419k == null) {
                return;
            }
            this.f48402F = 1;
        }
    }

    /* renamed from: a */
    protected void mo15168a(MediaCodec mediaCodec, MediaFormat mediaFormat) throws zzhe {
    }

    /* renamed from: a */
    protected abstract void mo15166a(dzr dzrVar, MediaCodec mediaCodec, zzht zzhtVar) throws zzmd;

    /* renamed from: a */
    protected void mo15163a(String str, long j, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.dvi
    /* renamed from: a */
    public void mo15162a(boolean z) throws zzhe {
        this.f48410a = new dxk();
    }

    /* renamed from: a */
    protected abstract boolean mo15172a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws zzhe;

    /* renamed from: a */
    protected boolean mo15167a(dzr dzrVar) {
        return true;
    }

    /* renamed from: a */
    protected boolean mo15161a(boolean z, zzht zzhtVar, zzht zzhtVar2) {
        return false;
    }

    /* renamed from: b */
    public void mo15158b(zzht zzhtVar) throws zzhe {
        zzht zzhtVar2 = this.f48419k;
        this.f48419k = zzhtVar;
        boolean z = true;
        if (!ede.m15194a(zzhtVar.zzahr, zzhtVar2 == null ? null : zzhtVar2.zzahr)) {
            if (this.f48419k.zzahr != null) {
                dxq<Object> dxqVar = this.f48412d;
                if (dxqVar == null) {
                    throw zzhe.m13625a(new IllegalStateException("Media requires a DrmSessionManager"), m15659r());
                }
                Looper.myLooper();
                this.f48421m = dxqVar.m15506a();
                dxo<Object> dxoVar = this.f48420l;
            } else {
                this.f48421m = null;
            }
        }
        if (this.f48421m != this.f48420l || this.f48422n == null || !mo15161a(this.f48423o.f48436b, zzhtVar2, this.f48419k)) {
            if (this.f48404H) {
                this.f48403G = 1;
                return;
            }
            mo15177E();
            m15406B();
            return;
        }
        this.f48401E = true;
        this.f48402F = 1;
        if (!this.f48426r || this.f48419k.width != zzhtVar2.width || this.f48419k.height != zzhtVar2.height) {
            z = false;
        }
        this.f48431w = z;
    }

    @Override // com.google.android.gms.internal.ads.dvi, com.google.android.gms.internal.ads.dwc
    /* renamed from: m */
    public final int mo15398m() {
        return 4;
    }

    @Override // com.google.android.gms.internal.ads.dvi
    /* renamed from: n */
    public void mo15152n() {
    }

    @Override // com.google.android.gms.internal.ads.dvi
    /* renamed from: o */
    public void mo15151o() {
    }

    @Override // com.google.android.gms.internal.ads.dvi
    /* renamed from: p */
    public void mo15150p() {
        this.f48419k = null;
        try {
            mo15177E();
        } finally {
            this.f48420l = null;
            this.f48421m = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.dvy
    /* renamed from: t */
    public boolean mo15149t() {
        if (this.f48419k == null || this.f48408L) {
            return false;
        }
        if (m15658s() || this.f48399C >= 0) {
            return true;
        }
        return this.f48397A != -9223372036854775807L && SystemClock.elapsedRealtime() < this.f48397A;
    }

    @Override // com.google.android.gms.internal.ads.dvy
    /* renamed from: u */
    public boolean mo15397u() {
        return this.f48407K;
    }
}
