package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dvp.class */
final class dvp implements Handler.Callback, ear, eat, eby {
    private int B;
    private long C;
    private int D;
    private dvu E;
    private long F;
    private dvs G;
    private dvs H;
    private dvs I;
    private dwe J;

    /* renamed from: a  reason: collision with root package name */
    final Handler f27261a;

    /* renamed from: b  reason: collision with root package name */
    boolean f27262b;

    /* renamed from: c  reason: collision with root package name */
    int f27263c;

    /* renamed from: d  reason: collision with root package name */
    boolean f27264d;
    volatile int e;
    volatile int f;
    private final dvy[] g;
    private final dwc[] h;
    private final ebv i;
    private final dvx j;
    private final edd k;
    private final HandlerThread l;
    private final Handler m;
    private final dvl n;
    private final dwf o;
    private final dwg p;
    private dvr q;
    private dvz r;
    private dvy s;
    private ecv t;
    private eau u;
    private dvy[] v;
    private boolean w;
    private boolean x;
    private boolean y;
    private int A = 0;
    private int z = 1;

    public dvp(dvy[] dvyVarArr, ebv ebvVar, dvx dvxVar, boolean z, int i, Handler handler, dvr dvrVar, dvl dvlVar) {
        this.g = dvyVarArr;
        this.i = ebvVar;
        this.j = dvxVar;
        this.w = z;
        this.m = handler;
        this.q = dvrVar;
        this.n = dvlVar;
        this.h = new dwc[dvyVarArr.length];
        for (int i2 = 0; i2 < dvyVarArr.length; i2++) {
            dvyVarArr[i2].a(i2);
            this.h[i2] = dvyVarArr[i2].b();
        }
        this.k = new edd();
        this.v = new dvy[0];
        this.o = new dwf();
        this.p = new dwg();
        ebvVar.f27598a = this;
        this.r = dvz.f27282a;
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.l = handlerThread;
        handlerThread.start();
        this.f27261a = new Handler(handlerThread.getLooper(), this);
    }

    private final int a(int i, dwe dweVar, dwe dweVar2) {
        int b2 = dweVar.b();
        int i2 = -1;
        for (int i3 = 0; i3 < b2 && i2 == -1; i3++) {
            i = dweVar.a(i, this.p, this.o, this.A);
            i2 = dweVar2.a(dweVar.a(i, this.p, true).f27298b);
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.gms.internal.ads.dvp] */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    private final long a(int i, long j) throws zzhe {
        dvs dvsVar;
        char c2;
        d();
        this.x = false;
        a(2);
        dvs dvsVar2 = this.I;
        if (dvsVar2 != null) {
            dvs dvsVar3 = null;
            while (true) {
                dvsVar = dvsVar3;
                if (dvsVar2 == null) {
                    break;
                }
                if (dvsVar2.f != i || !dvsVar2.i) {
                    dvsVar2.d();
                } else {
                    dvsVar3 = dvsVar2;
                }
                dvsVar2 = dvsVar2.k;
            }
        } else {
            dvs dvsVar4 = this.G;
            if (dvsVar4 != null) {
                dvsVar4.d();
            }
            dvsVar = null;
        }
        dvs dvsVar5 = this.I;
        if (!(dvsVar5 == dvsVar && dvsVar5 == this.H)) {
            for (dvy dvyVar : this.v) {
                dvyVar.l();
            }
            this.v = new dvy[0];
            this.t = null;
            this.s = null;
            this.I = null;
        }
        if (dvsVar != null) {
            dvsVar.k = null;
            this.G = dvsVar;
            this.H = dvsVar;
            b(dvsVar);
            char c3 = j;
            if (this.I.j) {
                c3 = this.I.f27270a.b(j);
            }
            a(c3);
            i();
            c2 = c3;
        } else {
            this.G = null;
            this.H = null;
            this.I = null;
            a(j);
            c2 = j;
        }
        this.f27261a.sendEmptyMessage(2);
        return c2;
    }

    private final Pair<Integer, Long> a(dvu dvuVar) {
        dwe dweVar = dvuVar.f27278a;
        dwe dweVar2 = dweVar;
        if (dweVar.c()) {
            dweVar2 = this.J;
        }
        try {
            Pair<Integer, Long> b2 = b(dweVar2, dvuVar.f27279b, dvuVar.f27280c);
            dwe dweVar3 = this.J;
            if (dweVar3 == dweVar2) {
                return b2;
            }
            int a2 = dweVar3.a(dweVar2.a(((Integer) b2.first).intValue(), this.p, true).f27298b);
            if (a2 != -1) {
                return Pair.create(Integer.valueOf(a2), (Long) b2.second);
            }
            int a3 = a(((Integer) b2.first).intValue(), dweVar2, this.J);
            if (a3 == -1) {
                return null;
            }
            this.J.a(a3, this.p, false);
            return h();
        } catch (IndexOutOfBoundsException e) {
            throw new zzhu(this.J, dvuVar.f27279b, dvuVar.f27280c);
        }
    }

    private final void a(int i) {
        if (this.z != i) {
            this.z = i;
            this.m.obtainMessage(1, i, 0).sendToTarget();
        }
    }

    private final void a(long j) throws zzhe {
        dvs dvsVar = this.I;
        long a2 = j + (dvsVar == null ? 60000000L : dvsVar.a());
        this.F = a2;
        this.k.a(a2);
        for (dvy dvyVar : this.v) {
            dvyVar.a(this.F);
        }
    }

    private final void a(long j, long j2) {
        this.f27261a.removeMessages(2);
        long elapsedRealtime = (j + j2) - SystemClock.elapsedRealtime();
        if (elapsedRealtime <= 0) {
            this.f27261a.sendEmptyMessage(2);
        } else {
            this.f27261a.sendEmptyMessageDelayed(2, elapsedRealtime);
        }
    }

    private static void a(dvs dvsVar) {
        while (dvsVar != null) {
            dvsVar.d();
            dvsVar = dvsVar.k;
        }
    }

    private static void a(dvy dvyVar) throws zzhe {
        if (dvyVar.d() == 2) {
            dvyVar.k();
        }
    }

    private final void a(Object obj, int i) {
        this.q = new dvr(0, 0L);
        b(obj, i);
        this.q = new dvr(0, -9223372036854775807L);
        a(4);
        b(false);
    }

    private final void a(boolean z) {
        if (this.y != z) {
            this.y = z;
            this.m.obtainMessage(2, z ? 1 : 0, 0).sendToTarget();
        }
    }

    private final void a(boolean[] zArr, int i) throws zzhe {
        this.v = new dvy[i];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            dvy[] dvyVarArr = this.g;
            if (i2 < dvyVarArr.length) {
                dvy dvyVar = dvyVarArr[i2];
                ebu ebuVar = this.I.l.f27603b.f27600b[i2];
                i3 = i3;
                if (ebuVar != null) {
                    this.v[i3] = dvyVar;
                    if (dvyVar.d() == 0) {
                        dwb dwbVar = this.I.l.f27605d[i2];
                        boolean z = this.w && this.z == 3;
                        boolean z2 = !zArr[i2] && z;
                        int b2 = ebuVar.b();
                        zzht[] zzhtVarArr = new zzht[b2];
                        for (int i4 = 0; i4 < b2; i4++) {
                            zzhtVarArr[i4] = ebuVar.a(i4);
                        }
                        dvyVar.a(dwbVar, zzhtVarArr, this.I.f27273d[i2], this.F, z2, this.I.a());
                        ecv c2 = dvyVar.c();
                        if (c2 != null) {
                            if (this.t == null) {
                                this.t = c2;
                                this.s = dvyVar;
                                c2.a(this.r);
                            } else {
                                throw zzhe.a(new IllegalStateException("Multiple renderer media clocks enabled."));
                            }
                        }
                        if (z) {
                            dvyVar.e();
                        }
                    }
                    i3++;
                }
                i2++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v2 */
    private final Pair<Integer, Long> b(dwe dweVar, int i, long j) {
        ecr.a(i, dweVar.a());
        dweVar.a(i, this.o);
        long j2 = j;
        if (j == -9223372036854775807L) {
            j2 = 0;
        }
        dweVar.a(0, this.p, false);
        return Pair.create(0, Long.valueOf(j2 + 0));
    }

    private final void b(dvs dvsVar) throws zzhe {
        if (this.I != dvsVar) {
            boolean[] zArr = new boolean[this.g.length];
            int i = 0;
            int i2 = 0;
            while (true) {
                dvy[] dvyVarArr = this.g;
                if (i < dvyVarArr.length) {
                    dvy dvyVar = dvyVarArr[i];
                    zArr[i] = dvyVar.d() != 0;
                    ebu ebuVar = dvsVar.l.f27603b.f27600b[i];
                    i2 = i2;
                    if (ebuVar != null) {
                        i2++;
                    }
                    if (zArr[i] && (ebuVar == null || (dvyVar.i() && dvyVar.f() == this.I.f27273d[i]))) {
                        if (dvyVar == this.s) {
                            this.k.a(this.t);
                            this.t = null;
                            this.s = null;
                        }
                        a(dvyVar);
                        dvyVar.l();
                    }
                    i++;
                } else {
                    this.I = dvsVar;
                    this.m.obtainMessage(3, dvsVar.l).sendToTarget();
                    a(zArr, i2);
                    return;
                }
            }
        }
    }

    private final void b(Object obj, int i) {
        this.m.obtainMessage(6, new dvt(this.J, obj, this.q, i)).sendToTarget();
    }

    private final void b(boolean z) {
        dvy[] dvyVarArr;
        this.f27261a.removeMessages(2);
        this.x = false;
        this.k.b();
        this.t = null;
        this.s = null;
        this.F = 60000000L;
        for (dvy dvyVar : this.v) {
            try {
                a(dvyVar);
                dvyVar.l();
            } catch (zzhe | RuntimeException e) {
                Log.e("ExoPlayerImplInternal", "Stop failed.", e);
            }
        }
        this.v = new dvy[0];
        dvs dvsVar = this.I;
        if (dvsVar == null) {
            dvsVar = this.G;
        }
        a(dvsVar);
        this.G = null;
        this.H = null;
        this.I = null;
        a(false);
        if (z) {
            eau eauVar = this.u;
            if (eauVar != null) {
                eauVar.b();
                this.u = null;
            }
            this.J = null;
        }
    }

    private final boolean b(int i) {
        this.J.a(i, this.p, false);
        this.J.a(0, this.o);
        return this.J.a(i, this.p, this.o, this.A) == -1;
    }

    private final boolean b(long j) {
        if (j == -9223372036854775807L || this.q.f27268c < j) {
            return true;
        }
        return this.I.k != null && this.I.k.i;
    }

    private final void c() throws zzhe {
        this.x = false;
        this.k.a();
        for (dvy dvyVar : this.v) {
            dvyVar.e();
        }
    }

    private final void d() throws zzhe {
        this.k.b();
        for (dvy dvyVar : this.v) {
            a(dvyVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r8v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void e() throws com.google.android.gms.internal.ads.zzhe {
        /*
            r6 = this;
            r0 = r6
            com.google.android.gms.internal.ads.dvs r0 = r0.I
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L_0x000a
            return
        L_0x000a:
            r0 = r7
            com.google.android.gms.internal.ads.eas r0 = r0.f27270a
            long r0 = r0.d()
            r8 = r0
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0024
            r0 = r6
            r1 = r8
            r0.a(r1)
            goto L_0x006a
        L_0x0024:
            r0 = r6
            com.google.android.gms.internal.ads.dvy r0 = r0.s
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0050
            r0 = r7
            boolean r0 = r0.u()
            if (r0 != 0) goto L_0x0050
            r0 = r6
            com.google.android.gms.internal.ads.ecv r0 = r0.t
            long r0 = r0.y()
            r8 = r0
            r0 = r6
            r1 = r8
            r0.F = r1
            r0 = r6
            com.google.android.gms.internal.ads.edd r0 = r0.k
            r1 = r8
            r0.a(r1)
            goto L_0x005b
        L_0x0050:
            r0 = r6
            r1 = r6
            com.google.android.gms.internal.ads.edd r1 = r1.k
            long r1 = r1.y()
            r0.F = r1
        L_0x005b:
            r0 = r6
            com.google.android.gms.internal.ads.dvs r0 = r0.I
            r7 = r0
            r0 = r6
            long r0 = r0.F
            r1 = r7
            long r1 = r1.a()
            long r0 = r0 - r1
            r8 = r0
        L_0x006a:
            r0 = r6
            com.google.android.gms.internal.ads.dvr r0 = r0.q
            r1 = r8
            r0.f27268c = r1
            r0 = r6
            long r1 = android.os.SystemClock.elapsedRealtime()
            r2 = 1000(0x3e8, double:4.94E-321)
            long r1 = r1 * r2
            r0.C = r1
            r0 = r6
            com.google.android.gms.internal.ads.dvy[] r0 = r0.v
            int r0 = r0.length
            if (r0 != 0) goto L_0x008c
            r0 = -9223372036854775808
            r8 = r0
            goto L_0x0099
        L_0x008c:
            r0 = r6
            com.google.android.gms.internal.ads.dvs r0 = r0.I
            com.google.android.gms.internal.ads.eas r0 = r0.f27270a
            long r0 = r0.e()
            r8 = r0
        L_0x0099:
            r0 = r6
            com.google.android.gms.internal.ads.dvr r0 = r0.q
            r7 = r0
            r0 = r8
            r10 = r0
            r0 = r8
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00c1
            r0 = r6
            com.google.android.gms.internal.ads.dwe r0 = r0.J
            r1 = r6
            com.google.android.gms.internal.ads.dvs r1 = r1.I
            int r1 = r1.f
            r2 = r6
            com.google.android.gms.internal.ads.dwg r2 = r2.p
            r3 = 0
            com.google.android.gms.internal.ads.dwg r0 = r0.a(r1, r2, r3)
            long r0 = r0.f27300d
            r10 = r0
        L_0x00c1:
            r0 = r7
            r1 = r10
            r0.f27269d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dvp.e():void");
    }

    private final void f() {
        b(true);
        this.j.b();
        a(1);
    }

    private final void g() throws IOException {
        dvs dvsVar = this.G;
        if (!(dvsVar == null || dvsVar.i)) {
            dvs dvsVar2 = this.H;
            if (dvsVar2 == null || dvsVar2.k == this.G) {
                for (dvy dvyVar : this.v) {
                    if (!dvyVar.g()) {
                        return;
                    }
                }
                this.G.f27270a.b();
            }
        }
    }

    private final Pair<Integer, Long> h() {
        return b(this.J, 0, -9223372036854775807L);
    }

    private final void i() {
        long K_ = !this.G.i ? 0L : this.G.f27270a.K_();
        if (K_ == Long.MIN_VALUE) {
            a(false);
            return;
        }
        long a2 = this.F - this.G.a();
        boolean a3 = this.j.a(K_ - a2);
        a(a3);
        if (a3) {
            this.G.f27270a.a(a2);
        }
    }

    public final void a() {
        synchronized (this) {
            if (!this.f27262b) {
                this.f27261a.sendEmptyMessage(6);
                while (!this.f27262b) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                    }
                }
                this.l.quit();
            }
        }
    }

    public final void a(dwe dweVar, int i, long j) {
        this.f27261a.obtainMessage(3, new dvu(dweVar, i, j)).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.eat
    public final void a(dwe dweVar, Object obj) {
        this.f27261a.obtainMessage(7, Pair.create(dweVar, obj)).sendToTarget();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.internal.ads.ear
    public final void a(eas easVar) {
        this.f27261a.obtainMessage(8, easVar).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.ebe
    public final /* synthetic */ void a(eas easVar) {
        this.f27261a.obtainMessage(9, easVar).sendToTarget();
    }

    public final void a(dvm... dvmVarArr) {
        synchronized (this) {
            if (this.f27262b) {
                Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
                return;
            }
            int i = this.f27263c;
            this.f27263c = i + 1;
            this.f27261a.obtainMessage(11, dvmVarArr).sendToTarget();
            while (this.B <= i) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eby
    public final void b() {
        this.f27261a.sendEmptyMessage(10);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:202:0x050f A[Catch: IOException -> 0x1086, zzhe -> 0x108a, RuntimeException -> 0x108e, TRY_ENTER, TryCatch #6 {RuntimeException -> 0x108e, blocks: (B:2:0x0000, B:6:0x004e, B:8:0x0066, B:11:0x006f, B:16:0x0080, B:21:0x008f, B:26:0x00b3, B:28:0x00bf, B:34:0x00dc, B:39:0x00f9, B:41:0x0100, B:43:0x010d, B:45:0x011c, B:48:0x0126, B:50:0x012f, B:52:0x0151, B:56:0x015d, B:58:0x0164, B:70:0x01a7, B:79:0x01be, B:82:0x01c1, B:87:0x01d3, B:92:0x01d8, B:94:0x01da, B:99:0x01e8, B:102:0x01f2, B:105:0x01fa, B:109:0x0203, B:112:0x020f, B:117:0x022b, B:119:0x0273, B:121:0x0281, B:123:0x028e, B:127:0x02a3, B:133:0x02bd, B:139:0x02de, B:141:0x02ea, B:145:0x02f8, B:147:0x0304, B:149:0x030f, B:152:0x0324, B:153:0x032f, B:155:0x0338, B:156:0x0351, B:159:0x035f, B:160:0x036b, B:162:0x037d, B:164:0x03a2, B:166:0x03b4, B:168:0x03c7, B:171:0x03d3, B:173:0x03d9, B:175:0x03ec, B:178:0x03f8, B:180:0x041a, B:182:0x0435, B:184:0x043a, B:186:0x045e, B:188:0x0465, B:190:0x0484, B:191:0x048f, B:192:0x04b5, B:194:0x04c3, B:196:0x04cd, B:197:0x04d7, B:200:0x0503, B:202:0x050f, B:205:0x0518, B:208:0x052b, B:211:0x053f, B:212:0x054a, B:214:0x0595, B:216:0x059b, B:220:0x05b4, B:221:0x05bc, B:222:0x05d7, B:228:0x05fc, B:230:0x0608, B:232:0x0643, B:234:0x064b, B:237:0x066e, B:239:0x0689, B:246:0x06b5, B:247:0x06dc, B:249:0x06ed, B:251:0x06f6, B:252:0x070a, B:261:0x071c, B:264:0x0725, B:266:0x072b, B:268:0x073e, B:269:0x074a, B:271:0x0754, B:273:0x0767, B:275:0x0776, B:277:0x0788, B:279:0x0794, B:280:0x07cf, B:285:0x07e1, B:292:0x0822, B:296:0x0843, B:302:0x086b, B:307:0x0890, B:310:0x08a3, B:314:0x08c6, B:315:0x08d4, B:316:0x08d5, B:316:0x08d5, B:317:0x08d8, B:319:0x08e1, B:320:0x08ed, B:322:0x08f6, B:323:0x0901, B:325:0x0910, B:327:0x091a, B:330:0x0934, B:332:0x093b, B:335:0x0950, B:337:0x0965, B:339:0x096f, B:340:0x097b, B:342:0x0982, B:343:0x098d, B:345:0x09af, B:347:0x09f4, B:349:0x0a0b, B:352:0x0a1d, B:353:0x0a3d, B:356:0x0a4c, B:358:0x0a55, B:360:0x0a9f, B:362:0x0aa6, B:364:0x0abb, B:366:0x0ac3, B:369:0x0acd, B:371:0x0ad4, B:373:0x0adb, B:374:0x0ae2, B:376:0x0ae8, B:379:0x0aef, B:381:0x0afb, B:383:0x0b0a, B:384:0x0b4d, B:388:0x0b59, B:392:0x0b69, B:394:0x0b77, B:396:0x0b82, B:398:0x0b8c, B:399:0x0b93, B:401:0x0b9b, B:405:0x0bab, B:409:0x0bc4, B:413:0x0bd7, B:415:0x0be1, B:417:0x0bee, B:423:0x0c29, B:427:0x0c3e, B:431:0x0c4f, B:433:0x0c59, B:435:0x0c7e, B:437:0x0c88, B:441:0x0ca2, B:442:0x0cb6, B:443:0x0cd3, B:444:0x0cda, B:445:0x0ce0, B:447:0x0ce7, B:449:0x0cf7, B:454:0x0d29, B:456:0x0d3b, B:461:0x0d4b, B:463:0x0d54, B:470:0x0d6e, B:480:0x0d92, B:482:0x0d97, B:484:0x0d9f, B:486:0x0db1, B:488:0x0dcf, B:492:0x0df1, B:495:0x0dfe, B:497:0x0e07, B:498:0x0e13, B:501:0x0e1d, B:505:0x0e2a, B:507:0x0e3a, B:508:0x0e45, B:512:0x0e5d, B:516:0x0e6d, B:518:0x0e86, B:520:0x0e8c, B:521:0x0eb8, B:526:0x0eeb, B:529:0x0ef7, B:531:0x0f03, B:534:0x0f0f, B:537:0x0f1a, B:540:0x0f26, B:542:0x0f38, B:544:0x0f3f, B:548:0x0f50, B:549:0x0f5e, B:551:0x0f65, B:554:0x0f6e, B:557:0x0f76, B:559:0x0f7c, B:561:0x0f89, B:562:0x0f93, B:564:0x0f9b, B:566:0x0fa2, B:568:0x0faf, B:569:0x0fb9, B:570:0x0fc1, B:570:0x0fc1, B:573:0x0fc9, B:578:0x0fd9, B:580:0x0fe9, B:582:0x0ff4, B:585:0x0ffe, B:588:0x1013, B:590:0x1021, B:595:0x1038, B:597:0x1053, B:599:0x1065), top: B:618:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0518 A[Catch: IOException -> 0x1086, zzhe -> 0x108a, RuntimeException -> 0x108e, TRY_ENTER, TRY_LEAVE, TryCatch #6 {RuntimeException -> 0x108e, blocks: (B:2:0x0000, B:6:0x004e, B:8:0x0066, B:11:0x006f, B:16:0x0080, B:21:0x008f, B:26:0x00b3, B:28:0x00bf, B:34:0x00dc, B:39:0x00f9, B:41:0x0100, B:43:0x010d, B:45:0x011c, B:48:0x0126, B:50:0x012f, B:52:0x0151, B:56:0x015d, B:58:0x0164, B:70:0x01a7, B:79:0x01be, B:82:0x01c1, B:87:0x01d3, B:92:0x01d8, B:94:0x01da, B:99:0x01e8, B:102:0x01f2, B:105:0x01fa, B:109:0x0203, B:112:0x020f, B:117:0x022b, B:119:0x0273, B:121:0x0281, B:123:0x028e, B:127:0x02a3, B:133:0x02bd, B:139:0x02de, B:141:0x02ea, B:145:0x02f8, B:147:0x0304, B:149:0x030f, B:152:0x0324, B:153:0x032f, B:155:0x0338, B:156:0x0351, B:159:0x035f, B:160:0x036b, B:162:0x037d, B:164:0x03a2, B:166:0x03b4, B:168:0x03c7, B:171:0x03d3, B:173:0x03d9, B:175:0x03ec, B:178:0x03f8, B:180:0x041a, B:182:0x0435, B:184:0x043a, B:186:0x045e, B:188:0x0465, B:190:0x0484, B:191:0x048f, B:192:0x04b5, B:194:0x04c3, B:196:0x04cd, B:197:0x04d7, B:200:0x0503, B:202:0x050f, B:205:0x0518, B:208:0x052b, B:211:0x053f, B:212:0x054a, B:214:0x0595, B:216:0x059b, B:220:0x05b4, B:221:0x05bc, B:222:0x05d7, B:228:0x05fc, B:230:0x0608, B:232:0x0643, B:234:0x064b, B:237:0x066e, B:239:0x0689, B:246:0x06b5, B:247:0x06dc, B:249:0x06ed, B:251:0x06f6, B:252:0x070a, B:261:0x071c, B:264:0x0725, B:266:0x072b, B:268:0x073e, B:269:0x074a, B:271:0x0754, B:273:0x0767, B:275:0x0776, B:277:0x0788, B:279:0x0794, B:280:0x07cf, B:285:0x07e1, B:292:0x0822, B:296:0x0843, B:302:0x086b, B:307:0x0890, B:310:0x08a3, B:314:0x08c6, B:315:0x08d4, B:316:0x08d5, B:316:0x08d5, B:317:0x08d8, B:319:0x08e1, B:320:0x08ed, B:322:0x08f6, B:323:0x0901, B:325:0x0910, B:327:0x091a, B:330:0x0934, B:332:0x093b, B:335:0x0950, B:337:0x0965, B:339:0x096f, B:340:0x097b, B:342:0x0982, B:343:0x098d, B:345:0x09af, B:347:0x09f4, B:349:0x0a0b, B:352:0x0a1d, B:353:0x0a3d, B:356:0x0a4c, B:358:0x0a55, B:360:0x0a9f, B:362:0x0aa6, B:364:0x0abb, B:366:0x0ac3, B:369:0x0acd, B:371:0x0ad4, B:373:0x0adb, B:374:0x0ae2, B:376:0x0ae8, B:379:0x0aef, B:381:0x0afb, B:383:0x0b0a, B:384:0x0b4d, B:388:0x0b59, B:392:0x0b69, B:394:0x0b77, B:396:0x0b82, B:398:0x0b8c, B:399:0x0b93, B:401:0x0b9b, B:405:0x0bab, B:409:0x0bc4, B:413:0x0bd7, B:415:0x0be1, B:417:0x0bee, B:423:0x0c29, B:427:0x0c3e, B:431:0x0c4f, B:433:0x0c59, B:435:0x0c7e, B:437:0x0c88, B:441:0x0ca2, B:442:0x0cb6, B:443:0x0cd3, B:444:0x0cda, B:445:0x0ce0, B:447:0x0ce7, B:449:0x0cf7, B:454:0x0d29, B:456:0x0d3b, B:461:0x0d4b, B:463:0x0d54, B:470:0x0d6e, B:480:0x0d92, B:482:0x0d97, B:484:0x0d9f, B:486:0x0db1, B:488:0x0dcf, B:492:0x0df1, B:495:0x0dfe, B:497:0x0e07, B:498:0x0e13, B:501:0x0e1d, B:505:0x0e2a, B:507:0x0e3a, B:508:0x0e45, B:512:0x0e5d, B:516:0x0e6d, B:518:0x0e86, B:520:0x0e8c, B:521:0x0eb8, B:526:0x0eeb, B:529:0x0ef7, B:531:0x0f03, B:534:0x0f0f, B:537:0x0f1a, B:540:0x0f26, B:542:0x0f38, B:544:0x0f3f, B:548:0x0f50, B:549:0x0f5e, B:551:0x0f65, B:554:0x0f6e, B:557:0x0f76, B:559:0x0f7c, B:561:0x0f89, B:562:0x0f93, B:564:0x0f9b, B:566:0x0fa2, B:568:0x0faf, B:569:0x0fb9, B:570:0x0fc1, B:570:0x0fc1, B:573:0x0fc9, B:578:0x0fd9, B:580:0x0fe9, B:582:0x0ff4, B:585:0x0ffe, B:588:0x1013, B:590:0x1021, B:595:0x1038, B:597:0x1053, B:599:0x1065), top: B:618:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0aee A[LOOP:7: B:378:0x0aee->B:383:0x0b0a, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:470:0x0d6e A[Catch: IOException -> 0x1086, zzhe -> 0x108a, RuntimeException -> 0x108e, TRY_ENTER, TryCatch #6 {RuntimeException -> 0x108e, blocks: (B:2:0x0000, B:6:0x004e, B:8:0x0066, B:11:0x006f, B:16:0x0080, B:21:0x008f, B:26:0x00b3, B:28:0x00bf, B:34:0x00dc, B:39:0x00f9, B:41:0x0100, B:43:0x010d, B:45:0x011c, B:48:0x0126, B:50:0x012f, B:52:0x0151, B:56:0x015d, B:58:0x0164, B:70:0x01a7, B:79:0x01be, B:82:0x01c1, B:87:0x01d3, B:92:0x01d8, B:94:0x01da, B:99:0x01e8, B:102:0x01f2, B:105:0x01fa, B:109:0x0203, B:112:0x020f, B:117:0x022b, B:119:0x0273, B:121:0x0281, B:123:0x028e, B:127:0x02a3, B:133:0x02bd, B:139:0x02de, B:141:0x02ea, B:145:0x02f8, B:147:0x0304, B:149:0x030f, B:152:0x0324, B:153:0x032f, B:155:0x0338, B:156:0x0351, B:159:0x035f, B:160:0x036b, B:162:0x037d, B:164:0x03a2, B:166:0x03b4, B:168:0x03c7, B:171:0x03d3, B:173:0x03d9, B:175:0x03ec, B:178:0x03f8, B:180:0x041a, B:182:0x0435, B:184:0x043a, B:186:0x045e, B:188:0x0465, B:190:0x0484, B:191:0x048f, B:192:0x04b5, B:194:0x04c3, B:196:0x04cd, B:197:0x04d7, B:200:0x0503, B:202:0x050f, B:205:0x0518, B:208:0x052b, B:211:0x053f, B:212:0x054a, B:214:0x0595, B:216:0x059b, B:220:0x05b4, B:221:0x05bc, B:222:0x05d7, B:228:0x05fc, B:230:0x0608, B:232:0x0643, B:234:0x064b, B:237:0x066e, B:239:0x0689, B:246:0x06b5, B:247:0x06dc, B:249:0x06ed, B:251:0x06f6, B:252:0x070a, B:261:0x071c, B:264:0x0725, B:266:0x072b, B:268:0x073e, B:269:0x074a, B:271:0x0754, B:273:0x0767, B:275:0x0776, B:277:0x0788, B:279:0x0794, B:280:0x07cf, B:285:0x07e1, B:292:0x0822, B:296:0x0843, B:302:0x086b, B:307:0x0890, B:310:0x08a3, B:314:0x08c6, B:315:0x08d4, B:316:0x08d5, B:316:0x08d5, B:317:0x08d8, B:319:0x08e1, B:320:0x08ed, B:322:0x08f6, B:323:0x0901, B:325:0x0910, B:327:0x091a, B:330:0x0934, B:332:0x093b, B:335:0x0950, B:337:0x0965, B:339:0x096f, B:340:0x097b, B:342:0x0982, B:343:0x098d, B:345:0x09af, B:347:0x09f4, B:349:0x0a0b, B:352:0x0a1d, B:353:0x0a3d, B:356:0x0a4c, B:358:0x0a55, B:360:0x0a9f, B:362:0x0aa6, B:364:0x0abb, B:366:0x0ac3, B:369:0x0acd, B:371:0x0ad4, B:373:0x0adb, B:374:0x0ae2, B:376:0x0ae8, B:379:0x0aef, B:381:0x0afb, B:383:0x0b0a, B:384:0x0b4d, B:388:0x0b59, B:392:0x0b69, B:394:0x0b77, B:396:0x0b82, B:398:0x0b8c, B:399:0x0b93, B:401:0x0b9b, B:405:0x0bab, B:409:0x0bc4, B:413:0x0bd7, B:415:0x0be1, B:417:0x0bee, B:423:0x0c29, B:427:0x0c3e, B:431:0x0c4f, B:433:0x0c59, B:435:0x0c7e, B:437:0x0c88, B:441:0x0ca2, B:442:0x0cb6, B:443:0x0cd3, B:444:0x0cda, B:445:0x0ce0, B:447:0x0ce7, B:449:0x0cf7, B:454:0x0d29, B:456:0x0d3b, B:461:0x0d4b, B:463:0x0d54, B:470:0x0d6e, B:480:0x0d92, B:482:0x0d97, B:484:0x0d9f, B:486:0x0db1, B:488:0x0dcf, B:492:0x0df1, B:495:0x0dfe, B:497:0x0e07, B:498:0x0e13, B:501:0x0e1d, B:505:0x0e2a, B:507:0x0e3a, B:508:0x0e45, B:512:0x0e5d, B:516:0x0e6d, B:518:0x0e86, B:520:0x0e8c, B:521:0x0eb8, B:526:0x0eeb, B:529:0x0ef7, B:531:0x0f03, B:534:0x0f0f, B:537:0x0f1a, B:540:0x0f26, B:542:0x0f38, B:544:0x0f3f, B:548:0x0f50, B:549:0x0f5e, B:551:0x0f65, B:554:0x0f6e, B:557:0x0f76, B:559:0x0f7c, B:561:0x0f89, B:562:0x0f93, B:564:0x0f9b, B:566:0x0fa2, B:568:0x0faf, B:569:0x0fb9, B:570:0x0fc1, B:570:0x0fc1, B:573:0x0fc9, B:578:0x0fd9, B:580:0x0fe9, B:582:0x0ff4, B:585:0x0ffe, B:588:0x1013, B:590:0x1021, B:595:0x1038, B:597:0x1053, B:599:0x1065), top: B:618:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:524:0x0edf  */
    /* JADX WARN: Type inference failed for: r18v17 */
    /* JADX WARN: Type inference failed for: r18v18 */
    /* JADX WARN: Type inference failed for: r18v9, types: [long] */
    /* JADX WARN: Type inference failed for: r31v0 */
    /* JADX WARN: Type inference failed for: r31v1, types: [long] */
    /* JADX WARN: Type inference failed for: r31v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r16) {
        /*
            Method dump skipped, instructions count: 4337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dvp.handleMessage(android.os.Message):boolean");
    }
}
