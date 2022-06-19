package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Looper;
import android.os.SystemClock;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
@TargetApi(19)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/doy.class */
public abstract class doy extends dkq {

    /* renamed from: b */
    private static final byte[] f15229b = dsn.m8693e("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");

    /* renamed from: A */
    private long f15230A;

    /* renamed from: B */
    private int f15231B;

    /* renamed from: C */
    private int f15232C;

    /* renamed from: D */
    private boolean f15233D;

    /* renamed from: E */
    private boolean f15234E;

    /* renamed from: F */
    private int f15235F;

    /* renamed from: G */
    private int f15236G;

    /* renamed from: H */
    private boolean f15237H;

    /* renamed from: I */
    private boolean f15238I;

    /* renamed from: J */
    private boolean f15239J;

    /* renamed from: K */
    private boolean f15240K;

    /* renamed from: L */
    private boolean f15241L;

    /* renamed from: M */
    private boolean f15242M;

    /* renamed from: a */
    protected dmt f15243a;

    /* renamed from: c */
    private final dpa f15244c;

    /* renamed from: d */
    private final dnb<dnc> f15245d;

    /* renamed from: e */
    private final boolean f15246e;

    /* renamed from: f */
    private final dmx f15247f;

    /* renamed from: g */
    private final dmx f15248g;

    /* renamed from: h */
    private final dlg f15249h;

    /* renamed from: i */
    private final List<Long> f15250i;

    /* renamed from: j */
    private final MediaCodec.BufferInfo f15251j;

    /* renamed from: k */
    private dlf f15252k;

    /* renamed from: l */
    private dmz<dnc> f15253l;

    /* renamed from: m */
    private dmz<dnc> f15254m;

    /* renamed from: n */
    private MediaCodec f15255n;

    /* renamed from: o */
    private doz f15256o;

    /* renamed from: p */
    private boolean f15257p;

    /* renamed from: q */
    private boolean f15258q;

    /* renamed from: r */
    private boolean f15259r;

    /* renamed from: s */
    private boolean f15260s;

    /* renamed from: t */
    private boolean f15261t;

    /* renamed from: u */
    private boolean f15262u;

    /* renamed from: v */
    private boolean f15263v;

    /* renamed from: w */
    private boolean f15264w;

    /* renamed from: x */
    private boolean f15265x;

    /* renamed from: y */
    private ByteBuffer[] f15266y;

    /* renamed from: z */
    private ByteBuffer[] f15267z;

    public doy(int i, dpa dpaVar, dnb<dnc> dnbVar, boolean z) {
        super(i);
        drz.m8770b(dsn.f15576a >= 16);
        this.f15244c = (dpa) drz.m8774a(dpaVar);
        this.f15245d = dnbVar;
        this.f15246e = z;
        this.f15247f = new dmx(0);
        this.f15248g = new dmx(0);
        this.f15249h = new dlg();
        this.f15250i = new ArrayList();
        this.f15251j = new MediaCodec.BufferInfo();
        this.f15235F = 0;
        this.f15236G = 0;
    }

    /* renamed from: a */
    private final void m8965a(zzle zzleVar) {
        throw zzgq.m6540a(zzleVar, m9307r());
    }

    /* renamed from: b */
    private final boolean m8964b(long j, long j2) {
        boolean mo8677a;
        boolean z;
        boolean z2;
        if (this.f15232C < 0) {
            if (!this.f15262u || !this.f15238I) {
                this.f15232C = this.f15255n.dequeueOutputBuffer(this.f15251j, 0L);
            } else {
                try {
                    this.f15232C = this.f15255n.dequeueOutputBuffer(this.f15251j, 0L);
                } catch (IllegalStateException e) {
                    m8960w();
                    if (this.f15240K) {
                        mo8683C();
                    }
                    z = false;
                }
            }
            if (this.f15232C >= 0) {
                if (this.f15265x) {
                    this.f15265x = false;
                    this.f15255n.releaseOutputBuffer(this.f15232C, false);
                    this.f15232C = -1;
                    z = true;
                } else if ((this.f15251j.flags & 4) != 0) {
                    m8960w();
                    this.f15232C = -1;
                    z = false;
                } else {
                    ByteBuffer byteBuffer = this.f15267z[this.f15232C];
                    if (byteBuffer != null) {
                        byteBuffer.position(this.f15251j.offset);
                        byteBuffer.limit(this.f15251j.offset + this.f15251j.size);
                    }
                    long j3 = this.f15251j.presentationTimeUs;
                    int size = this.f15250i.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            z2 = false;
                            break;
                        } else if (this.f15250i.get(i).longValue() == j3) {
                            this.f15250i.remove(i);
                            z2 = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                    this.f15233D = z2;
                }
            } else if (this.f15232C == -2) {
                MediaFormat outputFormat = this.f15255n.getOutputFormat();
                if (this.f15259r && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
                    this.f15265x = true;
                } else {
                    if (this.f15263v) {
                        outputFormat.setInteger("channel-count", 1);
                    }
                    mo8673a(this.f15255n, outputFormat);
                }
                z = true;
            } else if (this.f15232C == -3) {
                this.f15267z = this.f15255n.getOutputBuffers();
                z = true;
            } else {
                if (this.f15260s && (this.f15239J || this.f15236G == 2)) {
                    m8960w();
                }
                z = false;
            }
            return z;
        }
        if (!this.f15262u || !this.f15238I) {
            mo8677a = mo8677a(j, j2, this.f15255n, this.f15267z[this.f15232C], this.f15232C, this.f15251j.flags, this.f15251j.presentationTimeUs, this.f15233D);
        } else {
            try {
                mo8677a = mo8677a(j, j2, this.f15255n, this.f15267z[this.f15232C], this.f15232C, this.f15251j.flags, this.f15251j.presentationTimeUs, this.f15233D);
            } catch (IllegalStateException e2) {
                m8960w();
                if (this.f15240K) {
                    mo8683C();
                }
                z = false;
            }
        }
        if (mo8677a) {
            long j4 = this.f15251j.presentationTimeUs;
            this.f15232C = -1;
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x024a  */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m8961v() {
        /*
            Method dump skipped, instructions count: 841
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.doy.m8961v():boolean");
    }

    /* renamed from: w */
    private final void m8960w() {
        if (this.f15236G == 2) {
            mo8683C();
            m8958z();
            return;
        }
        this.f15240K = true;
        mo8959y();
    }

    /* renamed from: A */
    public final MediaCodec m8970A() {
        return this.f15255n;
    }

    /* renamed from: B */
    public final doz m8969B() {
        return this.f15256o;
    }

    /* renamed from: C */
    public void mo8683C() {
        this.f15230A = -9223372036854775807L;
        this.f15231B = -1;
        this.f15232C = -1;
        this.f15241L = false;
        this.f15233D = false;
        this.f15250i.clear();
        this.f15266y = null;
        this.f15267z = null;
        this.f15256o = null;
        this.f15234E = false;
        this.f15237H = false;
        this.f15257p = false;
        this.f15258q = false;
        this.f15259r = false;
        this.f15260s = false;
        this.f15261t = false;
        this.f15263v = false;
        this.f15264w = false;
        this.f15265x = false;
        this.f15238I = false;
        this.f15235F = 0;
        this.f15236G = 0;
        this.f15247f.f14880b = null;
        if (this.f15255n != null) {
            this.f15243a.f14862b++;
            try {
                this.f15255n.stop();
                try {
                    this.f15255n.release();
                    this.f15255n = null;
                    if (this.f15253l == null || this.f15254m == this.f15253l) {
                        return;
                    }
                    try {
                        this.f15245d.m9071a(this.f15253l);
                    } finally {
                    }
                } catch (Throwable th) {
                    this.f15255n = null;
                    if (this.f15253l != null && this.f15254m != this.f15253l) {
                        try {
                            this.f15245d.m9071a(this.f15253l);
                        } finally {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    this.f15255n.release();
                    this.f15255n = null;
                    if (this.f15253l != null && this.f15254m != this.f15253l) {
                        try {
                            this.f15245d.m9071a(this.f15253l);
                        } finally {
                        }
                    }
                    throw th2;
                } catch (Throwable th3) {
                    this.f15255n = null;
                    if (this.f15253l != null && this.f15254m != this.f15253l) {
                        try {
                            this.f15245d.m9071a(this.f15253l);
                        } finally {
                        }
                    }
                    throw th3;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dll
    /* renamed from: a */
    public final int mo8967a(dlf dlfVar) {
        try {
            return mo8668a(this.f15244c, dlfVar);
        } catch (zzlj e) {
            throw zzgq.m6540a(e, m9307r());
        }
    }

    /* renamed from: a */
    protected abstract int mo8668a(dpa dpaVar, dlf dlfVar);

    /* renamed from: a */
    public doz mo8966a(dpa dpaVar, dlf dlfVar, boolean z) {
        return dpaVar.mo8939a(dlfVar.f14635c, z);
    }

    @Override // com.google.android.gms.internal.ads.dli
    /* renamed from: a */
    public final void mo8968a(long j, long j2) {
        if (this.f15240K) {
            mo8959y();
            return;
        }
        if (this.f15252k == null) {
            this.f15248g.mo9080a();
            int m9310a = m9310a(this.f15249h, this.f15248g, true);
            if (m9310a != -5) {
                if (m9310a != -4) {
                    return;
                }
                drz.m8770b(this.f15248g.m9107c());
                this.f15239J = true;
                m8960w();
                return;
            }
            mo8661b(this.f15249h.f14659a);
        }
        m8958z();
        if (this.f15255n != null) {
            dso.m8691a("drainAndFeed");
            do {
            } while (m8964b(j, j2));
            do {
            } while (m8961v());
            dso.m8692a();
        } else {
            m9309b(j);
            this.f15248g.mo9080a();
            int m9310a2 = m9310a(this.f15249h, this.f15248g, false);
            if (m9310a2 == -5) {
                mo8661b(this.f15249h.f14659a);
            } else if (m9310a2 == -4) {
                drz.m8770b(this.f15248g.m9107c());
                this.f15239J = true;
                m8960w();
            }
        }
        this.f15243a.m9088a();
    }

    @Override // com.google.android.gms.internal.ads.dkq
    /* renamed from: a */
    public void mo8676a(long j, boolean z) {
        this.f15239J = false;
        this.f15240K = false;
        if (this.f15255n != null) {
            this.f15230A = -9223372036854775807L;
            this.f15231B = -1;
            this.f15232C = -1;
            this.f15242M = true;
            this.f15241L = false;
            this.f15233D = false;
            this.f15250i.clear();
            this.f15264w = false;
            this.f15265x = false;
            if (this.f15258q || (this.f15261t && this.f15238I)) {
                mo8683C();
                m8958z();
            } else if (this.f15236G != 0) {
                mo8683C();
                m8958z();
            } else {
                this.f15255n.flush();
                this.f15237H = false;
            }
            if (!this.f15234E || this.f15252k == null) {
                return;
            }
            this.f15235F = 1;
        }
    }

    /* renamed from: a */
    protected void mo8673a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
    }

    /* renamed from: a */
    protected void mo8671a(dmx dmxVar) {
    }

    /* renamed from: a */
    protected abstract void mo8669a(doz dozVar, MediaCodec mediaCodec, dlf dlfVar, MediaCrypto mediaCrypto);

    /* renamed from: a */
    protected void mo8666a(String str, long j, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.dkq
    /* renamed from: a */
    public void mo8665a(boolean z) {
        this.f15243a = new dmt();
    }

    /* renamed from: a */
    protected abstract boolean mo8677a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z);

    /* renamed from: a */
    protected boolean mo8672a(MediaCodec mediaCodec, boolean z, dlf dlfVar, dlf dlfVar2) {
        return false;
    }

    /* renamed from: a */
    protected boolean mo8670a(doz dozVar) {
        return true;
    }

    /* renamed from: b */
    public void mo8661b(dlf dlfVar) {
        dlf dlfVar2 = this.f15252k;
        this.f15252k = dlfVar;
        if (!dsn.m8704a(this.f15252k.f14638f, dlfVar2 == null ? null : dlfVar2.f14638f)) {
            if (this.f15252k.f14638f == null) {
                this.f15254m = null;
            } else if (this.f15245d == null) {
                throw zzgq.m6540a(new IllegalStateException("Media requires a DrmSessionManager"), m9307r());
            } else {
                this.f15254m = this.f15245d.m9072a(Looper.myLooper(), this.f15252k.f14638f);
                if (this.f15254m == this.f15253l) {
                    this.f15245d.m9071a(this.f15254m);
                }
            }
        }
        if (this.f15254m == this.f15253l && this.f15255n != null && mo8672a(this.f15255n, this.f15256o.f15269b, dlfVar2, this.f15252k)) {
            this.f15234E = true;
            this.f15235F = 1;
            this.f15264w = this.f15259r && this.f15252k.f14639g == dlfVar2.f14639g && this.f15252k.f14640h == dlfVar2.f14640h;
        } else if (this.f15237H) {
            this.f15236G = 1;
        } else {
            mo8683C();
            m8958z();
        }
    }

    @Override // com.google.android.gms.internal.ads.dkq, com.google.android.gms.internal.ads.dll
    /* renamed from: m */
    public final int mo8963m() {
        return 4;
    }

    @Override // com.google.android.gms.internal.ads.dkq
    /* renamed from: n */
    public void mo8656n() {
    }

    @Override // com.google.android.gms.internal.ads.dkq
    /* renamed from: o */
    public void mo8655o() {
    }

    @Override // com.google.android.gms.internal.ads.dkq
    /* renamed from: p */
    public void mo8654p() {
        this.f15252k = null;
        try {
            mo8683C();
            try {
                if (this.f15253l != null) {
                    this.f15245d.m9071a(this.f15253l);
                }
                try {
                    if (this.f15254m != null && this.f15254m != this.f15253l) {
                        this.f15245d.m9071a(this.f15254m);
                    }
                } finally {
                }
            } catch (Throwable th) {
                try {
                    if (this.f15254m != null && this.f15254m != this.f15253l) {
                        this.f15245d.m9071a(this.f15254m);
                    }
                    throw th;
                } finally {
                }
            }
        } catch (Throwable th2) {
            try {
                if (this.f15253l != null) {
                    this.f15245d.m9071a(this.f15253l);
                }
                try {
                    if (this.f15254m != null && this.f15254m != this.f15253l) {
                        this.f15245d.m9071a(this.f15254m);
                    }
                    throw th2;
                } finally {
                }
            } catch (Throwable th3) {
                try {
                    if (this.f15254m != null && this.f15254m != this.f15253l) {
                        this.f15245d.m9071a(this.f15254m);
                    }
                    throw th3;
                } finally {
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dli
    /* renamed from: t */
    public boolean mo8653t() {
        return this.f15252k != null && !this.f15241L && (m9306s() || this.f15232C >= 0 || (this.f15230A != -9223372036854775807L && SystemClock.elapsedRealtime() < this.f15230A));
    }

    @Override // com.google.android.gms.internal.ads.dli
    /* renamed from: u */
    public boolean mo8962u() {
        return this.f15240K;
    }

    /* renamed from: y */
    protected void mo8959y() {
    }

    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* renamed from: z */
    public final void m8958z() {
        if (this.f15255n != null || this.f15252k == null) {
            return;
        }
        this.f15253l = this.f15254m;
        String str = this.f15252k.f14635c;
        if (this.f15253l != null) {
            int m9076a = this.f15253l.m9076a();
            if (m9076a == 0) {
                throw zzgq.m6540a(this.f15253l.m9074c(), m9307r());
            }
            if (m9076a != 3 && m9076a != 4) {
                return;
            }
            this.f15253l.m9075b();
            throw new NoSuchMethodError();
        }
        if (this.f15256o == null) {
            try {
                this.f15256o = mo8966a(this.f15244c, this.f15252k, false);
                if (this.f15256o == null) {
                }
            } catch (zzlj e) {
                m8965a(new zzle(this.f15252k, (Throwable) e, false, -49998));
            }
            if (this.f15256o == null) {
                m8965a(new zzle(this.f15252k, (Throwable) null, false, -49999));
            }
        }
        if (!mo8670a(this.f15256o)) {
            return;
        }
        String str2 = this.f15256o.f15268a;
        this.f15257p = dsn.f15576a < 21 && this.f15252k.f14637e.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str2);
        this.f15258q = dsn.f15576a < 18 || (dsn.f15576a == 18 && ("OMX.SEC.avc.dec".equals(str2) || "OMX.SEC.avc.dec.secure".equals(str2))) || (dsn.f15576a == 19 && dsn.f15579d.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str2) || "OMX.Exynos.avc.dec.secure".equals(str2)));
        this.f15259r = dsn.f15576a < 24 && ("OMX.Nvidia.h264.decode".equals(str2) || "OMX.Nvidia.h264.decode.secure".equals(str2)) && ("flounder".equals(dsn.f15577b) || "flounder_lte".equals(dsn.f15577b) || "grouper".equals(dsn.f15577b) || "tilapia".equals(dsn.f15577b));
        this.f15260s = dsn.f15576a <= 17 && ("OMX.rk.video_decoder.avc".equals(str2) || "OMX.allwinner.video.decoder.avc".equals(str2));
        this.f15261t = (dsn.f15576a <= 23 && "OMX.google.vorbis.decoder".equals(str2)) || (dsn.f15576a <= 19 && "hb2000".equals(dsn.f15577b) && ("OMX.amlogic.avc.decoder.awesome".equals(str2) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str2)));
        this.f15262u = dsn.f15576a == 21 && "OMX.google.aac.decoder".equals(str2);
        this.f15263v = dsn.f15576a <= 18 && this.f15252k.f14644l == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str2);
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            String valueOf = String.valueOf(str2);
            dso.m8691a(valueOf.length() != 0 ? "createCodec:".concat(valueOf) : new String("createCodec:"));
            this.f15255n = MediaCodec.createByCodecName(str2);
            dso.m8692a();
            dso.m8691a("configureCodec");
            mo8669a(this.f15256o, this.f15255n, this.f15252k, (MediaCrypto) null);
            dso.m8692a();
            dso.m8691a("startCodec");
            this.f15255n.start();
            dso.m8692a();
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            mo8666a(str2, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
            this.f15266y = this.f15255n.getInputBuffers();
            this.f15267z = this.f15255n.getOutputBuffers();
        } catch (Exception e2) {
            m8965a(new zzle(this.f15252k, (Throwable) e2, false, str2));
        }
        this.f15230A = mo9212d() == 2 ? SystemClock.elapsedRealtime() + 1000 : (char) 1;
        this.f15231B = -1;
        this.f15232C = -1;
        this.f15242M = true;
        this.f15243a.f14861a++;
    }
}
