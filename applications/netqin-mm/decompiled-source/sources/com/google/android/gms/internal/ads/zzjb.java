package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import java.nio.ByteBuffer;
import p131c.p161d.p170b.p224d.p252g.p253a.lc0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzjb.class */
public final class zzjb extends zzlu implements zzpd {

    /* renamed from: V */
    public final zzij f28379V;

    /* renamed from: W */
    public final zzio f28380W;

    /* renamed from: X */
    public boolean f28381X;

    /* renamed from: Y */
    public boolean f28382Y;

    /* renamed from: Z */
    public MediaFormat f28383Z;

    /* renamed from: a0 */
    public int f28384a0;

    /* renamed from: b0 */
    public int f28385b0;

    /* renamed from: c0 */
    public long f28386c0;

    /* renamed from: d0 */
    public boolean f28387d0;

    public zzjb(zzlw zzlwVar) {
        this(zzlwVar, null, true);
    }

    public zzjb(zzlw zzlwVar, zzjs<zzju> zzjsVar, boolean z) {
        this(zzlwVar, null, true, null, null);
    }

    public zzjb(zzlw zzlwVar, zzjs<zzju> zzjsVar, boolean z, Handler handler, zzig zzigVar) {
        this(zzlwVar, null, true, null, null, null, new zzie[0]);
    }

    public zzjb(zzlw zzlwVar, zzjs<zzju> zzjsVar, boolean z, Handler handler, zzig zzigVar, zzif zzifVar, zzie... zzieVarArr) {
        super(1, zzlwVar, zzjsVar, z);
        this.f28380W = new zzio(null, zzieVarArr, new lc0(this, null));
        this.f28379V = new zzij(null, null);
    }

    /* renamed from: C */
    public static void m11937C() {
    }

    /* renamed from: a */
    public static void m11936a(int i, long j, long j2) {
    }

    /* renamed from: b */
    public static void m11932b(int i) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0073, code lost:
        if (r0.m11843a(r0) != false) goto L_0x0076;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008c, code lost:
        if (r0.m11837b(r0) != false) goto L_0x008f;
     */
    @Override // com.google.android.gms.internal.ads.zzlu
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo11591a(com.google.android.gms.internal.ads.zzlw r5, com.google.android.gms.internal.ads.zzho r6) throws com.google.android.gms.internal.ads.zzlz {
        /*
            r4 = this;
            r0 = r6
            java.lang.String r0 = r0.f28268f
            r7 = r0
            r0 = r7
            boolean r0 = com.google.android.gms.internal.ads.zzpg.m11675a(r0)
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0015
            r0 = 0
            return r0
        L_0x0015:
            int r0 = com.google.android.gms.internal.ads.zzpq.f28786a
            r1 = 21
            if (r0 < r1) goto L_0x0024
            r0 = 16
            r10 = r0
            goto L_0x0027
        L_0x0024:
            r0 = 0
            r10 = r0
        L_0x0027:
            r0 = r4
            r1 = r7
            boolean r0 = r0.m11933a(r1)
            r8 = r0
            r0 = 3
            r11 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0046
            r0 = r5
            com.google.android.gms.internal.ads.zzlr r0 = r0.mo11821a()
            if (r0 == 0) goto L_0x0046
            r0 = r10
            r1 = 4
            r0 = r0 | r1
            r1 = 3
            r0 = r0 | r1
            return r0
        L_0x0046:
            r0 = r5
            r1 = r7
            r2 = 0
            com.google.android.gms.internal.ads.zzlr r0 = r0.mo11820a(r1, r2)
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0055
            r0 = 1
            return r0
        L_0x0055:
            int r0 = com.google.android.gms.internal.ads.zzpq.f28786a
            r1 = 21
            if (r0 < r1) goto L_0x008f
            r0 = r6
            int r0 = r0.f28281s
            r12 = r0
            r0 = r12
            r1 = -1
            if (r0 == r1) goto L_0x0076
            r0 = r9
            r13 = r0
            r0 = r5
            r1 = r12
            boolean r0 = r0.m11843a(r1)
            if (r0 == 0) goto L_0x0092
        L_0x0076:
            r0 = r6
            int r0 = r0.f28280r
            r12 = r0
            r0 = r12
            r1 = -1
            if (r0 == r1) goto L_0x008f
            r0 = r9
            r13 = r0
            r0 = r5
            r1 = r12
            boolean r0 = r0.m11837b(r1)
            if (r0 == 0) goto L_0x0092
        L_0x008f:
            r0 = 1
            r13 = r0
        L_0x0092:
            r0 = r13
            if (r0 == 0) goto L_0x009e
            r0 = r11
            r13 = r0
            goto L_0x00a1
        L_0x009e:
            r0 = 2
            r13 = r0
        L_0x00a1:
            r0 = r10
            r1 = 4
            r0 = r0 | r1
            r1 = r13
            r0 = r0 | r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjb.mo11591a(com.google.android.gms.internal.ads.zzlw, com.google.android.gms.internal.ads.zzho):int");
    }

    @Override // com.google.android.gms.internal.ads.zzpd
    /* renamed from: a */
    public final zzhu mo11639a() {
        return this.f28380W.m11947l();
    }

    @Override // com.google.android.gms.internal.ads.zzpd
    /* renamed from: a */
    public final zzhu mo11637a(zzhu zzhuVar) {
        return this.f28380W.m11968a(zzhuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    /* renamed from: a */
    public final zzlr mo11829a(zzlw zzlwVar, zzho zzhoVar, boolean z) throws zzlz {
        zzlr a;
        if (!m11933a(zzhoVar.f28268f) || (a = zzlwVar.mo11821a()) == null) {
            this.f28381X = false;
            return super.mo11829a(zzlwVar, zzhoVar, z);
        }
        this.f28381X = true;
        return a;
    }

    @Override // com.google.android.gms.internal.ads.zzhb, com.google.android.gms.internal.ads.zzhe
    /* renamed from: a */
    public final void mo11601a(int i, Object obj) throws zzhd {
        if (i == 2) {
            this.f28380W.m11971a(((Float) obj).floatValue());
        } else if (i != 3) {
            super.mo11601a(i, obj);
        } else {
            this.f28380W.m11970a(((Integer) obj).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlu, com.google.android.gms.internal.ads.zzhb
    /* renamed from: a */
    public final void mo11599a(long j, boolean z) throws zzhd {
        super.mo11599a(j, z);
        this.f28380W.m11954e();
        this.f28386c0 = j;
        this.f28387d0 = true;
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    /* renamed from: a */
    public final void mo11596a(MediaCodec mediaCodec, MediaFormat mediaFormat) throws zzhd {
        int[] iArr;
        int i;
        int i2 = 0;
        boolean z = this.f28383Z != null;
        String string = z ? this.f28383Z.getString("mime") : "audio/raw";
        if (z) {
            mediaFormat = this.f28383Z;
        }
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        if (!this.f28382Y || integer != 6 || (i = this.f28385b0) >= 6) {
            iArr = null;
        } else {
            int[] iArr2 = new int[i];
            while (true) {
                iArr = iArr2;
                if (i2 < this.f28385b0) {
                    iArr2[i2] = i2;
                    i2++;
                }
            }
        }
        try {
            this.f28380W.m11965a(string, integer, integer2, this.f28384a0, 0, iArr);
        } catch (zzis e) {
            throw zzhd.zza(e, m12063p());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    /* renamed from: a */
    public final void mo11592a(zzlr zzlrVar, MediaCodec mediaCodec, zzho zzhoVar, MediaCrypto mediaCrypto) {
        this.f28382Y = zzpq.f28786a < 24 && "OMX.SEC.aac.dec".equals(zzlrVar.f28563a) && "samsung".equals(zzpq.f28788c) && (zzpq.f28787b.startsWith("zeroflte") || zzpq.f28787b.startsWith("herolte") || zzpq.f28787b.startsWith("heroqlte"));
        if (this.f28381X) {
            MediaFormat b = zzhoVar.m12024b();
            this.f28383Z = b;
            b.setString("mime", "audio/raw");
            mediaCodec.configure(this.f28383Z, (Surface) null, (MediaCrypto) null, 0);
            this.f28383Z.setString("mime", zzhoVar.f28268f);
            return;
        }
        mediaCodec.configure(zzhoVar.m12024b(), (Surface) null, (MediaCrypto) null, 0);
        this.f28383Z = null;
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    /* renamed from: a */
    public final void mo11589a(String str, long j, long j2) {
        this.f28379V.m11974a(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzlu, com.google.android.gms.internal.ads.zzhb
    /* renamed from: a */
    public final void mo11588a(boolean z) throws zzhd {
        super.mo11588a(z);
        this.f28379V.m11975a(this.f28589T);
        int i = m12062t().f28300a;
        if (i != 0) {
            this.f28380W.m11961b(i);
        } else {
            this.f28380W.m11946m();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    /* renamed from: a */
    public final boolean mo11600a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws zzhd {
        if (this.f28381X && (i2 & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i, false);
            return true;
        } else if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.f28589T.f28415e++;
            this.f28380W.m11951h();
            return true;
        } else {
            try {
                if (!this.f28380W.m11964a(byteBuffer, j3)) {
                    return false;
                }
                mediaCodec.releaseOutputBuffer(i, false);
                this.f28589T.f28414d++;
                return true;
            } catch (zziv | zziw e) {
                throw zzhd.zza(e, m12063p());
            }
        }
    }

    /* renamed from: a */
    public final boolean m11933a(String str) {
        return this.f28380W.m11966a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    /* renamed from: b */
    public final void mo11583b(zzho zzhoVar) throws zzhd {
        super.mo11583b(zzhoVar);
        this.f28379V.m11977a(zzhoVar);
        this.f28384a0 = "audio/raw".equals(zzhoVar.f28268f) ? zzhoVar.f28282t : 2;
        this.f28385b0 = zzhoVar.f28280r;
    }

    @Override // com.google.android.gms.internal.ads.zzlu, com.google.android.gms.internal.ads.zzhx
    /* renamed from: b */
    public final boolean mo11585b() {
        return this.f28380W.m11948k() || super.mo11585b();
    }

    @Override // com.google.android.gms.internal.ads.zzlu, com.google.android.gms.internal.ads.zzhx
    /* renamed from: c */
    public final boolean mo11827c() {
        return super.mo11827c() && this.f28380W.m11953f();
    }

    @Override // com.google.android.gms.internal.ads.zzhb, com.google.android.gms.internal.ads.zzhx
    /* renamed from: j */
    public final zzpd mo11931j() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzpd
    /* renamed from: o */
    public final long mo11633o() {
        long a = this.f28380W.m11963a(mo11827c());
        if (a != Long.MIN_VALUE) {
            if (!this.f28387d0) {
                a = Math.max(this.f28386c0, a);
            }
            this.f28386c0 = a;
            this.f28387d0 = false;
        }
        return this.f28386c0;
    }

    @Override // com.google.android.gms.internal.ads.zzlu, com.google.android.gms.internal.ads.zzhb
    /* renamed from: q */
    public final void mo11578q() {
        super.mo11578q();
        this.f28380W.m11957c();
    }

    @Override // com.google.android.gms.internal.ads.zzlu, com.google.android.gms.internal.ads.zzhb
    /* renamed from: r */
    public final void mo11577r() {
        this.f28380W.m11962b();
        super.mo11577r();
    }

    @Override // com.google.android.gms.internal.ads.zzlu, com.google.android.gms.internal.ads.zzhb
    /* renamed from: s */
    public final void mo11576s() {
        try {
            this.f28380W.m11955d();
            try {
                super.mo11576s();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.mo11576s();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    /* renamed from: v */
    public final void mo11825v() throws zzhd {
        try {
            this.f28380W.m11950i();
        } catch (zziw e) {
            throw zzhd.zza(e, m12063p());
        }
    }
}
