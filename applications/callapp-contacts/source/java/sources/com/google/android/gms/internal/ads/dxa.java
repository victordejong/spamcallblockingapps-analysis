package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxa.class */
public final class dxa extends dzq implements ecv {

    /* renamed from: b */
    private final dwk f47899b;

    /* renamed from: c */
    private final dwt f47900c;

    /* renamed from: d */
    private boolean f47901d;

    /* renamed from: e */
    private boolean f47902e;

    /* renamed from: f */
    private MediaFormat f47903f;

    /* renamed from: g */
    private int f47904g;

    /* renamed from: h */
    private int f47905h;

    /* renamed from: i */
    private long f47906i;

    /* renamed from: j */
    private boolean f47907j;

    public dxa(dzs dzsVar, Handler handler, dwl dwlVar) {
        this(dzsVar, null, true, handler, dwlVar);
    }

    private dxa(dzs dzsVar, dxq<Object> dxqVar, boolean z, Handler handler, dwl dwlVar) {
        this(dzsVar, null, true, handler, dwlVar, null, new dwj[0]);
    }

    private dxa(dzs dzsVar, dxq<Object> dxqVar, boolean z, Handler handler, dwl dwlVar, dwh dwhVar, dwj... dwjVarArr) {
        super(1, dzsVar, null, true);
        this.f47900c = new dwt(null, dwjVarArr, new dxc(this));
        this.f47899b = new dwk(handler, dwlVar);
    }

    /* renamed from: v */
    public static void m15538v() {
    }

    /* renamed from: w */
    public static void m15537w() {
    }

    /* renamed from: x */
    public static void m15536x() {
    }

    @Override // com.google.android.gms.internal.ads.dzq
    /* renamed from: A */
    protected final void mo15407A() throws zzhe {
        try {
            dwt dwtVar = this.f47900c;
            if (dwtVar.f47867r || !dwtVar.m15553g() || !dwtVar.m15558c()) {
                return;
            }
            dwtVar.f47852c.m15548a(dwtVar.m15552h());
            dwtVar.f47862m = 0;
            dwtVar.f47867r = true;
        } catch (zzjb e) {
            throw zzhe.m13625a(e, m15659r());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a9, code lost:
        if (r12 == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0117, code lost:
        if (r12 == false) goto L45;
     */
    @Override // com.google.android.gms.internal.ads.dzq
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final int mo15165a(com.google.android.gms.internal.ads.dzs r5, com.google.android.gms.internal.ads.zzht r6) throws com.google.android.gms.internal.ads.zzmd {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dxa.mo15165a(com.google.android.gms.internal.ads.dzs, com.google.android.gms.internal.ads.zzht):int");
    }

    @Override // com.google.android.gms.internal.ads.ecv
    /* renamed from: a */
    public final dvz mo15205a(dvz dvzVar) {
        return this.f47900c.m15565a(dvzVar);
    }

    @Override // com.google.android.gms.internal.ads.dzq
    /* renamed from: a */
    public final dzr mo15402a(dzs dzsVar, zzht zzhtVar, boolean z) throws zzmd {
        this.f47901d = false;
        return super.mo15402a(dzsVar, zzhtVar, z);
    }

    @Override // com.google.android.gms.internal.ads.dvi, com.google.android.gms.internal.ads.dvn
    /* renamed from: a */
    public final void mo15173a(int i, Object obj) throws zzhe {
        if (i == 2) {
            dwt dwtVar = this.f47900c;
            float floatValue = ((Float) obj).floatValue();
            if (dwtVar.f47866q == floatValue) {
                return;
            }
            dwtVar.f47866q = floatValue;
            dwtVar.m15555e();
        } else if (i != 3) {
            super.mo15173a(i, obj);
        } else {
            int intValue = ((Integer) obj).intValue();
            dwt dwtVar2 = this.f47900c;
            if (dwtVar2.f47857h == intValue) {
                return;
            }
            dwtVar2.f47857h = intValue;
            if (dwtVar2.f47870u) {
                return;
            }
            dwtVar2.m15554f();
            dwtVar2.f47869t = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvi
    /* renamed from: a */
    public final void mo15171a(long j, boolean z) throws zzhe {
        super.mo15171a(j, z);
        this.f47900c.m15554f();
        this.f47906i = j;
        this.f47907j = true;
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
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    @Override // com.google.android.gms.internal.ads.dzq
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void mo15168a(android.media.MediaCodec r8, android.media.MediaFormat r9) throws com.google.android.gms.internal.ads.zzhe {
        /*
            Method dump skipped, instructions count: 1027
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dxa.mo15168a(android.media.MediaCodec, android.media.MediaFormat):void");
    }

    @Override // com.google.android.gms.internal.ads.dzq
    /* renamed from: a */
    protected final void mo15166a(dzr dzrVar, MediaCodec mediaCodec, zzht zzhtVar) {
        this.f47902e = ede.f48739a < 24 && "OMX.SEC.aac.dec".equals(dzrVar.f48435a) && "samsung".equals(ede.f48741c) && (ede.f48740b.startsWith("zeroflte") || ede.f48740b.startsWith("herolte") || ede.f48740b.startsWith("heroqlte"));
        if (!this.f47901d) {
            mediaCodec.configure(zzhtVar.zzfe(), (Surface) null, (MediaCrypto) null, 0);
            this.f47903f = null;
            return;
        }
        MediaFormat zzfe = zzhtVar.zzfe();
        this.f47903f = zzfe;
        zzfe.setString("mime", "audio/raw");
        mediaCodec.configure(this.f47903f, (Surface) null, (MediaCrypto) null, 0);
        this.f47903f.setString("mime", zzhtVar.zzaho);
    }

    @Override // com.google.android.gms.internal.ads.dzq
    /* renamed from: a */
    protected final void mo15163a(String str, long j, long j2) {
        dwk dwkVar = this.f47899b;
        if (dwkVar.f47797b != null) {
            dwkVar.f47796a.post(new dwm(dwkVar, str, j, j2));
        }
    }

    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvi
    /* renamed from: a */
    public final void mo15162a(boolean z) throws zzhe {
        super.mo15162a(z);
        dwk dwkVar = this.f47899b;
        dxk dxkVar = this.f48410a;
        if (dwkVar.f47797b != null) {
            dwkVar.f47796a.post(new dwn(dwkVar, dxkVar));
        }
        m15660q();
        dwt dwtVar = this.f47900c;
        if (dwtVar.f47870u) {
            dwtVar.f47870u = false;
            dwtVar.f47869t = 0;
            dwtVar.m15554f();
        }
    }

    @Override // com.google.android.gms.internal.ads.dzq
    /* renamed from: a */
    protected final boolean mo15172a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws zzhe {
        if (this.f47901d && (i2 & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i, false);
            return true;
        } else if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.f48410a.f47968e++;
            dwt dwtVar = this.f47900c;
            if (dwtVar.f47865p != 1) {
                return true;
            }
            dwtVar.f47865p = 2;
            return true;
        } else {
            try {
                if (!this.f47900c.m15563a(byteBuffer, j3)) {
                    return false;
                }
                mediaCodec.releaseOutputBuffer(i, false);
                this.f48410a.f47967d++;
                return true;
            } catch (zziw | zzjb e) {
                throw zzhe.m13625a(e, m15659r());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dzq
    /* renamed from: b */
    public final void mo15158b(zzht zzhtVar) throws zzhe {
        super.mo15158b(zzhtVar);
        dwk dwkVar = this.f47899b;
        if (dwkVar.f47797b != null) {
            dwkVar.f47796a.post(new dwp(dwkVar, zzhtVar));
        }
        this.f47904g = "audio/raw".equals(zzhtVar.zzaho) ? zzhtVar.zzaia : 2;
        this.f47905h = zzhtVar.zzahy;
    }

    @Override // com.google.android.gms.internal.ads.dvi, com.google.android.gms.internal.ads.dvy
    /* renamed from: c */
    public final ecv mo15539c() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvi
    /* renamed from: n */
    public final void mo15152n() {
        super.mo15152n();
        this.f47900c.m15561b();
    }

    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvi
    /* renamed from: o */
    public final void mo15151o() {
        dwt dwtVar = this.f47900c;
        dwtVar.f47868s = false;
        if (dwtVar.m15553g()) {
            dwtVar.m15551i();
            dwtVar.f47852c.m15544d();
        }
        super.mo15151o();
    }

    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvi
    /* renamed from: p */
    public final void mo15150p() {
        try {
            dwt dwtVar = this.f47900c;
            dwtVar.m15554f();
            for (dwj dwjVar : dwtVar.f47851b) {
                dwjVar.mo15512g();
            }
            dwtVar.f47869t = 0;
            dwtVar.f47868s = false;
            try {
                super.mo15150p();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.mo15150p();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvy
    /* renamed from: t */
    public final boolean mo15149t() {
        return this.f47900c.m15556d() || super.mo15149t();
    }

    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvy
    /* renamed from: u */
    public final boolean mo15397u() {
        if (super.mo15397u()) {
            dwt dwtVar = this.f47900c;
            return !dwtVar.m15553g() || (dwtVar.f47867r && !dwtVar.m15556d());
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    @Override // com.google.android.gms.internal.ads.ecv
    /* renamed from: y */
    public final long mo15202y() {
        char m15562a = this.f47900c.m15562a(mo15397u());
        if (m15562a != Long.MIN_VALUE) {
            if (!this.f47907j) {
                m15562a = Math.max(this.f47906i, (long) m15562a);
            }
            this.f47906i = m15562a;
            this.f47907j = false;
        }
        return this.f47906i;
    }

    @Override // com.google.android.gms.internal.ads.ecv
    /* renamed from: z */
    public final dvz mo15201z() {
        return this.f47900c.f47861l;
    }
}
