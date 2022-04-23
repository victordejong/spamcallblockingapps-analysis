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

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f27680c = {Constants.BIG_SIZE_SCREEN, 1600, 1440, Constants.SMALL_SIZE_SCREEN, 960, 854, 640, 540, 480};
    private int A;
    private int B;
    private int C;
    private float D;
    private boolean E;
    private int F;
    private long G;
    private int H;

    /* renamed from: b  reason: collision with root package name */
    edp f27681b;

    /* renamed from: d  reason: collision with root package name */
    private final Context f27682d;
    private final eds e;
    private final edt f;
    private final long g;
    private final int h;
    private final boolean i;
    private final long[] j;
    private zzht[] k;
    private edq l;
    private Surface m;
    private Surface n;
    private int o;
    private boolean p;
    private long q;
    private long r;
    private int s;
    private int t;
    private int u;
    private float v;
    private int w;
    private int x;
    private int y;
    private float z;

    public edo(Context context, dzs dzsVar, long j, Handler handler, edu eduVar, int i) {
        this(context, dzsVar, 0L, null, false, handler, eduVar, -1);
    }

    private edo(Context context, dzs dzsVar, long j, dxq<Object> dxqVar, boolean z, Handler handler, edu eduVar, int i) {
        super(2, dzsVar, null, false);
        this.g = 0L;
        this.h = -1;
        this.f27682d = context.getApplicationContext();
        this.e = new eds(context);
        this.f = new edt(handler, eduVar);
        boolean z2 = false;
        if (ede.f27664a <= 22) {
            z2 = false;
            if ("foster".equals(ede.f27665b)) {
                z2 = false;
                if ("NVIDIA".equals(ede.f27666c)) {
                    z2 = true;
                }
            }
        }
        this.i = z2;
        this.j = new long[10];
        this.G = -9223372036854775807L;
        this.q = -9223372036854775807L;
        this.w = -1;
        this.x = -1;
        this.z = -1.0f;
        this.v = -1.0f;
        this.o = 1;
        y();
    }

    private final void G() {
        if (this.A != -1 || this.B != -1) {
            this.f.a(this.w, this.x, this.y, this.z);
        }
    }

    private final void H() {
        if (this.s > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f.a(this.s, elapsedRealtime - this.r);
            this.s = 0;
            this.r = elapsedRealtime;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int a(String str, int i, int i2) {
        char c2;
        int i3;
        if (i == -1 || i2 == -1) {
            return -1;
        }
        str.hashCode();
        int i4 = 4;
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1599127256:
                if (str.equals("video/x-vnd.on2.vp8")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
            case 2:
            case 4:
                i3 = i * i2;
                i4 = 2;
                break;
            case 1:
            case 5:
                i3 = i * i2;
                break;
            case 3:
                if (!"BRAVIA 4K 2015".equals(ede.f27667d)) {
                    i3 = ((ede.a(i, 16) * ede.a(i2, 16)) << 4) << 4;
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

    private final void a(MediaCodec mediaCodec, int i) {
        edf.a("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        edf.a();
        this.f27494a.e++;
    }

    private final void a(MediaCodec mediaCodec, int i, long j) {
        z();
        edf.a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j);
        edf.a();
        this.f27494a.f27372d++;
        this.t = 0;
        v();
    }

    private final void b(MediaCodec mediaCodec, int i) {
        z();
        edf.a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        edf.a();
        this.f27494a.f27372d++;
        this.t = 0;
        v();
    }

    private final boolean b(boolean z) {
        if (ede.f27664a < 23 || this.E) {
            return false;
        }
        return !z || zzqa.zzc(this.f27682d);
    }

    private static boolean b(boolean z, zzht zzhtVar, zzht zzhtVar2) {
        if (!zzhtVar.zzaho.equals(zzhtVar2.zzaho) || d(zzhtVar) != d(zzhtVar2)) {
            return false;
        }
        if (!z) {
            return zzhtVar.width == zzhtVar2.width && zzhtVar.height == zzhtVar2.height;
        }
        return true;
    }

    private static int c(zzht zzhtVar) {
        return zzhtVar.zzahp != -1 ? zzhtVar.zzahp : a(zzhtVar.zzaho, zzhtVar.width, zzhtVar.height);
    }

    private static boolean c(long j) {
        return j < -30000;
    }

    private static int d(zzht zzhtVar) {
        if (zzhtVar.zzaht == -1) {
            return 0;
        }
        return zzhtVar.zzaht;
    }

    private final void w() {
        this.q = -9223372036854775807L;
    }

    private final void x() {
        MediaCodec C;
        this.p = false;
        if (ede.f27664a >= 23 && this.E && (C = C()) != null) {
            this.f27681b = new edp(this, C);
        }
    }

    private final void y() {
        this.A = -1;
        this.B = -1;
        this.D = -1.0f;
        this.C = -1;
    }

    private final void z() {
        int i = this.A;
        int i2 = this.w;
        if (i != i2 || this.B != this.x || this.C != this.y || this.D != this.z) {
            this.f.a(i2, this.x, this.y, this.z);
            this.A = this.w;
            this.B = this.x;
            this.C = this.y;
            this.D = this.z;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dzq
    public final void E() {
        try {
            super.E();
            Surface surface = this.n;
            if (surface != null) {
                if (this.m == surface) {
                    this.m = null;
                }
                surface.release();
                this.n = null;
            }
        } catch (Throwable th) {
            if (this.n != null) {
                Surface surface2 = this.m;
                Surface surface3 = this.n;
                if (surface2 == surface3) {
                    this.m = null;
                }
                surface3.release();
                this.n = null;
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.dzq
    protected final void F() {
        if (ede.f27664a < 23 && this.E) {
            v();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0291  */
    @Override // com.google.android.gms.internal.ads.dzq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final int a(com.google.android.gms.internal.ads.dzs r7, com.google.android.gms.internal.ads.zzht r8) throws com.google.android.gms.internal.ads.zzmd {
        /*
            Method dump skipped, instructions count: 879
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.edo.a(com.google.android.gms.internal.ads.dzs, com.google.android.gms.internal.ads.zzht):int");
    }

    @Override // com.google.android.gms.internal.ads.dvi, com.google.android.gms.internal.ads.dvn
    public final void a(int i, Object obj) throws zzhe {
        if (i == 1) {
            Surface surface = (Surface) obj;
            Surface surface2 = surface;
            if (surface == null) {
                surface2 = this.n;
                if (surface2 == null) {
                    dzr D = D();
                    surface2 = surface;
                    if (D != null) {
                        surface2 = surface;
                        if (b(D.f27500d)) {
                            surface2 = zzqa.zzc(this.f27682d, D.f27500d);
                            this.n = surface2;
                        }
                    }
                }
            }
            if (this.m != surface2) {
                this.m = surface2;
                int d2 = d();
                if (d2 == 1 || d2 == 2) {
                    MediaCodec C = C();
                    if (ede.f27664a < 23 || C == null || surface2 == null) {
                        E();
                        B();
                    } else {
                        C.setOutputSurface(surface2);
                    }
                }
                if (surface2 == null || surface2 == this.n) {
                    y();
                    x();
                    return;
                }
                G();
                x();
                if (d2 == 2) {
                    w();
                }
            } else if (surface2 != null && surface2 != this.n) {
                G();
                if (this.p) {
                    this.f.a(this.m);
                }
            }
        } else if (i == 4) {
            this.o = ((Integer) obj).intValue();
            MediaCodec C2 = C();
            if (C2 != null) {
                C2.setVideoScalingMode(this.o);
            }
        } else {
            super.a(i, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvi
    public final void a(long j, boolean z) throws zzhe {
        super.a(j, z);
        x();
        this.t = 0;
        int i = this.H;
        if (i != 0) {
            this.G = this.j[i - 1];
            this.H = 0;
        }
        if (z) {
            w();
        } else {
            this.q = -9223372036854775807L;
        }
    }

    @Override // com.google.android.gms.internal.ads.dzq
    protected final void a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        this.w = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
        this.x = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        this.z = this.v;
        if (ede.f27664a >= 21) {
            int i = this.u;
            if (i == 90 || i == 270) {
                int i2 = this.w;
                this.w = this.x;
                this.x = i2;
                this.z = 1.0f / this.z;
            }
        } else {
            this.y = this.u;
        }
        mediaCodec.setVideoScalingMode(this.o);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0278 A[EDGE_INSN: B:100:0x0278->B:70:0x0278 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:103:0x026f A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.dzq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void a(com.google.android.gms.internal.ads.dzr r8, android.media.MediaCodec r9, com.google.android.gms.internal.ads.zzht r10) throws com.google.android.gms.internal.ads.zzmd {
        /*
            Method dump skipped, instructions count: 955
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.edo.a(com.google.android.gms.internal.ads.dzr, android.media.MediaCodec, com.google.android.gms.internal.ads.zzht):void");
    }

    @Override // com.google.android.gms.internal.ads.dzq
    protected final void a(String str, long j, long j2) {
        edt edtVar = this.f;
        if (edtVar.f27696b != null) {
            edtVar.f27695a.post(new edv(edtVar, str, j, j2));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvi
    public final void a(boolean z) throws zzhe {
        super.a(z);
        int i = q().f27291b;
        this.F = i;
        this.E = i != 0;
        edt edtVar = this.f;
        dxk dxkVar = this.f27494a;
        if (edtVar.f27696b != null) {
            edtVar.f27695a.post(new edw(edtVar, dxkVar));
        }
        eds edsVar = this.e;
        edsVar.h = false;
        if (edsVar.f27692b) {
            edsVar.f27691a.f27689b.sendEmptyMessage(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dvi
    public final void a(zzht[] zzhtVarArr, long j) throws zzhe {
        this.k = zzhtVarArr;
        if (this.G == -9223372036854775807L) {
            this.G = j;
        } else {
            int i = this.H;
            long[] jArr = this.j;
            if (i == jArr.length) {
                long j2 = jArr[i - 1];
                StringBuilder sb = new StringBuilder(65);
                sb.append("Too many stream changes, so dropping offset: ");
                sb.append(j2);
                Log.w("MediaCodecVideoRenderer", sb.toString());
            } else {
                this.H = i + 1;
            }
            this.j[this.H - 1] = j;
        }
        super.a(zzhtVarArr, j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x025a  */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [com.google.android.gms.internal.ads.eds] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v5, types: [long] */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.google.android.gms.internal.ads.edo, com.google.android.gms.internal.ads.dvi] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Unknown variable types count: 5 */
    @Override // com.google.android.gms.internal.ads.dzq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final boolean a(long r8, long r10, android.media.MediaCodec r12, java.nio.ByteBuffer r13, int r14, int r15, long r16, boolean r18) {
        /*
            Method dump skipped, instructions count: 680
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.edo.a(long, long, android.media.MediaCodec, java.nio.ByteBuffer, int, int, long, boolean):boolean");
    }

    @Override // com.google.android.gms.internal.ads.dzq
    protected final boolean a(dzr dzrVar) {
        return this.m != null || b(dzrVar.f27500d);
    }

    @Override // com.google.android.gms.internal.ads.dzq
    protected final boolean a(boolean z, zzht zzhtVar, zzht zzhtVar2) {
        return b(z, zzhtVar, zzhtVar2) && zzhtVar2.width <= this.l.f27684a && zzhtVar2.height <= this.l.f27685b && zzhtVar2.zzahp <= this.l.f27686c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dzq
    public final void b(zzht zzhtVar) throws zzhe {
        super.b(zzhtVar);
        edt edtVar = this.f;
        if (edtVar.f27696b != null) {
            edtVar.f27695a.post(new edy(edtVar, zzhtVar));
        }
        this.v = zzhtVar.zzahu == -1.0f ? 1.0f : zzhtVar.zzahu;
        this.u = d(zzhtVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvi
    public final void n() {
        super.n();
        this.s = 0;
        this.r = SystemClock.elapsedRealtime();
        this.q = -9223372036854775807L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvi
    public final void o() {
        H();
        super.o();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvi
    public final void p() {
        this.w = -1;
        this.x = -1;
        this.z = -1.0f;
        this.v = -1.0f;
        this.G = -9223372036854775807L;
        this.H = 0;
        y();
        x();
        eds edsVar = this.e;
        if (edsVar.f27692b) {
            edsVar.f27691a.f27689b.sendEmptyMessage(2);
        }
        this.f27681b = null;
        this.E = false;
        try {
            super.p();
        } finally {
            this.f.a(this.f27494a);
        }
    }

    @Override // com.google.android.gms.internal.ads.dzq, com.google.android.gms.internal.ads.dvy
    public final boolean t() {
        Surface surface;
        if (super.t() && (this.p || (((surface = this.n) != null && this.m == surface) || C() == null))) {
            this.q = -9223372036854775807L;
            return true;
        } else if (this.q == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.q) {
                return true;
            }
            this.q = -9223372036854775807L;
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void v() {
        if (!this.p) {
            this.p = true;
            this.f.a(this.m);
        }
    }
}
