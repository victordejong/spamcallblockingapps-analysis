package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import com.callapp.contacts.model.Constants;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edo.class */
public final class edo extends dzq {

    /* renamed from: c */
    private static final int[] f48763c = {Constants.BIG_SIZE_SCREEN, 1600, 1440, Constants.SMALL_SIZE_SCREEN, 960, 854, 640, 540, 480};

    /* renamed from: A */
    private int f48764A;

    /* renamed from: B */
    private int f48765B;

    /* renamed from: C */
    private int f48766C;

    /* renamed from: D */
    private float f48767D;

    /* renamed from: E */
    private boolean f48768E;

    /* renamed from: F */
    private int f48769F;

    /* renamed from: G */
    private long f48770G;

    /* renamed from: H */
    private int f48771H;

    /* renamed from: b */
    edp f48772b;

    /* renamed from: d */
    private final Context f48773d;

    /* renamed from: e */
    private final eds f48774e;

    /* renamed from: f */
    private final edt f48775f;

    /* renamed from: g */
    private final long f48776g;

    /* renamed from: h */
    private final int f48777h;

    /* renamed from: i */
    private final boolean f48778i;

    /* renamed from: j */
    private final long[] f48779j;

    /* renamed from: k */
    private zzht[] f48780k;

    /* renamed from: l */
    private edq f48781l;

    /* renamed from: m */
    private Surface f48782m;

    /* renamed from: n */
    private Surface f48783n;

    /* renamed from: o */
    private int f48784o;

    /* renamed from: p */
    private boolean f48785p;

    /* renamed from: q */
    private long f48786q;

    /* renamed from: r */
    private long f48787r;

    /* renamed from: s */
    private int f48788s;

    /* renamed from: t */
    private int f48789t;

    /* renamed from: u */
    private int f48790u;

    /* renamed from: v */
    private float f48791v;

    /* renamed from: w */
    private int f48792w;

    /* renamed from: x */
    private int f48793x;

    /* renamed from: y */
    private int f48794y;

    /* renamed from: z */
    private float f48795z;

    public edo(Context context, dzs dzsVar, long j, Handler handler, edu eduVar, int i) {
        this(context, dzsVar, 0L, null, false, handler, eduVar, -1);
    }

    private edo(Context context, dzs dzsVar, long j, dxq<Object> dxqVar, boolean z, Handler handler, edu eduVar, int i) {
        super(2, dzsVar, null, false);
        this.f48776g = 0L;
        this.f48777h = -1;
        this.f48773d = context.getApplicationContext();
        this.f48774e = new eds(context);
        this.f48775f = new edt(handler, eduVar);
        boolean z2 = false;
        if (ede.f48739a <= 22) {
            z2 = false;
            if ("foster".equals(ede.f48740b)) {
                z2 = false;
                if ("NVIDIA".equals(ede.f48741c)) {
                    z2 = true;
                }
            }
        }
        this.f48778i = z2;
        this.f48779j = new long[10];
        this.f48770G = -9223372036854775807L;
        this.f48786q = -9223372036854775807L;
        this.f48792w = -1;
        this.f48793x = -1;
        this.f48795z = -1.0f;
        this.f48791v = -1.0f;
        this.f48784o = 1;
        m15145y();
    }

    /* renamed from: G */
    private final void m15175G() {
        if (this.f48764A == -1 && this.f48765B == -1) {
            return;
        }
        this.f48775f.m15141a(this.f48792w, this.f48793x, this.f48794y, this.f48795z);
    }

    /* renamed from: H */
    private final void m15174H() {
        if (this.f48788s > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f48775f.m15140a(this.f48788s, elapsedRealtime - this.f48787r);
            this.f48788s = 0;
            this.f48787r = elapsedRealtime;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    private static int m15164a(String str, int i, int i2) {
        boolean z;
        int i3;
        int i4;
        int i5;
        if (i == -1 || i2 == -1) {
            return -1;
        }
        str.hashCode();
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1599127256:
                if (str.equals("video/x-vnd.on2.vp8")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        switch (z) {
            case false:
            case true:
            case true:
                i5 = i * i2;
                i3 = i5;
                i4 = 2;
                break;
            case true:
            case true:
                i3 = i * i2;
                i4 = 4;
                break;
            case true:
                if (!"BRAVIA 4K 2015".equals(ede.f48742d)) {
                    i5 = ((ede.m15198a(i, 16) * ede.m15198a(i2, 16)) << 4) << 4;
                    i3 = i5;
                    i4 = 2;
                    break;
                } else {
                    return -1;
                }
            default:
                return -1;
        }
        return (i3 * 3) / (i4 * 2);
    }

    /* renamed from: a */
    private final void m15170a(MediaCodec mediaCodec, int i) {
        edf.m15182a("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        edf.m15183a();
        this.f48410a.f47968e++;
    }

    /* renamed from: a */
    private final void m15169a(MediaCodec mediaCodec, int i, long j) {
        m15144z();
        edf.m15182a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j);
        edf.m15183a();
        this.f48410a.f47967d++;
        this.f48789t = 0;
        m15148v();
    }

    /* renamed from: b */
    private final void m15159b(MediaCodec mediaCodec, int i) {
        m15144z();
        edf.m15182a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        edf.m15183a();
        this.f48410a.f47967d++;
        this.f48789t = 0;
        m15148v();
    }

    /* renamed from: b */
    private final boolean m15157b(boolean z) {
        if (ede.f48739a < 23 || this.f48768E) {
            return false;
        }
        return !z || zzqa.zzc(this.f48773d);
    }

    /* renamed from: b */
    private static boolean m15156b(boolean z, zzht zzhtVar, zzht zzhtVar2) {
        if (!zzhtVar.zzaho.equals(zzhtVar2.zzaho) || m15153d(zzhtVar) != m15153d(zzhtVar2)) {
            return false;
        }
        if (z) {
            return true;
        }
        return zzhtVar.width == zzhtVar2.width && zzhtVar.height == zzhtVar2.height;
    }

    /* renamed from: c */
    private static int m15154c(zzht zzhtVar) {
        return zzhtVar.zzahp != -1 ? zzhtVar.zzahp : m15164a(zzhtVar.zzaho, zzhtVar.width, zzhtVar.height);
    }

    /* renamed from: c */
    private static boolean m15155c(long j) {
        return j < -30000;
    }

    /* renamed from: d */
    private static int m15153d(zzht zzhtVar) {
        if (zzhtVar.zzaht == -1) {
            return 0;
        }
        return zzhtVar.zzaht;
    }

    /* renamed from: w */
    private final void m15147w() {
        this.f48786q = -9223372036854775807L;
    }

    /* renamed from: x */
    private final void m15146x() {
        MediaCodec m15405C;
        this.f48785p = false;
        if (ede.f48739a < 23 || !this.f48768E || (m15405C = m15405C()) == null) {
            return;
        }
        this.f48772b = new edp(this, m15405C);
    }

    /* renamed from: y */
    private final void m15145y() {
        this.f48764A = -1;
        this.f48765B = -1;
        this.f48767D = -1.0f;
        this.f48766C = -1;
    }

    /* renamed from: z */
    private final void m15144z() {
        int i = this.f48764A;
        int i2 = this.f48792w;
        if (i == i2 && this.f48765B == this.f48793x && this.f48766C == this.f48794y && this.f48767D == this.f48795z) {
            return;
        }
        this.f48775f.m15141a(i2, this.f48793x, this.f48794y, this.f48795z);
        this.f48764A = this.f48792w;
        this.f48765B = this.f48793x;
        this.f48766C = this.f48794y;
        this.f48767D = this.f48795z;
    }

    @Override // com.google.android.gms.internal.ads.dzq
    /* renamed from: E */
    public final void mo15177E() {
        try {
            super.mo15177E();
            Surface surface = this.f48783n;
            if (surface == null) {
                return;
            }
            if (this.f48782m == surface) {
                this.f48782m = null;
            }
            surface.release();
            this.f48783n = null;
        } catch (Throwable th) {
            if (this.f48783n != null) {
                Surface surface2 = this.f48782m;
                Surface surface3 = this.f48783n;
                if (surface2 == surface3) {
                    this.f48782m = null;
                }
                surface3.release();
                this.f48783n = null;
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.dzq
    /* renamed from: F */
    protected final void mo15176F() {
        if (ede.f48739a >= 23 || !this.f48768E) {
            return;
        }
        m15148v();
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0291  */
    @Override // com.google.android.gms.internal.ads.dzq
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final int mo15165a(com.google.android.gms.internal.ads.dzs r7, com.google.android.gms.internal.ads.zzht r8) throws com.google.android.gms.internal.ads.zzmd {
        /*
            Method dump skipped, instructions count: 879
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.edo.mo15165a(com.google.android.gms.internal.ads.dzs, com.google.android.gms.internal.ads.zzht):int");
    }

    @Override // com.google.android.gms.internal.ads.dvi, com.google.android.gms.internal.ads.dvn
    /* renamed from: a */
    public final void mo15173a(int i, Object obj) throws zzhe {
        if (i != 1) {
            if (i != 4) {
                super.mo15173a(i, obj);
                return;
            }
            this.f48784o = ((Integer) obj).intValue();
            MediaCodec m15405C = m15405C();
            if (m15405C == null) {
                return;
            }
            m15405C.setVideoScalingMode(this.f48784o);
            return;
        }
        Surface surface = (Surface) obj;
        zzqa zzqaVar = surface;
        if (surface == null) {
            zzqaVar = this.f48783n;
            if (zzqaVar == null) {
                dzr m15404D = m15404D();
                zzqaVar = surface;
                if (m15404D != null) {
                    zzqaVar = surface;
                    if (m15157b(m15404D.f48438d)) {
                        zzqaVar = zzqa.zzc(this.f48773d, m15404D.f48438d);
                        this.f48783n = zzqaVar;
                    }
                }
            }
        }
        if (this.f48782m == zzqaVar) {
            if (zzqaVar == null || zzqaVar == this.f48783n) {
                return;
            }
            m15175G();
            if (!this.f48785p) {
                return;
            }
            this.f48775f.m15139a(this.f48782m);
            return;
        }
        this.f48782m = zzqaVar;
        int mo15588d = mo15588d();
        if (mo15588d == 1 || mo15588d == 2) {
            MediaCodec m15405C2 = m15405C();
            if (ede.f48739a < 23 || m15405C2 == null || zzqaVar == null) {
                mo15177E();
                m15406B();
            } else {
                m15405C2.setOutputSurface(zzqaVar);
            }
        }
        if (zzqaVar == null || zzqaVar == this.f48783n) {
            m15145y();
            m15146x();
            return;
        }
        m15175G();
        m15146x();
        if (mo15588d != 2) {
            return;
        }
        m15147w();
    }

    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvi
    /* renamed from: a */
    public final void mo15171a(long j, boolean z) throws zzhe {
        super.mo15171a(j, z);
        m15146x();
        this.f48789t = 0;
        int i = this.f48771H;
        if (i != 0) {
            this.f48770G = this.f48779j[i - 1];
            this.f48771H = 0;
        }
        if (z) {
            m15147w();
        } else {
            this.f48786q = -9223372036854775807L;
        }
    }

    @Override // com.google.android.gms.internal.ads.dzq
    /* renamed from: a */
    protected final void mo15168a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        this.f48792w = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
        this.f48793x = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        this.f48795z = this.f48791v;
        if (ede.f48739a >= 21) {
            int i = this.f48790u;
            if (i == 90 || i == 270) {
                int i2 = this.f48792w;
                this.f48792w = this.f48793x;
                this.f48793x = i2;
                this.f48795z = 1.0f / this.f48795z;
            }
        } else {
            this.f48794y = this.f48790u;
        }
        mediaCodec.setVideoScalingMode(this.f48784o);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0278 A[EDGE_INSN: B:100:0x0278->B:70:0x0278 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:103:0x026f A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.dzq
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void mo15166a(com.google.android.gms.internal.ads.dzr r8, android.media.MediaCodec r9, com.google.android.gms.internal.ads.zzht r10) throws com.google.android.gms.internal.ads.zzmd {
        /*
            Method dump skipped, instructions count: 955
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.edo.mo15166a(com.google.android.gms.internal.ads.dzr, android.media.MediaCodec, com.google.android.gms.internal.ads.zzht):void");
    }

    @Override // com.google.android.gms.internal.ads.dzq
    /* renamed from: a */
    protected final void mo15163a(String str, long j, long j2) {
        edt edtVar = this.f48775f;
        if (edtVar.f48818b != null) {
            edtVar.f48817a.post(new edv(edtVar, str, j, j2));
        }
    }

    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvi
    /* renamed from: a */
    public final void mo15162a(boolean z) throws zzhe {
        super.mo15162a(z);
        int i = m15660q().f47768b;
        this.f48769F = i;
        this.f48768E = i != 0;
        edt edtVar = this.f48775f;
        dxk dxkVar = this.f48410a;
        if (edtVar.f48818b != null) {
            edtVar.f48817a.post(new edw(edtVar, dxkVar));
        }
        eds edsVar = this.f48774e;
        edsVar.f48813h = false;
        if (edsVar.f48807b) {
            edsVar.f48806a.f48802b.sendEmptyMessage(1);
        }
    }

    @Override // com.google.android.gms.internal.ads.dvi
    /* renamed from: a */
    public final void mo15160a(zzht[] zzhtVarArr, long j) throws zzhe {
        this.f48780k = zzhtVarArr;
        if (this.f48770G == -9223372036854775807L) {
            this.f48770G = j;
        } else {
            int i = this.f48771H;
            long[] jArr = this.f48779j;
            if (i == jArr.length) {
                long j2 = jArr[i - 1];
                StringBuilder sb = new StringBuilder(65);
                sb.append("Too many stream changes, so dropping offset: ");
                sb.append(j2);
                Log.w("MediaCodecVideoRenderer", sb.toString());
            } else {
                this.f48771H = i + 1;
            }
            this.f48779j[this.f48771H - 1] = j;
        }
        super.mo15160a(zzhtVarArr, j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x025a  */
    /* JADX WARN: Type inference failed for: r0v112, types: [long] */
    /* JADX WARN: Type inference failed for: r0v118, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    @Override // com.google.android.gms.internal.ads.dzq
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final boolean mo15172a(long r8, long r10, android.media.MediaCodec r12, java.nio.ByteBuffer r13, int r14, int r15, long r16, boolean r18) {
        /*
            Method dump skipped, instructions count: 680
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.edo.mo15172a(long, long, android.media.MediaCodec, java.nio.ByteBuffer, int, int, long, boolean):boolean");
    }

    @Override // com.google.android.gms.internal.ads.dzq
    /* renamed from: a */
    protected final boolean mo15167a(dzr dzrVar) {
        return this.f48782m != null || m15157b(dzrVar.f48438d);
    }

    @Override // com.google.android.gms.internal.ads.dzq
    /* renamed from: a */
    protected final boolean mo15161a(boolean z, zzht zzhtVar, zzht zzhtVar2) {
        return m15156b(z, zzhtVar, zzhtVar2) && zzhtVar2.width <= this.f48781l.f48797a && zzhtVar2.height <= this.f48781l.f48798b && zzhtVar2.zzahp <= this.f48781l.f48799c;
    }

    @Override // com.google.android.gms.internal.ads.dzq
    /* renamed from: b */
    public final void mo15158b(zzht zzhtVar) throws zzhe {
        super.mo15158b(zzhtVar);
        edt edtVar = this.f48775f;
        if (edtVar.f48818b != null) {
            edtVar.f48817a.post(new edy(edtVar, zzhtVar));
        }
        this.f48791v = zzhtVar.zzahu == -1.0f ? 1.0f : zzhtVar.zzahu;
        this.f48790u = m15153d(zzhtVar);
    }

    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvi
    /* renamed from: n */
    public final void mo15152n() {
        super.mo15152n();
        this.f48788s = 0;
        this.f48787r = SystemClock.elapsedRealtime();
        this.f48786q = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvi
    /* renamed from: o */
    public final void mo15151o() {
        m15174H();
        super.mo15151o();
    }

    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvi
    /* renamed from: p */
    public final void mo15150p() {
        this.f48792w = -1;
        this.f48793x = -1;
        this.f48795z = -1.0f;
        this.f48791v = -1.0f;
        this.f48770G = -9223372036854775807L;
        this.f48771H = 0;
        m15145y();
        m15146x();
        eds edsVar = this.f48774e;
        if (edsVar.f48807b) {
            edsVar.f48806a.f48802b.sendEmptyMessage(2);
        }
        this.f48772b = null;
        this.f48768E = false;
        try {
            super.mo15150p();
        } finally {
            this.f48775f.m15138a(this.f48410a);
        }
    }

    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvy
    /* renamed from: t */
    public final boolean mo15149t() {
        Surface surface;
        if (super.mo15149t() && (this.f48785p || (((surface = this.f48783n) != null && this.f48782m == surface) || m15405C() == null))) {
            this.f48786q = -9223372036854775807L;
            return true;
        } else if (this.f48786q == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.f48786q) {
                return true;
            }
            this.f48786q = -9223372036854775807L;
            return false;
        }
    }

    /* renamed from: v */
    public final void m15148v() {
        if (!this.f48785p) {
            this.f48785p = true;
            this.f48775f.m15139a(this.f48782m);
        }
    }
}
