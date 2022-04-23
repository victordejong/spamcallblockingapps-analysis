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

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f27493b = ede.d("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");
    private long A;
    private int B;
    private int C;
    private boolean D;
    private boolean E;
    private int F;
    private int G;
    private boolean H;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;
    private boolean M;

    /* renamed from: a  reason: collision with root package name */
    protected dxk f27494a;

    /* renamed from: c  reason: collision with root package name */
    private final dzs f27495c;

    /* renamed from: d  reason: collision with root package name */
    private final dxq<Object> f27496d;
    private final boolean e;
    private final dxm f;
    private final dxm g;
    private final dvw h;
    private final List<Long> i;
    private final MediaCodec.BufferInfo j;
    private zzht k;
    private dxo<Object> l;
    private dxo<Object> m;
    private MediaCodec n;
    private dzr o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private boolean x;
    private ByteBuffer[] y;
    private ByteBuffer[] z;

    public dzq(int i, dzs dzsVar, dxq<Object> dxqVar, boolean z) {
        super(i);
        ecr.b(ede.f27664a >= 16);
        this.f27495c = (dzs) ecr.a(dzsVar);
        this.f27496d = null;
        this.e = z;
        this.f = new dxm(0);
        this.g = new dxm(0);
        this.h = new dvw();
        this.i = new ArrayList();
        this.j = new MediaCodec.BufferInfo();
        this.F = 0;
        this.G = 0;
    }

    private final void a(zzly zzlyVar) throws zzhe {
        throw zzhe.a(zzlyVar, r());
    }

    private final boolean b(long j, long j2) throws zzhe {
        boolean z;
        boolean z2;
        if (this.C < 0) {
            if (!this.u || !this.I) {
                this.C = this.n.dequeueOutputBuffer(this.j, 0L);
            } else {
                try {
                    this.C = this.n.dequeueOutputBuffer(this.j, 0L);
                } catch (IllegalStateException e) {
                    w();
                    if (!this.K) {
                        return false;
                    }
                    E();
                    return false;
                }
            }
            int i = this.C;
            if (i >= 0) {
                if (this.x) {
                    this.x = false;
                    this.n.releaseOutputBuffer(i, false);
                    this.C = -1;
                    return true;
                } else if ((this.j.flags & 4) != 0) {
                    w();
                    this.C = -1;
                    return false;
                } else {
                    ByteBuffer byteBuffer = this.z[this.C];
                    if (byteBuffer != null) {
                        byteBuffer.position(this.j.offset);
                        byteBuffer.limit(this.j.offset + this.j.size);
                    }
                    long j3 = this.j.presentationTimeUs;
                    int size = this.i.size();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= size) {
                            z2 = false;
                            break;
                        } else if (this.i.get(i2).longValue() == j3) {
                            this.i.remove(i2);
                            z2 = true;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    this.D = z2;
                }
            } else if (i == -2) {
                MediaFormat outputFormat = this.n.getOutputFormat();
                if (this.r && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
                    this.x = true;
                    return true;
                }
                if (this.v) {
                    outputFormat.setInteger("channel-count", 1);
                }
                a(this.n, outputFormat);
                return true;
            } else if (i == -3) {
                this.z = this.n.getOutputBuffers();
                return true;
            } else if (!this.s) {
                return false;
            } else {
                if (!this.J && this.G != 2) {
                    return false;
                }
                w();
                return false;
            }
        }
        if (!this.u || !this.I) {
            MediaCodec mediaCodec = this.n;
            ByteBuffer[] byteBufferArr = this.z;
            int i3 = this.C;
            z = a(j, j2, mediaCodec, byteBufferArr[i3], i3, this.j.flags, this.j.presentationTimeUs, this.D);
        } else {
            try {
                MediaCodec mediaCodec2 = this.n;
                ByteBuffer[] byteBufferArr2 = this.z;
                int i4 = this.C;
                z = a(j, j2, mediaCodec2, byteBufferArr2[i4], i4, this.j.flags, this.j.presentationTimeUs, this.D);
            } catch (IllegalStateException e2) {
                w();
                if (!this.K) {
                    return false;
                }
                E();
                return false;
            }
        }
        if (!z) {
            return false;
        }
        long j4 = this.j.presentationTimeUs;
        this.C = -1;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x022b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x022d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean v() throws com.google.android.gms.internal.ads.zzhe {
        /*
            Method dump skipped, instructions count: 786
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dzq.v():boolean");
    }

    private final void w() throws zzhe {
        if (this.G == 2) {
            E();
            B();
            return;
        }
        this.K = true;
        A();
    }

    protected void A() throws zzhe {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void B() throws zzhe {
        zzht zzhtVar;
        if (this.n == null && (zzhtVar = this.k) != null) {
            dxo<Object> dxoVar = this.m;
            this.l = dxoVar;
            if (dxoVar != null) {
                int a2 = dxoVar.a();
                if (a2 == 0) {
                    throw zzhe.a(this.l.b(), r());
                } else if (a2 == 3 || a2 == 4) {
                    throw new NoSuchMethodError();
                }
            } else {
                if (this.o == null) {
                    try {
                        this.o = a(this.f27495c, zzhtVar, false);
                    } catch (zzmd e) {
                        a(new zzly(this.k, (Throwable) e, false, -49998));
                    }
                    if (this.o == null) {
                        a(new zzly(this.k, (Throwable) null, false, -49999));
                    }
                }
                if (a(this.o)) {
                    String str = this.o.f27497a;
                    this.p = ede.f27664a < 21 && this.k.zzahq.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
                    this.q = ede.f27664a < 18 || (ede.f27664a == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (ede.f27664a == 19 && ede.f27667d.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
                    this.r = ede.f27664a < 24 && ("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str)) && ("flounder".equals(ede.f27665b) || "flounder_lte".equals(ede.f27665b) || "grouper".equals(ede.f27665b) || "tilapia".equals(ede.f27665b));
                    this.s = ede.f27664a <= 17 && ("OMX.rk.video_decoder.avc".equals(str) || "OMX.allwinner.video.decoder.avc".equals(str));
                    this.t = (ede.f27664a <= 23 && "OMX.google.vorbis.decoder".equals(str)) || (ede.f27664a <= 19 && "hb2000".equals(ede.f27665b) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str)));
                    this.u = ede.f27664a == 21 && "OMX.google.aac.decoder".equals(str);
                    this.v = ede.f27664a <= 18 && this.k.zzahy == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
                    try {
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        String valueOf = String.valueOf(str);
                        edf.a(valueOf.length() != 0 ? "createCodec:".concat(valueOf) : new String("createCodec:"));
                        this.n = MediaCodec.createByCodecName(str);
                        edf.a();
                        edf.a("configureCodec");
                        a(this.o, this.n, this.k);
                        edf.a();
                        edf.a("startCodec");
                        this.n.start();
                        edf.a();
                        long elapsedRealtime2 = SystemClock.elapsedRealtime();
                        a(str, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
                        this.y = this.n.getInputBuffers();
                        this.z = this.n.getOutputBuffers();
                    } catch (Exception e2) {
                        a(new zzly(this.k, (Throwable) e2, false, str));
                    }
                    this.A = d() == 2 ? SystemClock.elapsedRealtime() + 1000 : -9223372036854775807L;
                    this.B = -1;
                    this.C = -1;
                    this.M = true;
                    this.f27494a.f27369a++;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final MediaCodec C() {
        return this.n;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final dzr D() {
        return this.o;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void E() {
        this.A = -9223372036854775807L;
        this.B = -1;
        this.C = -1;
        this.L = false;
        this.D = false;
        this.i.clear();
        this.y = null;
        this.z = null;
        this.o = null;
        this.E = false;
        this.H = false;
        this.p = false;
        this.q = false;
        this.r = false;
        this.s = false;
        this.t = false;
        this.v = false;
        this.w = false;
        this.x = false;
        this.I = false;
        this.F = 0;
        this.G = 0;
        this.f.f27376c = null;
        if (this.n != null) {
            this.f27494a.f27370b++;
            try {
                this.n.stop();
                try {
                    this.n.release();
                    this.n = null;
                    dxo<Object> dxoVar = this.l;
                    if (dxoVar != null && this.m != dxoVar) {
                        this.l = null;
                    }
                } finally {
                }
            } catch (Throwable th) {
                try {
                    this.n.release();
                    throw th;
                } finally {
                    this.n = null;
                    dxo<Object> dxoVar2 = this.l;
                    if (!(dxoVar2 == null || this.m == dxoVar2)) {
                        this.l = null;
                    }
                }
            }
        }
    }

    protected void F() {
    }

    protected abstract int a(dzs dzsVar, zzht zzhtVar) throws zzmd;

    @Override // com.google.android.gms.internal.ads.dwc
    public final int a(zzht zzhtVar) throws zzhe {
        try {
            return a(this.f27495c, zzhtVar);
        } catch (zzmd e) {
            throw zzhe.a(e, r());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public dzr a(dzs dzsVar, zzht zzhtVar, boolean z) throws zzmd {
        return dzsVar.a(zzhtVar.zzaho, z);
    }

    @Override // com.google.android.gms.internal.ads.dvy
    public final void a(long j, long j2) throws zzhe {
        if (this.K) {
            A();
            return;
        }
        if (this.k == null) {
            this.g.a();
            int a2 = a(this.h, this.g, true);
            if (a2 == -5) {
                b(this.h.f27281a);
            } else if (a2 == -4) {
                ecr.b(this.g.c());
                this.J = true;
                w();
                return;
            } else {
                return;
            }
        }
        B();
        if (this.n != null) {
            edf.a("drainAndFeed");
            do {
            } while (b(j, j2));
            do {
            } while (v());
            edf.a();
            return;
        }
        b(j);
        this.g.a();
        int a3 = a(this.h, this.g, false);
        if (a3 == -5) {
            b(this.h.f27281a);
        } else if (a3 == -4) {
            ecr.b(this.g.c());
            this.J = true;
            w();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dvi
    public void a(long j, boolean z) throws zzhe {
        this.J = false;
        this.K = false;
        if (this.n != null) {
            this.A = -9223372036854775807L;
            this.B = -1;
            this.C = -1;
            this.M = true;
            this.L = false;
            this.D = false;
            this.i.clear();
            this.w = false;
            this.x = false;
            if (this.q || (this.t && this.I)) {
                E();
                B();
            } else if (this.G != 0) {
                E();
                B();
            } else {
                this.n.flush();
                this.H = false;
            }
            if (this.E && this.k != null) {
                this.F = 1;
            }
        }
    }

    protected void a(MediaCodec mediaCodec, MediaFormat mediaFormat) throws zzhe {
    }

    protected abstract void a(dzr dzrVar, MediaCodec mediaCodec, zzht zzhtVar) throws zzmd;

    protected void a(String str, long j, long j2) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dvi
    public void a(boolean z) throws zzhe {
        this.f27494a = new dxk();
    }

    protected abstract boolean a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws zzhe;

    protected boolean a(dzr dzrVar) {
        return true;
    }

    protected boolean a(boolean z, zzht zzhtVar, zzht zzhtVar2) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(zzht zzhtVar) throws zzhe {
        zzht zzhtVar2 = this.k;
        this.k = zzhtVar;
        boolean z = true;
        if (!ede.a(zzhtVar.zzahr, zzhtVar2 == null ? null : zzhtVar2.zzahr)) {
            if (this.k.zzahr != null) {
                dxq<Object> dxqVar = this.f27496d;
                if (dxqVar != null) {
                    Looper.myLooper();
                    this.m = dxqVar.a();
                    dxo<Object> dxoVar = this.l;
                } else {
                    throw zzhe.a(new IllegalStateException("Media requires a DrmSessionManager"), r());
                }
            } else {
                this.m = null;
            }
        }
        if (this.m == this.l && this.n != null && a(this.o.f27498b, zzhtVar2, this.k)) {
            this.E = true;
            this.F = 1;
            if (!(this.r && this.k.width == zzhtVar2.width && this.k.height == zzhtVar2.height)) {
                z = false;
            }
            this.w = z;
        } else if (this.H) {
            this.G = 1;
        } else {
            E();
            B();
        }
    }

    @Override // com.google.android.gms.internal.ads.dvi, com.google.android.gms.internal.ads.dwc
    public final int m() {
        return 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dvi
    public void n() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dvi
    public void o() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dvi
    public void p() {
        this.k = null;
        try {
            E();
        } finally {
            this.l = null;
            this.m = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.dvy
    public boolean t() {
        if (this.k == null || this.L) {
            return false;
        }
        if (s() || this.C >= 0) {
            return true;
        }
        return this.A != -9223372036854775807L && SystemClock.elapsedRealtime() < this.A;
    }

    @Override // com.google.android.gms.internal.ads.dvy
    public boolean u() {
        return this.K;
    }
}
