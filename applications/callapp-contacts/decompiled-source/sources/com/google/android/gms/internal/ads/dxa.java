package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxa.class */
public final class dxa extends dzq implements ecv {

    /* renamed from: b  reason: collision with root package name */
    private final dwk f27347b;

    /* renamed from: c  reason: collision with root package name */
    private final dwt f27348c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f27349d;
    private boolean e;
    private MediaFormat f;
    private int g;
    private int h;
    private long i;
    private boolean j;

    public dxa(dzs dzsVar, Handler handler, dwl dwlVar) {
        this(dzsVar, null, true, handler, dwlVar);
    }

    private dxa(dzs dzsVar, dxq<Object> dxqVar, boolean z, Handler handler, dwl dwlVar) {
        this(dzsVar, null, true, handler, dwlVar, null, new dwj[0]);
    }

    private dxa(dzs dzsVar, dxq<Object> dxqVar, boolean z, Handler handler, dwl dwlVar, dwh dwhVar, dwj... dwjVarArr) {
        super(1, dzsVar, null, true);
        this.f27348c = new dwt(null, dwjVarArr, new dxc(this, null));
        this.f27347b = new dwk(handler, dwlVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void v() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void w() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void x() {
    }

    @Override // com.google.android.gms.internal.ads.dzq
    protected final void A() throws zzhe {
        try {
            dwt dwtVar = this.f27348c;
            if (!dwtVar.r && dwtVar.g() && dwtVar.c()) {
                dwtVar.f27331c.a(dwtVar.h());
                dwtVar.m = 0;
                dwtVar.r = true;
            }
        } catch (zzjb e) {
            throw zzhe.a(e, r());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a9, code lost:
        if (r12 == false) goto L_0x011d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0117, code lost:
        if (r12 == false) goto L_0x011d;
     */
    @Override // com.google.android.gms.internal.ads.dzq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final int a(com.google.android.gms.internal.ads.dzs r5, com.google.android.gms.internal.ads.zzht r6) throws com.google.android.gms.internal.ads.zzmd {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dxa.a(com.google.android.gms.internal.ads.dzs, com.google.android.gms.internal.ads.zzht):int");
    }

    @Override // com.google.android.gms.internal.ads.ecv
    public final dvz a(dvz dvzVar) {
        return this.f27348c.a(dvzVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dzq
    public final dzr a(dzs dzsVar, zzht zzhtVar, boolean z) throws zzmd {
        this.f27349d = false;
        return super.a(dzsVar, zzhtVar, z);
    }

    @Override // com.google.android.gms.internal.ads.dvi, com.google.android.gms.internal.ads.dvn
    public final void a(int i, Object obj) throws zzhe {
        if (i == 2) {
            dwt dwtVar = this.f27348c;
            float floatValue = ((Float) obj).floatValue();
            if (dwtVar.q != floatValue) {
                dwtVar.q = floatValue;
                dwtVar.e();
            }
        } else if (i != 3) {
            super.a(i, obj);
        } else {
            int intValue = ((Integer) obj).intValue();
            dwt dwtVar2 = this.f27348c;
            if (dwtVar2.h != intValue) {
                dwtVar2.h = intValue;
                if (!dwtVar2.u) {
                    dwtVar2.f();
                    dwtVar2.t = 0;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvi
    public final void a(long j, boolean z) throws zzhe {
        super.a(j, z);
        this.f27348c.f();
        this.i = j;
        this.j = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x030d A[Catch: zzix -> 0x03f9, TRY_ENTER, TryCatch #1 {zzix -> 0x03f9, blocks: (B:24:0x0075, B:27:0x0092, B:28:0x0096, B:30:0x00c3, B:34:0x00d2, B:38:0x00e1, B:42:0x00f0, B:62:0x0133, B:67:0x0164, B:69:0x0178, B:71:0x0181, B:75:0x0192, B:76:0x019c, B:80:0x01ad, B:85:0x0200, B:86:0x0207, B:94:0x0238, B:96:0x0240, B:98:0x024c, B:107:0x026e, B:109:0x027c, B:111:0x0284, B:120:0x02a6, B:122:0x02ae, B:124:0x02b8, B:126:0x02c2, B:129:0x02cd, B:132:0x02f6, B:134:0x030d, B:136:0x0316, B:141:0x0331, B:146:0x034e, B:148:0x0358, B:155:0x039d, B:158:0x03b0, B:160:0x03c5, B:162:0x03d6, B:163:0x03f8), top: B:169:0x0075, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0331 A[Catch: zzix -> 0x03f9, TRY_ENTER, TRY_LEAVE, TryCatch #1 {zzix -> 0x03f9, blocks: (B:24:0x0075, B:27:0x0092, B:28:0x0096, B:30:0x00c3, B:34:0x00d2, B:38:0x00e1, B:42:0x00f0, B:62:0x0133, B:67:0x0164, B:69:0x0178, B:71:0x0181, B:75:0x0192, B:76:0x019c, B:80:0x01ad, B:85:0x0200, B:86:0x0207, B:94:0x0238, B:96:0x0240, B:98:0x024c, B:107:0x026e, B:109:0x027c, B:111:0x0284, B:120:0x02a6, B:122:0x02ae, B:124:0x02b8, B:126:0x02c2, B:129:0x02cd, B:132:0x02f6, B:134:0x030d, B:136:0x0316, B:141:0x0331, B:146:0x034e, B:148:0x0358, B:155:0x039d, B:158:0x03b0, B:160:0x03c5, B:162:0x03d6, B:163:0x03f8), top: B:169:0x0075, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03a8  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x03b0 A[Catch: zzix -> 0x03f9, TRY_ENTER, TryCatch #1 {zzix -> 0x03f9, blocks: (B:24:0x0075, B:27:0x0092, B:28:0x0096, B:30:0x00c3, B:34:0x00d2, B:38:0x00e1, B:42:0x00f0, B:62:0x0133, B:67:0x0164, B:69:0x0178, B:71:0x0181, B:75:0x0192, B:76:0x019c, B:80:0x01ad, B:85:0x0200, B:86:0x0207, B:94:0x0238, B:96:0x0240, B:98:0x024c, B:107:0x026e, B:109:0x027c, B:111:0x0284, B:120:0x02a6, B:122:0x02ae, B:124:0x02b8, B:126:0x02c2, B:129:0x02cd, B:132:0x02f6, B:134:0x030d, B:136:0x0316, B:141:0x0331, B:146:0x034e, B:148:0x0358, B:155:0x039d, B:158:0x03b0, B:160:0x03c5, B:162:0x03d6, B:163:0x03f8), top: B:169:0x0075, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0133 A[Catch: zzix -> 0x03f9, TRY_ENTER, TRY_LEAVE, TryCatch #1 {zzix -> 0x03f9, blocks: (B:24:0x0075, B:27:0x0092, B:28:0x0096, B:30:0x00c3, B:34:0x00d2, B:38:0x00e1, B:42:0x00f0, B:62:0x0133, B:67:0x0164, B:69:0x0178, B:71:0x0181, B:75:0x0192, B:76:0x019c, B:80:0x01ad, B:85:0x0200, B:86:0x0207, B:94:0x0238, B:96:0x0240, B:98:0x024c, B:107:0x026e, B:109:0x027c, B:111:0x0284, B:120:0x02a6, B:122:0x02ae, B:124:0x02b8, B:126:0x02c2, B:129:0x02cd, B:132:0x02f6, B:134:0x030d, B:136:0x0316, B:141:0x0331, B:146:0x034e, B:148:0x0358, B:155:0x039d, B:158:0x03b0, B:160:0x03c5, B:162:0x03d6, B:163:0x03f8), top: B:169:0x0075, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0200 A[Catch: zzix -> 0x03f9, TRY_ENTER, TRY_LEAVE, TryCatch #1 {zzix -> 0x03f9, blocks: (B:24:0x0075, B:27:0x0092, B:28:0x0096, B:30:0x00c3, B:34:0x00d2, B:38:0x00e1, B:42:0x00f0, B:62:0x0133, B:67:0x0164, B:69:0x0178, B:71:0x0181, B:75:0x0192, B:76:0x019c, B:80:0x01ad, B:85:0x0200, B:86:0x0207, B:94:0x0238, B:96:0x0240, B:98:0x024c, B:107:0x026e, B:109:0x027c, B:111:0x0284, B:120:0x02a6, B:122:0x02ae, B:124:0x02b8, B:126:0x02c2, B:129:0x02cd, B:132:0x02f6, B:134:0x030d, B:136:0x0316, B:141:0x0331, B:146:0x034e, B:148:0x0358, B:155:0x039d, B:158:0x03b0, B:160:0x03c5, B:162:0x03d6, B:163:0x03f8), top: B:169:0x0075, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0207 A[Catch: zzix -> 0x03f9, TRY_ENTER, TRY_LEAVE, TryCatch #1 {zzix -> 0x03f9, blocks: (B:24:0x0075, B:27:0x0092, B:28:0x0096, B:30:0x00c3, B:34:0x00d2, B:38:0x00e1, B:42:0x00f0, B:62:0x0133, B:67:0x0164, B:69:0x0178, B:71:0x0181, B:75:0x0192, B:76:0x019c, B:80:0x01ad, B:85:0x0200, B:86:0x0207, B:94:0x0238, B:96:0x0240, B:98:0x024c, B:107:0x026e, B:109:0x027c, B:111:0x0284, B:120:0x02a6, B:122:0x02ae, B:124:0x02b8, B:126:0x02c2, B:129:0x02cd, B:132:0x02f6, B:134:0x030d, B:136:0x0316, B:141:0x0331, B:146:0x034e, B:148:0x0358, B:155:0x039d, B:158:0x03b0, B:160:0x03c5, B:162:0x03d6, B:163:0x03f8), top: B:169:0x0075, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0236  */
    @Override // com.google.android.gms.internal.ads.dzq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void a(android.media.MediaCodec r8, android.media.MediaFormat r9) throws com.google.android.gms.internal.ads.zzhe {
        /*
            Method dump skipped, instructions count: 1027
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dxa.a(android.media.MediaCodec, android.media.MediaFormat):void");
    }

    @Override // com.google.android.gms.internal.ads.dzq
    protected final void a(dzr dzrVar, MediaCodec mediaCodec, zzht zzhtVar) {
        this.e = ede.f27664a < 24 && "OMX.SEC.aac.dec".equals(dzrVar.f27497a) && "samsung".equals(ede.f27666c) && (ede.f27665b.startsWith("zeroflte") || ede.f27665b.startsWith("herolte") || ede.f27665b.startsWith("heroqlte"));
        if (this.f27349d) {
            MediaFormat zzfe = zzhtVar.zzfe();
            this.f = zzfe;
            zzfe.setString("mime", "audio/raw");
            mediaCodec.configure(this.f, (Surface) null, (MediaCrypto) null, 0);
            this.f.setString("mime", zzhtVar.zzaho);
            return;
        }
        mediaCodec.configure(zzhtVar.zzfe(), (Surface) null, (MediaCrypto) null, 0);
        this.f = null;
    }

    @Override // com.google.android.gms.internal.ads.dzq
    protected final void a(String str, long j, long j2) {
        dwk dwkVar = this.f27347b;
        if (dwkVar.f27310b != null) {
            dwkVar.f27309a.post(new dwm(dwkVar, str, j, j2));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvi
    public final void a(boolean z) throws zzhe {
        super.a(z);
        dwk dwkVar = this.f27347b;
        dxk dxkVar = this.f27494a;
        if (dwkVar.f27310b != null) {
            dwkVar.f27309a.post(new dwn(dwkVar, dxkVar));
        }
        q();
        dwt dwtVar = this.f27348c;
        if (dwtVar.u) {
            dwtVar.u = false;
            dwtVar.t = 0;
            dwtVar.f();
        }
    }

    @Override // com.google.android.gms.internal.ads.dzq
    protected final boolean a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws zzhe {
        if (this.f27349d && (i2 & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i, false);
            return true;
        } else if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.f27494a.e++;
            dwt dwtVar = this.f27348c;
            if (dwtVar.p != 1) {
                return true;
            }
            dwtVar.p = 2;
            return true;
        } else {
            try {
                if (!this.f27348c.a(byteBuffer, j3)) {
                    return false;
                }
                mediaCodec.releaseOutputBuffer(i, false);
                this.f27494a.f27372d++;
                return true;
            } catch (zziw | zzjb e) {
                throw zzhe.a(e, r());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dzq
    public final void b(zzht zzhtVar) throws zzhe {
        super.b(zzhtVar);
        dwk dwkVar = this.f27347b;
        if (dwkVar.f27310b != null) {
            dwkVar.f27309a.post(new dwp(dwkVar, zzhtVar));
        }
        this.g = "audio/raw".equals(zzhtVar.zzaho) ? zzhtVar.zzaia : 2;
        this.h = zzhtVar.zzahy;
    }

    @Override // com.google.android.gms.internal.ads.dvi, com.google.android.gms.internal.ads.dvy
    public final ecv c() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvi
    public final void n() {
        super.n();
        this.f27348c.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvi
    public final void o() {
        dwt dwtVar = this.f27348c;
        dwtVar.s = false;
        if (dwtVar.g()) {
            dwtVar.i();
            dwtVar.f27331c.d();
        }
        super.o();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvi
    public final void p() {
        try {
            dwt dwtVar = this.f27348c;
            dwtVar.f();
            for (dwj dwjVar : dwtVar.f27330b) {
                dwjVar.g();
            }
            dwtVar.t = 0;
            dwtVar.s = false;
            try {
                super.p();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.p();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvy
    public final boolean t() {
        return this.f27348c.d() || super.t();
    }

    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvy
    public final boolean u() {
        if (!super.u()) {
            return false;
        }
        dwt dwtVar = this.f27348c;
        return !dwtVar.g() || (dwtVar.r && !dwtVar.d());
    }

    @Override // com.google.android.gms.internal.ads.ecv
    public final long y() {
        long a2 = this.f27348c.a(u());
        if (a2 != Long.MIN_VALUE) {
            if (!this.j) {
                a2 = Math.max(this.i, a2);
            }
            this.i = a2;
            this.j = false;
        }
        return this.i;
    }

    @Override // com.google.android.gms.internal.ads.ecv
    public final dvz z() {
        return this.f27348c.l;
    }
}
