package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import java.nio.ByteBuffer;
@TargetApi(16)
/* renamed from: com.google.android.gms.internal.ads.xc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xc.class */
public final class C7140xc extends AbstractC6588if implements AbstractC6516gi {

    /* renamed from: Q */
    private final C6696lc f31965Q;

    /* renamed from: R */
    private final C6992tc f31966R = new C6992tc(null, new AbstractC6436ec[0], new C7066vc(this, null));

    /* renamed from: S */
    private boolean f31967S;

    /* renamed from: T */
    private int f31968T;

    /* renamed from: U */
    private int f31969U;

    /* renamed from: V */
    private long f31970V;

    /* renamed from: W */
    private boolean f31971W;

    public C7140xc(AbstractC6662kf abstractC6662kf, AbstractC6660kd abstractC6660kd, boolean z, Handler handler, AbstractC6733mc abstractC6733mc) {
        super(1, abstractC6662kf, null, true);
        this.f31965Q = new C6696lc(handler, abstractC6733mc);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
        if (r0.m14681f(r0) != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0064, code lost:
        if (r0.m14680g(r0) != false) goto L22;
     */
    @Override // com.google.android.gms.internal.ads.AbstractC6588if
    /* renamed from: B */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final int mo8383B(com.google.android.gms.internal.ads.AbstractC6662kf r4, com.google.android.gms.internal.ads.zzanm r5) {
        /*
            r3 = this;
            r0 = r5
            java.lang.String r0 = r0.f33555i
            r4 = r0
            r0 = r4
            boolean r0 = com.google.android.gms.internal.ads.C6553hi.m14641a(r0)
            if (r0 != 0) goto Le
            r0 = 0
            return r0
        Le:
            int r0 = com.google.android.gms.internal.ads.C6961si.f29514a
            r6 = r0
            r0 = r6
            r1 = 21
            if (r0 < r1) goto L1f
            r0 = 16
            r7 = r0
            goto L22
        L1f:
            r0 = 0
            r7 = r0
        L22:
            r0 = r4
            r1 = 0
            com.google.android.gms.internal.ads.hf r0 = com.google.android.gms.internal.ads.C6884qf.m11913a(r0, r1)
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L2e
            r0 = 1
            return r0
        L2e:
            r0 = 2
            r8 = r0
            r0 = r6
            r1 = 21
            if (r0 < r1) goto L67
            r0 = r5
            int r0 = r0.f33568v
            r9 = r0
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L4f
            r0 = r8
            r6 = r0
            r0 = r4
            r1 = r9
            boolean r0 = r0.m14681f(r1)
            if (r0 == 0) goto L69
        L4f:
            r0 = r5
            int r0 = r0.f33567u
            r9 = r0
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L67
            r0 = r8
            r6 = r0
            r0 = r4
            r1 = r9
            boolean r0 = r0.m14680g(r1)
            if (r0 == 0) goto L69
        L67:
            r0 = 3
            r6 = r0
        L69:
            r0 = r7
            r1 = 4
            r0 = r0 | r1
            r1 = r6
            r0 = r0 | r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C7140xc.mo8383B(com.google.android.gms.internal.ads.kf, com.google.android.gms.internal.ads.zzanm):int");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.AbstractC6588if
    /* renamed from: H */
    public final C6550hf mo9293H(AbstractC6662kf abstractC6662kf, zzanm zzanmVar, boolean z) {
        return super.mo9293H(abstractC6662kf, zzanmVar, false);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6588if, com.google.android.gms.internal.ads.AbstractC7028ub
    /* renamed from: I */
    public final boolean mo8382I() {
        return this.f31966R.m10742i() || super.mo8382I();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6588if
    /* renamed from: J */
    protected final void mo8381J(C6550hf c6550hf, MediaCodec mediaCodec, zzanm zzanmVar, MediaCrypto mediaCrypto) {
        boolean z;
        String str = c6550hf.f23881a;
        if (C6961si.f29514a < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(C6961si.f29516c)) {
            String str2 = C6961si.f29515b;
            z = true;
            if (!str2.startsWith("zeroflte")) {
                z = true;
                if (!str2.startsWith("herolte")) {
                    if (str2.startsWith("heroqlte")) {
                        z = true;
                    }
                }
            }
            this.f31967S = z;
            mediaCodec.configure(zzanmVar.m8101l(), (Surface) null, (MediaCrypto) null, 0);
        }
        z = false;
        this.f31967S = z;
        mediaCodec.configure(zzanmVar.m8101l(), (Surface) null, (MediaCrypto) null, 0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6588if
    /* renamed from: K */
    protected final void mo8380K(String str, long j, long j2) {
        this.f31965Q.m13591c(str, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.AbstractC6588if
    /* renamed from: L */
    public final void mo8379L(zzanm zzanmVar) {
        super.mo8379L(zzanmVar);
        this.f31965Q.m13590d(zzanmVar);
        this.f31968T = "audio/raw".equals(zzanmVar.f33555i) ? zzanmVar.f33569w : 2;
        this.f31969U = zzanmVar.f33567u;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6588if
    /* renamed from: M */
    protected final void mo8378M(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        int[] iArr;
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        if (!this.f31967S || integer != 6) {
            iArr = null;
        } else {
            int i = this.f31969U;
            if (i < 6) {
                iArr = new int[i];
                for (int i2 = 0; i2 < this.f31969U; i2++) {
                    iArr[i2] = i2;
                }
            } else {
                iArr = null;
            }
            integer = 6;
        }
        try {
            this.f31966R.m10748c("audio/raw", integer, integer2, this.f31968T, 0, iArr);
        } catch (zzaon e) {
            throw zzamy.zza(e, m16089x());
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6588if
    /* renamed from: N */
    protected final boolean mo8377N(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) {
        if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.f24237P.f23308e++;
            this.f31966R.m10746e();
            return true;
        }
        try {
            if (!this.f31966R.m10745f(byteBuffer, j3)) {
                return false;
            }
            mediaCodec.releaseOutputBuffer(i, false);
            this.f24237P.f23307d++;
            return true;
        } catch (zzaoo | zzaos e) {
            throw zzamy.zza(e, m16089x());
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6588if
    /* renamed from: O */
    protected final void mo9292O() {
        try {
            this.f31966R.m10744g();
        } catch (zzaos e) {
            throw zzamy.zza(e, m16089x());
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6509gb
    /* renamed from: c */
    public final void mo8366c(int i, Object obj) {
        if (i != 2) {
            return;
        }
        this.f31966R.m10739l(((Float) obj).floatValue());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6516gi
    /* renamed from: c0 */
    public final C6991tb mo9289c0() {
        return this.f31966R.m10740k();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6516gi
    /* renamed from: d0 */
    public final C6991tb mo9288d0(C6991tb c6991tb) {
        return this.f31966R.m10741j(c6991tb);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6360cb, com.google.android.gms.internal.ads.AbstractC7028ub
    /* renamed from: e */
    public final AbstractC6516gi mo9287e() {
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC6516gi
    /* renamed from: o */
    public final long mo9286o() {
        char m10749b = this.f31966R.m10749b(mo9285z());
        if (m10749b != Long.MIN_VALUE) {
            if (!this.f31971W) {
                m10749b = Math.max(this.f31970V, (long) m10749b);
            }
            this.f31970V = m10749b;
            this.f31971W = false;
        }
        return this.f31970V;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.AbstractC6588if, com.google.android.gms.internal.ads.AbstractC6360cb
    /* renamed from: q */
    public final void mo8360q(boolean z) {
        super.mo8360q(z);
        this.f31965Q.m13592b(this.f24237P);
        int i = m16090w().f31496b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.AbstractC6588if, com.google.android.gms.internal.ads.AbstractC6360cb
    /* renamed from: s */
    public final void mo8358s(long j, boolean z) {
        super.mo8358s(j, z);
        this.f31966R.m10737n();
        this.f31970V = j;
        this.f31971W = true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6360cb
    /* renamed from: t */
    protected final void mo8357t() {
        this.f31966R.m10747d();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6360cb
    /* renamed from: u */
    protected final void mo8356u() {
        this.f31966R.m10738m();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.AbstractC6588if, com.google.android.gms.internal.ads.AbstractC6360cb
    /* renamed from: v */
    public final void mo8355v() {
        try {
            this.f31966R.m10736o();
            try {
                super.mo8355v();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.mo8355v();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6588if, com.google.android.gms.internal.ads.AbstractC7028ub
    /* renamed from: z */
    public final boolean mo9285z() {
        return super.mo9285z() && this.f31966R.m10743h();
    }
}
