package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import java.nio.ByteBuffer;
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dmj.class */
public final class dmj extends doy implements dsd {

    /* renamed from: b */
    private final dlt f14796b;

    /* renamed from: c */
    private final dmd f14797c;

    /* renamed from: d */
    private boolean f14798d;

    /* renamed from: e */
    private boolean f14799e;

    /* renamed from: f */
    private MediaFormat f14800f;

    /* renamed from: g */
    private int f14801g;

    /* renamed from: h */
    private int f14802h;

    /* renamed from: i */
    private long f14803i;

    /* renamed from: j */
    private boolean f14804j;

    public dmj(dpa dpaVar) {
        this(dpaVar, null, true);
    }

    private dmj(dpa dpaVar, dnb<dnc> dnbVar, boolean z) {
        this(dpaVar, null, true, null, null);
    }

    private dmj(dpa dpaVar, dnb<dnc> dnbVar, boolean z, cnz cnzVar, dlu dluVar) {
        this(dpaVar, null, true, null, null, null, new dls[0]);
    }

    private dmj(dpa dpaVar, dnb<dnc> dnbVar, boolean z, cnz cnzVar, dlu dluVar, dlq dlqVar, dls... dlsVarArr) {
        super(1, dpaVar, dnbVar, z);
        this.f14797c = new dmd(null, dlsVarArr, new dml(this));
        this.f14796b = new dlt(null, null);
    }

    /* renamed from: a */
    public static void m9134a(int i, long j, long j2) {
    }

    /* renamed from: a */
    private final boolean m9131a(String str) {
        return this.f14797c.m9171a(str);
    }

    /* renamed from: b */
    public static void m9130b(int i) {
    }

    /* renamed from: v */
    public static void m9128v() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0074, code lost:
        if (r0.m8956a(r6.f14645m) != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008a, code lost:
        if (r0.m8950b(r6.f14644l) != false) goto L28;
     */
    @Override // com.google.android.gms.internal.ads.doy
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final int mo8668a(com.google.android.gms.internal.ads.dpa r5, com.google.android.gms.internal.ads.dlf r6) {
        /*
            r4 = this;
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r6
            java.lang.String r0 = r0.f14635c
            r9 = r0
            r0 = r9
            boolean r0 = com.google.android.gms.internal.ads.dsg.m8752a(r0)
            if (r0 != 0) goto L16
        L13:
            r0 = r8
            return r0
        L16:
            int r0 = com.google.android.gms.internal.ads.dsn.f15576a
            r1 = 21
            if (r0 < r1) goto L3f
            r0 = 16
            r8 = r0
        L22:
            r0 = r4
            r1 = r9
            boolean r0 = r0.m9131a(r1)
            if (r0 == 0) goto L45
            r0 = r5
            com.google.android.gms.internal.ads.doz r0 = r0.mo8940a()
            if (r0 == 0) goto L45
            r0 = r8
            r1 = 4
            r0 = r0 | r1
            r1 = 3
            r0 = r0 | r1
            r8 = r0
            goto L13
        L3f:
            r0 = 0
            r8 = r0
            goto L22
        L45:
            r0 = r5
            r1 = r9
            r2 = 0
            com.google.android.gms.internal.ads.doz r0 = r0.mo8939a(r1, r2)
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L59
            r0 = 1
            r8 = r0
            goto L13
        L59:
            int r0 = com.google.android.gms.internal.ads.dsn.f15576a
            r1 = 21
            if (r0 < r1) goto L8d
            r0 = r6
            int r0 = r0.f14645m
            r1 = -1
            if (r0 == r1) goto L77
            r0 = r7
            r10 = r0
            r0 = r5
            r1 = r6
            int r1 = r1.f14645m
            boolean r0 = r0.m8956a(r1)
            if (r0 == 0) goto L90
        L77:
            r0 = r6
            int r0 = r0.f14644l
            r1 = -1
            if (r0 == r1) goto L8d
            r0 = r7
            r10 = r0
            r0 = r5
            r1 = r6
            int r1 = r1.f14644l
            boolean r0 = r0.m8950b(r1)
            if (r0 == 0) goto L90
        L8d:
            r0 = 1
            r10 = r0
        L90:
            r0 = r10
            if (r0 == 0) goto La4
            r0 = 3
            r10 = r0
        L98:
            r0 = r10
            r1 = r8
            r2 = 4
            r1 = r1 | r2
            r0 = r0 | r1
            r8 = r0
            goto L13
        La4:
            r0 = 2
            r10 = r0
            goto L98
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dmj.mo8668a(com.google.android.gms.internal.ads.dpa, com.google.android.gms.internal.ads.dlf):int");
    }

    @Override // com.google.android.gms.internal.ads.dsd
    /* renamed from: a */
    public final dlj mo8715a(dlj dljVar) {
        return this.f14797c.m9173a(dljVar);
    }

    @Override // com.google.android.gms.internal.ads.doy
    /* renamed from: a */
    public final doz mo8966a(dpa dpaVar, dlf dlfVar, boolean z) {
        doz mo8966a;
        doz mo8940a;
        if (!m9131a(dlfVar.f14635c) || (mo8940a = dpaVar.mo8940a()) == null) {
            this.f14798d = false;
            mo8966a = super.mo8966a(dpaVar, dlfVar, z);
        } else {
            this.f14798d = true;
            mo8966a = mo8940a;
        }
        return mo8966a;
    }

    @Override // com.google.android.gms.internal.ads.dkq, com.google.android.gms.internal.ads.dkv
    /* renamed from: a */
    public final void mo8678a(int i, Object obj) {
        switch (i) {
            case 2:
                this.f14797c.m9176a(((Float) obj).floatValue());
                return;
            case 3:
                this.f14797c.m9175a(((Integer) obj).intValue());
                return;
            default:
                super.mo8678a(i, obj);
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.doy, com.google.android.gms.internal.ads.dkq
    /* renamed from: a */
    public final void mo8676a(long j, boolean z) {
        super.mo8676a(j, z);
        this.f14797c.m9155i();
        this.f14803i = j;
        this.f14804j = true;
    }

    @Override // com.google.android.gms.internal.ads.doy
    /* renamed from: a */
    protected final void mo8673a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        int[] iArr;
        boolean z = this.f14800f != null;
        String string = z ? this.f14800f.getString("mime") : "audio/raw";
        if (z) {
            mediaFormat = this.f14800f;
        }
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        if (!this.f14799e || integer != 6 || this.f14802h >= 6) {
            iArr = null;
        } else {
            int[] iArr2 = new int[this.f14802h];
            int i = 0;
            while (true) {
                iArr = iArr2;
                if (i < this.f14802h) {
                    iArr2[i] = i;
                    i++;
                }
            }
        }
        try {
            this.f14797c.m9170a(string, integer, integer2, this.f14801g, 0, iArr);
        } catch (zzij e) {
            throw zzgq.m6540a(e, m9307r());
        }
    }

    @Override // com.google.android.gms.internal.ads.doy
    /* renamed from: a */
    protected final void mo8669a(doz dozVar, MediaCodec mediaCodec, dlf dlfVar, MediaCrypto mediaCrypto) {
        this.f14799e = dsn.f15576a < 24 && "OMX.SEC.aac.dec".equals(dozVar.f15268a) && "samsung".equals(dsn.f15578c) && (dsn.f15577b.startsWith("zeroflte") || dsn.f15577b.startsWith("herolte") || dsn.f15577b.startsWith("heroqlte"));
        if (!this.f14798d) {
            mediaCodec.configure(dlfVar.m9225b(), (Surface) null, (MediaCrypto) null, 0);
            this.f14800f = null;
            return;
        }
        this.f14800f = dlfVar.m9225b();
        this.f14800f.setString("mime", "audio/raw");
        mediaCodec.configure(this.f14800f, (Surface) null, (MediaCrypto) null, 0);
        this.f14800f.setString("mime", dlfVar.f14635c);
    }

    @Override // com.google.android.gms.internal.ads.doy
    /* renamed from: a */
    protected final void mo8666a(String str, long j, long j2) {
        this.f14796b.m9186a(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.doy, com.google.android.gms.internal.ads.dkq
    /* renamed from: a */
    public final void mo8665a(boolean z) {
        super.mo8665a(z);
        this.f14796b.m9187a(this.f15243a);
        int i = m9308q().f14665b;
        if (i != 0) {
            this.f14797c.m9166b(i);
        } else {
            this.f14797c.m9157g();
        }
    }

    @Override // com.google.android.gms.internal.ads.doy
    /* renamed from: a */
    protected final boolean mo8677a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) {
        boolean z2;
        if (this.f14798d && (i2 & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i, false);
            z2 = true;
        } else if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.f15243a.f14865e++;
            this.f14797c.m9167b();
            z2 = true;
        } else {
            try {
                if (this.f14797c.m9169a(byteBuffer, j3)) {
                    mediaCodec.releaseOutputBuffer(i, false);
                    this.f15243a.f14864d++;
                    z2 = true;
                } else {
                    z2 = false;
                }
            } catch (zzii | zzin e) {
                throw zzgq.m6540a(e, m9307r());
            }
        }
        return z2;
    }

    @Override // com.google.android.gms.internal.ads.doy
    /* renamed from: b */
    public final void mo8661b(dlf dlfVar) {
        super.mo8661b(dlfVar);
        this.f14796b.m9189a(dlfVar);
        this.f14801g = "audio/raw".equals(dlfVar.f14635c) ? dlfVar.f14646n : 2;
        this.f14802h = dlfVar.f14644l;
    }

    @Override // com.google.android.gms.internal.ads.dkq, com.google.android.gms.internal.ads.dli
    /* renamed from: c */
    public final dsd mo9129c() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.doy, com.google.android.gms.internal.ads.dkq
    /* renamed from: n */
    public final void mo8656n() {
        super.mo8656n();
        this.f14797c.m9177a();
    }

    @Override // com.google.android.gms.internal.ads.doy, com.google.android.gms.internal.ads.dkq
    /* renamed from: o */
    public final void mo8655o() {
        this.f14797c.m9156h();
        super.mo8655o();
    }

    @Override // com.google.android.gms.internal.ads.doy, com.google.android.gms.internal.ads.dkq
    /* renamed from: p */
    public final void mo8654p() {
        try {
            this.f14797c.m9154j();
            try {
                super.mo8654p();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.mo8654p();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.doy, com.google.android.gms.internal.ads.dli
    /* renamed from: t */
    public final boolean mo8653t() {
        return this.f14797c.m9159e() || super.mo8653t();
    }

    @Override // com.google.android.gms.internal.ads.doy, com.google.android.gms.internal.ads.dli
    /* renamed from: u */
    public final boolean mo8962u() {
        return super.mo8962u() && this.f14797c.m9160d();
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    @Override // com.google.android.gms.internal.ads.dsd
    /* renamed from: w */
    public final long mo8712w() {
        char m9168a = this.f14797c.m9168a(mo8962u());
        if (m9168a != Long.MIN_VALUE) {
            if (!this.f14804j) {
                m9168a = Math.max(this.f14803i, (long) m9168a);
            }
            this.f14803i = m9168a;
            this.f14804j = false;
        }
        return this.f14803i;
    }

    @Override // com.google.android.gms.internal.ads.dsd
    /* renamed from: x */
    public final dlj mo8711x() {
        return this.f14797c.m9158f();
    }

    @Override // com.google.android.gms.internal.ads.doy
    /* renamed from: y */
    protected final void mo8959y() {
        try {
            this.f14797c.m9162c();
        } catch (zzin e) {
            throw zzgq.m6540a(e, m9307r());
        }
    }
}
