package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dvp.class */
public final class dvp implements Handler.Callback, ear, eat, eby {

    /* renamed from: B */
    private int f47690B;

    /* renamed from: C */
    private long f47691C;

    /* renamed from: D */
    private int f47692D;

    /* renamed from: E */
    private dvu f47693E;

    /* renamed from: F */
    private long f47694F;

    /* renamed from: G */
    private dvs f47695G;

    /* renamed from: H */
    private dvs f47696H;

    /* renamed from: I */
    private dvs f47697I;

    /* renamed from: J */
    private dwe f47698J;

    /* renamed from: a */
    final Handler f47699a;

    /* renamed from: b */
    boolean f47700b;

    /* renamed from: c */
    int f47701c;

    /* renamed from: d */
    boolean f47702d;

    /* renamed from: e */
    volatile int f47703e;

    /* renamed from: f */
    volatile int f47704f;

    /* renamed from: g */
    private final dvy[] f47705g;

    /* renamed from: h */
    private final dwc[] f47706h;

    /* renamed from: i */
    private final ebv f47707i;

    /* renamed from: j */
    private final dvx f47708j;

    /* renamed from: k */
    private final edd f47709k;

    /* renamed from: l */
    private final HandlerThread f47710l;

    /* renamed from: m */
    private final Handler f47711m;

    /* renamed from: n */
    private final dvl f47712n;

    /* renamed from: o */
    private final dwf f47713o;

    /* renamed from: p */
    private final dwg f47714p;

    /* renamed from: q */
    private dvr f47715q;

    /* renamed from: r */
    private dvz f47716r;

    /* renamed from: s */
    private dvy f47717s;

    /* renamed from: t */
    private ecv f47718t;

    /* renamed from: u */
    private eau f47719u;

    /* renamed from: v */
    private dvy[] f47720v;

    /* renamed from: w */
    private boolean f47721w;

    /* renamed from: x */
    private boolean f47722x;

    /* renamed from: y */
    private boolean f47723y;

    /* renamed from: A */
    private int f47689A = 0;

    /* renamed from: z */
    private int f47724z = 1;

    public dvp(dvy[] dvyVarArr, ebv ebvVar, dvx dvxVar, boolean z, int i, Handler handler, dvr dvrVar, dvl dvlVar) {
        this.f47705g = dvyVarArr;
        this.f47707i = ebvVar;
        this.f47708j = dvxVar;
        this.f47721w = z;
        this.f47711m = handler;
        this.f47715q = dvrVar;
        this.f47712n = dvlVar;
        this.f47706h = new dwc[dvyVarArr.length];
        for (int i2 = 0; i2 < dvyVarArr.length; i2++) {
            dvyVarArr[i2].mo15593a(i2);
            this.f47706h[i2] = dvyVarArr[i2].mo15589b();
        }
        this.f47709k = new edd();
        this.f47720v = new dvy[0];
        this.f47713o = new dwf();
        this.f47714p = new dwg();
        ebvVar.f48640a = this;
        this.f47716r = dvz.f47757a;
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.f47710l = handlerThread;
        handlerThread.start();
        this.f47699a = new Handler(handlerThread.getLooper(), this);
    }

    /* renamed from: a */
    private final int m15631a(int i, dwe dweVar, dwe dweVar2) {
        int mo15309b = dweVar.mo15309b();
        int i2 = -1;
        for (int i3 = 0; i3 < mo15309b && i2 == -1; i3++) {
            i = dweVar.m15575a(i, this.f47714p, this.f47713o, this.f47689A);
            i2 = dweVar2.mo15310a(dweVar.mo15311a(i, this.f47714p, true).f47781b);
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* renamed from: a */
    private final long m15632a(int i, long j) throws zzhe {
        dvs dvsVar;
        char c;
        m15613d();
        this.f47722x = false;
        m15633a(2);
        dvs dvsVar2 = this.f47697I;
        if (dvsVar2 != null) {
            dvs dvsVar3 = null;
            while (true) {
                dvsVar = dvsVar3;
                if (dvsVar2 == null) {
                    break;
                }
                if (dvsVar2.f47735f != i || !dvsVar2.f47738i) {
                    dvsVar2.m15601d();
                } else {
                    dvsVar3 = dvsVar2;
                }
                dvsVar2 = dvsVar2.f47740k;
            }
        } else {
            dvs dvsVar4 = this.f47695G;
            if (dvsVar4 != null) {
                dvsVar4.m15601d();
            }
            dvsVar = null;
        }
        dvs dvsVar5 = this.f47697I;
        if (dvsVar5 != dvsVar || dvsVar5 != this.f47696H) {
            for (dvy dvyVar : this.f47720v) {
                dvyVar.mo15580l();
            }
            this.f47720v = new dvy[0];
            this.f47718t = null;
            this.f47717s = null;
            this.f47697I = null;
        }
        if (dvsVar != null) {
            dvsVar.f47740k = null;
            this.f47695G = dvsVar;
            this.f47696H = dvsVar;
            m15618b(dvsVar);
            char c2 = j;
            if (this.f47697I.f47739j) {
                c2 = this.f47697I.f47730a.mo15354b(j);
            }
            m15630a((long) c2);
            m15608i();
            c = c2;
        } else {
            this.f47695G = null;
            this.f47696H = null;
            this.f47697I = null;
            m15630a(j);
            c = j;
        }
        this.f47699a.sendEmptyMessage(2);
        return c;
    }

    /* renamed from: a */
    private final Pair<Integer, Long> m15627a(dvu dvuVar) {
        dwe dweVar = dvuVar.f47753a;
        dwe dweVar2 = dweVar;
        if (dweVar.m15574c()) {
            dweVar2 = this.f47698J;
        }
        try {
            Pair<Integer, Long> m15617b = m15617b(dweVar2, dvuVar.f47754b, dvuVar.f47755c);
            dwe dweVar3 = this.f47698J;
            if (dweVar3 == dweVar2) {
                return m15617b;
            }
            int mo15310a = dweVar3.mo15310a(dweVar2.mo15311a(((Integer) m15617b.first).intValue(), this.f47714p, true).f47781b);
            if (mo15310a != -1) {
                return Pair.create(Integer.valueOf(mo15310a), (Long) m15617b.second);
            }
            int m15631a = m15631a(((Integer) m15617b.first).intValue(), dweVar2, this.f47698J);
            if (m15631a == -1) {
                return null;
            }
            this.f47698J.mo15311a(m15631a, this.f47714p, false);
            return m15609h();
        } catch (IndexOutOfBoundsException e) {
            throw new zzhu(this.f47698J, dvuVar.f47754b, dvuVar.f47755c);
        }
    }

    /* renamed from: a */
    private final void m15633a(int i) {
        if (this.f47724z != i) {
            this.f47724z = i;
            this.f47711m.obtainMessage(1, i, 0).sendToTarget();
        }
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* renamed from: a */
    private final void m15630a(long j) throws zzhe {
        dvs dvsVar = this.f47697I;
        long m15607a = j + (dvsVar == null ? (char) 34560 : dvsVar.m15607a());
        this.f47694F = m15607a;
        this.f47709k.m15206a(m15607a);
        for (dvy dvyVar : this.f47720v) {
            dvyVar.mo15592a(this.f47694F);
        }
    }

    /* renamed from: a */
    private final void m15629a(long j, long j2) {
        this.f47699a.removeMessages(2);
        long elapsedRealtime = (j + j2) - SystemClock.elapsedRealtime();
        if (elapsedRealtime <= 0) {
            this.f47699a.sendEmptyMessage(2);
        } else {
            this.f47699a.sendEmptyMessageDelayed(2, elapsedRealtime);
        }
    }

    /* renamed from: a */
    private static void m15628a(dvs dvsVar) {
        while (dvsVar != null) {
            dvsVar.m15601d();
            dvsVar = dvsVar.f47740k;
        }
    }

    /* renamed from: a */
    private static void m15626a(dvy dvyVar) throws zzhe {
        if (dvyVar.mo15588d() == 2) {
            dvyVar.mo15581k();
        }
    }

    /* renamed from: a */
    private final void m15624a(Object obj, int i) {
        this.f47715q = new dvr(0, 0L);
        m15616b(obj, i);
        this.f47715q = new dvr(0, -9223372036854775807L);
        m15633a(4);
        m15615b(false);
    }

    /* renamed from: a */
    private final void m15623a(boolean z) {
        if (this.f47723y != z) {
            this.f47723y = z;
            this.f47711m.obtainMessage(2, z ? 1 : 0, 0).sendToTarget();
        }
    }

    /* renamed from: a */
    private final void m15621a(boolean[] zArr, int i) throws zzhe {
        this.f47720v = new dvy[i];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            dvy[] dvyVarArr = this.f47705g;
            if (i2 < dvyVarArr.length) {
                dvy dvyVar = dvyVarArr[i2];
                ebu ebuVar = this.f47697I.f47741l.f48645b.f48642b[i2];
                int i5 = i4;
                if (ebuVar != null) {
                    this.f47720v[i4] = dvyVar;
                    if (dvyVar.mo15588d() == 0) {
                        dwb dwbVar = this.f47697I.f47741l.f48647d[i2];
                        boolean z = this.f47721w && this.f47724z == 3;
                        boolean z2 = !zArr[i2] && z;
                        int mo15300b = ebuVar.mo15300b();
                        zzht[] zzhtVarArr = new zzht[mo15300b];
                        for (int i6 = 0; i6 < mo15300b; i6++) {
                            zzhtVarArr[i6] = ebuVar.mo15301a(i6);
                        }
                        dvyVar.mo15591a(dwbVar, zzhtVarArr, this.f47697I.f47733d[i2], this.f47694F, z2, this.f47697I.m15607a());
                        ecv mo15539c = dvyVar.mo15539c();
                        if (mo15539c != null) {
                            if (this.f47718t != null) {
                                throw zzhe.m13624a(new IllegalStateException("Multiple renderer media clocks enabled."));
                            }
                            this.f47718t = mo15539c;
                            this.f47717s = dvyVar;
                            mo15539c.mo15205a(this.f47716r);
                        }
                        if (z) {
                            dvyVar.mo15587e();
                        }
                    }
                    i5 = i4 + 1;
                }
                i2++;
                i3 = i5;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private final Pair<Integer, Long> m15617b(dwe dweVar, int i, long j) {
        ecr.m15252a(i, dweVar.mo15313a());
        dweVar.mo15312a(i, this.f47713o);
        char c = j;
        if (j == -9223372036854775807L) {
            c = 0;
        }
        dweVar.mo15311a(0, this.f47714p, false);
        return Pair.create(0, Long.valueOf(c + 0));
    }

    /* renamed from: b */
    private final void m15618b(dvs dvsVar) throws zzhe {
        if (this.f47697I == dvsVar) {
            return;
        }
        boolean[] zArr = new boolean[this.f47705g.length];
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            dvy[] dvyVarArr = this.f47705g;
            if (i >= dvyVarArr.length) {
                this.f47697I = dvsVar;
                this.f47711m.obtainMessage(3, dvsVar.f47741l).sendToTarget();
                m15621a(zArr, i3);
                return;
            }
            dvy dvyVar = dvyVarArr[i];
            zArr[i] = dvyVar.mo15588d() != 0;
            ebu ebuVar = dvsVar.f47741l.f48645b.f48642b[i];
            int i4 = i3;
            if (ebuVar != null) {
                i4 = i3 + 1;
            }
            if (zArr[i] && (ebuVar == null || (dvyVar.mo15583i() && dvyVar.mo15586f() == this.f47697I.f47733d[i]))) {
                if (dvyVar == this.f47717s) {
                    this.f47709k.m15204a(this.f47718t);
                    this.f47718t = null;
                    this.f47717s = null;
                }
                m15626a(dvyVar);
                dvyVar.mo15580l();
            }
            i++;
            i2 = i4;
        }
    }

    /* renamed from: b */
    private final void m15616b(Object obj, int i) {
        this.f47711m.obtainMessage(6, new dvt(this.f47698J, obj, this.f47715q, i)).sendToTarget();
    }

    /* renamed from: b */
    private final void m15615b(boolean z) {
        dvy[] dvyVarArr;
        this.f47699a.removeMessages(2);
        this.f47722x = false;
        this.f47709k.m15203b();
        this.f47718t = null;
        this.f47717s = null;
        this.f47694F = 60000000L;
        for (dvy dvyVar : this.f47720v) {
            try {
                m15626a(dvyVar);
                dvyVar.mo15580l();
            } catch (zzhe | RuntimeException e) {
                Log.e("ExoPlayerImplInternal", "Stop failed.", e);
            }
        }
        this.f47720v = new dvy[0];
        dvs dvsVar = this.f47697I;
        if (dvsVar == null) {
            dvsVar = this.f47695G;
        }
        m15628a(dvsVar);
        this.f47695G = null;
        this.f47696H = null;
        this.f47697I = null;
        m15623a(false);
        if (z) {
            eau eauVar = this.f47719u;
            if (eauVar != null) {
                eauVar.mo15359b();
                this.f47719u = null;
            }
            this.f47698J = null;
        }
    }

    /* renamed from: b */
    private final boolean m15620b(int i) {
        this.f47698J.mo15311a(i, this.f47714p, false);
        this.f47698J.mo15312a(0, this.f47713o);
        return this.f47698J.m15575a(i, this.f47714p, this.f47713o, this.f47689A) == -1;
    }

    /* renamed from: b */
    private final boolean m15619b(long j) {
        if (j == -9223372036854775807L || this.f47715q.f47728c < j) {
            return true;
        }
        return this.f47697I.f47740k != null && this.f47697I.f47740k.f47738i;
    }

    /* renamed from: c */
    private final void m15614c() throws zzhe {
        this.f47722x = false;
        this.f47709k.m15207a();
        for (dvy dvyVar : this.f47720v) {
            dvyVar.mo15587e();
        }
    }

    /* renamed from: d */
    private final void m15613d() throws zzhe {
        this.f47709k.m15203b();
        for (dvy dvyVar : this.f47720v) {
            m15626a(dvyVar);
        }
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: e */
    private final void m15612e() throws zzhe {
        dvs dvsVar = this.f47697I;
        if (dvsVar == null) {
            return;
        }
        char mo15352d = dvsVar.f47730a.mo15352d();
        if (mo15352d != -9223372036854775807L) {
            m15630a((long) mo15352d);
        } else {
            dvy dvyVar = this.f47717s;
            if (dvyVar == null || dvyVar.mo15397u()) {
                this.f47694F = this.f47709k.mo15202y();
            } else {
                long mo15202y = this.f47718t.mo15202y();
                this.f47694F = mo15202y;
                this.f47709k.m15206a(mo15202y);
            }
            mo15352d = this.f47694F - this.f47697I.m15607a();
        }
        this.f47715q.f47728c = mo15352d;
        this.f47691C = SystemClock.elapsedRealtime() * 1000;
        char mo15351e = this.f47720v.length == 0 ? (char) 0 : this.f47697I.f47730a.mo15351e();
        dvr dvrVar = this.f47715q;
        char c = mo15351e;
        if (mo15351e == Long.MIN_VALUE) {
            c = this.f47698J.mo15311a(this.f47697I.f47735f, this.f47714p, false).f47783d;
        }
        dvrVar.f47729d = c;
    }

    /* renamed from: f */
    private final void m15611f() {
        m15615b(true);
        this.f47708j.mo15596b();
        m15633a(1);
    }

    /* renamed from: g */
    private final void m15610g() throws IOException {
        dvs dvsVar = this.f47695G;
        if (dvsVar == null || dvsVar.f47738i) {
            return;
        }
        dvs dvsVar2 = this.f47696H;
        if (dvsVar2 != null && dvsVar2.f47740k != this.f47695G) {
            return;
        }
        for (dvy dvyVar : this.f47720v) {
            if (!dvyVar.mo15585g()) {
                return;
            }
        }
        this.f47695G.f47730a.mo15355b();
    }

    /* renamed from: h */
    private final Pair<Integer, Long> m15609h() {
        return m15617b(this.f47698J, 0, -9223372036854775807L);
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* renamed from: i */
    private final void m15608i() {
        char mo15316K_ = !this.f47695G.f47738i ? (char) 0 : this.f47695G.f47730a.mo15316K_();
        if (mo15316K_ == Long.MIN_VALUE) {
            m15623a(false);
            return;
        }
        long m15607a = this.f47694F - this.f47695G.m15607a();
        boolean mo15599a = this.f47708j.mo15599a(mo15316K_ - m15607a);
        m15623a(mo15599a);
        if (!mo15599a) {
            return;
        }
        this.f47695G.f47730a.mo15315a(m15607a);
    }

    /* renamed from: a */
    public final void m15634a() {
        synchronized (this) {
            if (this.f47700b) {
                return;
            }
            this.f47699a.sendEmptyMessage(6);
            while (!this.f47700b) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
            this.f47710l.quit();
        }
    }

    /* renamed from: a */
    public final void m15625a(dwe dweVar, int i, long j) {
        this.f47699a.obtainMessage(3, new dvu(dweVar, i, j)).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.eat
    /* renamed from: a */
    public final void mo15350a(dwe dweVar, Object obj) {
        this.f47699a.obtainMessage(7, Pair.create(dweVar, obj)).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.ear
    /* renamed from: a */
    public final void mo15357a(eas easVar) {
        this.f47699a.obtainMessage(8, easVar).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.ebe
    /* renamed from: a */
    public final /* synthetic */ void mo15317a(eas easVar) {
        this.f47699a.obtainMessage(9, easVar).sendToTarget();
    }

    /* renamed from: a */
    public final void m15622a(dvm... dvmVarArr) {
        synchronized (this) {
            if (this.f47700b) {
                Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
                return;
            }
            int i = this.f47701c;
            this.f47701c = i + 1;
            this.f47699a.obtainMessage(11, dvmVarArr).sendToTarget();
            while (this.f47690B <= i) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eby
    /* renamed from: b */
    public final void mo15294b() {
        this.f47699a.sendEmptyMessage(10);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:202:0x050f A[Catch: IOException -> 0x1086, zzhe -> 0x108a, RuntimeException -> 0x108e, TRY_ENTER, TryCatch #6 {RuntimeException -> 0x108e, blocks: (B:2:0x0000, B:6:0x004e, B:8:0x0066, B:11:0x006f, B:16:0x0080, B:21:0x008f, B:26:0x00b3, B:28:0x00bf, B:34:0x00dc, B:39:0x00f9, B:41:0x0100, B:43:0x010d, B:45:0x011c, B:48:0x0126, B:50:0x012f, B:52:0x0151, B:56:0x015d, B:58:0x0164, B:70:0x01a7, B:79:0x01be, B:82:0x01c1, B:87:0x01d3, B:92:0x01d8, B:94:0x01da, B:99:0x01e8, B:102:0x01f2, B:105:0x01fa, B:109:0x0203, B:112:0x020f, B:117:0x022b, B:119:0x0273, B:121:0x0281, B:123:0x028e, B:127:0x02a3, B:133:0x02bd, B:139:0x02de, B:141:0x02ea, B:145:0x02f8, B:147:0x0304, B:149:0x030f, B:152:0x0324, B:153:0x032f, B:155:0x0338, B:156:0x0351, B:159:0x035f, B:160:0x036b, B:162:0x037d, B:164:0x03a2, B:166:0x03b4, B:168:0x03c7, B:171:0x03d3, B:173:0x03d9, B:175:0x03ec, B:178:0x03f8, B:180:0x041a, B:182:0x0435, B:184:0x043a, B:186:0x045e, B:188:0x0465, B:190:0x0484, B:191:0x048f, B:192:0x04b5, B:194:0x04c3, B:196:0x04cd, B:197:0x04d7, B:200:0x0503, B:202:0x050f, B:205:0x0518, B:208:0x052b, B:211:0x053f, B:212:0x054a, B:214:0x0595, B:216:0x059b, B:220:0x05b4, B:221:0x05bc, B:222:0x05d7, B:228:0x05fc, B:230:0x0608, B:232:0x0643, B:234:0x064b, B:237:0x066e, B:239:0x0689, B:246:0x06b5, B:247:0x06dc, B:249:0x06ed, B:251:0x06f6, B:252:0x070a, B:261:0x071c, B:264:0x0725, B:266:0x072b, B:268:0x073e, B:269:0x074a, B:271:0x0754, B:273:0x0767, B:275:0x0776, B:277:0x0788, B:279:0x0794, B:280:0x07cf, B:285:0x07e1, B:292:0x0822, B:296:0x0843, B:302:0x086b, B:307:0x0890, B:310:0x08a3, B:314:0x08c6, B:315:0x08d4, B:316:0x08d5, B:316:0x08d5, B:317:0x08d8, B:319:0x08e1, B:320:0x08ed, B:322:0x08f6, B:323:0x0901, B:325:0x0910, B:327:0x091a, B:330:0x0934, B:332:0x093b, B:335:0x0950, B:337:0x0965, B:339:0x096f, B:340:0x097b, B:342:0x0982, B:343:0x098d, B:345:0x09af, B:347:0x09f4, B:349:0x0a0b, B:352:0x0a1d, B:353:0x0a3d, B:356:0x0a4c, B:358:0x0a55, B:360:0x0a9f, B:362:0x0aa6, B:364:0x0abb, B:366:0x0ac3, B:369:0x0acd, B:371:0x0ad4, B:373:0x0adb, B:374:0x0ae2, B:376:0x0ae8, B:379:0x0aef, B:381:0x0afb, B:383:0x0b0a, B:384:0x0b4d, B:388:0x0b59, B:392:0x0b69, B:394:0x0b77, B:396:0x0b82, B:398:0x0b8c, B:399:0x0b93, B:401:0x0b9b, B:405:0x0bab, B:409:0x0bc4, B:413:0x0bd7, B:415:0x0be1, B:417:0x0bee, B:423:0x0c29, B:427:0x0c3e, B:431:0x0c4f, B:433:0x0c59, B:435:0x0c7e, B:437:0x0c88, B:441:0x0ca2, B:442:0x0cb6, B:443:0x0cd3, B:444:0x0cda, B:445:0x0ce0, B:447:0x0ce7, B:449:0x0cf7, B:454:0x0d29, B:456:0x0d3b, B:461:0x0d4b, B:463:0x0d54, B:470:0x0d6e, B:480:0x0d92, B:482:0x0d97, B:484:0x0d9f, B:486:0x0db1, B:488:0x0dcf, B:492:0x0df1, B:495:0x0dfe, B:497:0x0e07, B:498:0x0e13, B:501:0x0e1d, B:505:0x0e2a, B:507:0x0e3a, B:508:0x0e45, B:512:0x0e5d, B:516:0x0e6d, B:518:0x0e86, B:520:0x0e8c, B:521:0x0eb8, B:526:0x0eeb, B:529:0x0ef7, B:531:0x0f03, B:534:0x0f0f, B:537:0x0f1a, B:540:0x0f26, B:542:0x0f38, B:544:0x0f3f, B:548:0x0f50, B:549:0x0f5e, B:551:0x0f65, B:554:0x0f6e, B:557:0x0f76, B:559:0x0f7c, B:561:0x0f89, B:562:0x0f93, B:564:0x0f9b, B:566:0x0fa2, B:568:0x0faf, B:569:0x0fb9, B:570:0x0fc1, B:570:0x0fc1, B:573:0x0fc9, B:578:0x0fd9, B:580:0x0fe9, B:582:0x0ff4, B:585:0x0ffe, B:588:0x1013, B:590:0x1021, B:595:0x1038, B:597:0x1053, B:599:0x1065), top: B:618:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0518 A[Catch: IOException -> 0x1086, zzhe -> 0x108a, RuntimeException -> 0x108e, TRY_ENTER, TRY_LEAVE, TryCatch #6 {RuntimeException -> 0x108e, blocks: (B:2:0x0000, B:6:0x004e, B:8:0x0066, B:11:0x006f, B:16:0x0080, B:21:0x008f, B:26:0x00b3, B:28:0x00bf, B:34:0x00dc, B:39:0x00f9, B:41:0x0100, B:43:0x010d, B:45:0x011c, B:48:0x0126, B:50:0x012f, B:52:0x0151, B:56:0x015d, B:58:0x0164, B:70:0x01a7, B:79:0x01be, B:82:0x01c1, B:87:0x01d3, B:92:0x01d8, B:94:0x01da, B:99:0x01e8, B:102:0x01f2, B:105:0x01fa, B:109:0x0203, B:112:0x020f, B:117:0x022b, B:119:0x0273, B:121:0x0281, B:123:0x028e, B:127:0x02a3, B:133:0x02bd, B:139:0x02de, B:141:0x02ea, B:145:0x02f8, B:147:0x0304, B:149:0x030f, B:152:0x0324, B:153:0x032f, B:155:0x0338, B:156:0x0351, B:159:0x035f, B:160:0x036b, B:162:0x037d, B:164:0x03a2, B:166:0x03b4, B:168:0x03c7, B:171:0x03d3, B:173:0x03d9, B:175:0x03ec, B:178:0x03f8, B:180:0x041a, B:182:0x0435, B:184:0x043a, B:186:0x045e, B:188:0x0465, B:190:0x0484, B:191:0x048f, B:192:0x04b5, B:194:0x04c3, B:196:0x04cd, B:197:0x04d7, B:200:0x0503, B:202:0x050f, B:205:0x0518, B:208:0x052b, B:211:0x053f, B:212:0x054a, B:214:0x0595, B:216:0x059b, B:220:0x05b4, B:221:0x05bc, B:222:0x05d7, B:228:0x05fc, B:230:0x0608, B:232:0x0643, B:234:0x064b, B:237:0x066e, B:239:0x0689, B:246:0x06b5, B:247:0x06dc, B:249:0x06ed, B:251:0x06f6, B:252:0x070a, B:261:0x071c, B:264:0x0725, B:266:0x072b, B:268:0x073e, B:269:0x074a, B:271:0x0754, B:273:0x0767, B:275:0x0776, B:277:0x0788, B:279:0x0794, B:280:0x07cf, B:285:0x07e1, B:292:0x0822, B:296:0x0843, B:302:0x086b, B:307:0x0890, B:310:0x08a3, B:314:0x08c6, B:315:0x08d4, B:316:0x08d5, B:316:0x08d5, B:317:0x08d8, B:319:0x08e1, B:320:0x08ed, B:322:0x08f6, B:323:0x0901, B:325:0x0910, B:327:0x091a, B:330:0x0934, B:332:0x093b, B:335:0x0950, B:337:0x0965, B:339:0x096f, B:340:0x097b, B:342:0x0982, B:343:0x098d, B:345:0x09af, B:347:0x09f4, B:349:0x0a0b, B:352:0x0a1d, B:353:0x0a3d, B:356:0x0a4c, B:358:0x0a55, B:360:0x0a9f, B:362:0x0aa6, B:364:0x0abb, B:366:0x0ac3, B:369:0x0acd, B:371:0x0ad4, B:373:0x0adb, B:374:0x0ae2, B:376:0x0ae8, B:379:0x0aef, B:381:0x0afb, B:383:0x0b0a, B:384:0x0b4d, B:388:0x0b59, B:392:0x0b69, B:394:0x0b77, B:396:0x0b82, B:398:0x0b8c, B:399:0x0b93, B:401:0x0b9b, B:405:0x0bab, B:409:0x0bc4, B:413:0x0bd7, B:415:0x0be1, B:417:0x0bee, B:423:0x0c29, B:427:0x0c3e, B:431:0x0c4f, B:433:0x0c59, B:435:0x0c7e, B:437:0x0c88, B:441:0x0ca2, B:442:0x0cb6, B:443:0x0cd3, B:444:0x0cda, B:445:0x0ce0, B:447:0x0ce7, B:449:0x0cf7, B:454:0x0d29, B:456:0x0d3b, B:461:0x0d4b, B:463:0x0d54, B:470:0x0d6e, B:480:0x0d92, B:482:0x0d97, B:484:0x0d9f, B:486:0x0db1, B:488:0x0dcf, B:492:0x0df1, B:495:0x0dfe, B:497:0x0e07, B:498:0x0e13, B:501:0x0e1d, B:505:0x0e2a, B:507:0x0e3a, B:508:0x0e45, B:512:0x0e5d, B:516:0x0e6d, B:518:0x0e86, B:520:0x0e8c, B:521:0x0eb8, B:526:0x0eeb, B:529:0x0ef7, B:531:0x0f03, B:534:0x0f0f, B:537:0x0f1a, B:540:0x0f26, B:542:0x0f38, B:544:0x0f3f, B:548:0x0f50, B:549:0x0f5e, B:551:0x0f65, B:554:0x0f6e, B:557:0x0f76, B:559:0x0f7c, B:561:0x0f89, B:562:0x0f93, B:564:0x0f9b, B:566:0x0fa2, B:568:0x0faf, B:569:0x0fb9, B:570:0x0fc1, B:570:0x0fc1, B:573:0x0fc9, B:578:0x0fd9, B:580:0x0fe9, B:582:0x0ff4, B:585:0x0ffe, B:588:0x1013, B:590:0x1021, B:595:0x1038, B:597:0x1053, B:599:0x1065), top: B:618:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0aee A[LOOP:7: B:378:0x0aee->B:383:0x0b0a, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:470:0x0d6e A[Catch: IOException -> 0x1086, zzhe -> 0x108a, RuntimeException -> 0x108e, TRY_ENTER, TryCatch #6 {RuntimeException -> 0x108e, blocks: (B:2:0x0000, B:6:0x004e, B:8:0x0066, B:11:0x006f, B:16:0x0080, B:21:0x008f, B:26:0x00b3, B:28:0x00bf, B:34:0x00dc, B:39:0x00f9, B:41:0x0100, B:43:0x010d, B:45:0x011c, B:48:0x0126, B:50:0x012f, B:52:0x0151, B:56:0x015d, B:58:0x0164, B:70:0x01a7, B:79:0x01be, B:82:0x01c1, B:87:0x01d3, B:92:0x01d8, B:94:0x01da, B:99:0x01e8, B:102:0x01f2, B:105:0x01fa, B:109:0x0203, B:112:0x020f, B:117:0x022b, B:119:0x0273, B:121:0x0281, B:123:0x028e, B:127:0x02a3, B:133:0x02bd, B:139:0x02de, B:141:0x02ea, B:145:0x02f8, B:147:0x0304, B:149:0x030f, B:152:0x0324, B:153:0x032f, B:155:0x0338, B:156:0x0351, B:159:0x035f, B:160:0x036b, B:162:0x037d, B:164:0x03a2, B:166:0x03b4, B:168:0x03c7, B:171:0x03d3, B:173:0x03d9, B:175:0x03ec, B:178:0x03f8, B:180:0x041a, B:182:0x0435, B:184:0x043a, B:186:0x045e, B:188:0x0465, B:190:0x0484, B:191:0x048f, B:192:0x04b5, B:194:0x04c3, B:196:0x04cd, B:197:0x04d7, B:200:0x0503, B:202:0x050f, B:205:0x0518, B:208:0x052b, B:211:0x053f, B:212:0x054a, B:214:0x0595, B:216:0x059b, B:220:0x05b4, B:221:0x05bc, B:222:0x05d7, B:228:0x05fc, B:230:0x0608, B:232:0x0643, B:234:0x064b, B:237:0x066e, B:239:0x0689, B:246:0x06b5, B:247:0x06dc, B:249:0x06ed, B:251:0x06f6, B:252:0x070a, B:261:0x071c, B:264:0x0725, B:266:0x072b, B:268:0x073e, B:269:0x074a, B:271:0x0754, B:273:0x0767, B:275:0x0776, B:277:0x0788, B:279:0x0794, B:280:0x07cf, B:285:0x07e1, B:292:0x0822, B:296:0x0843, B:302:0x086b, B:307:0x0890, B:310:0x08a3, B:314:0x08c6, B:315:0x08d4, B:316:0x08d5, B:316:0x08d5, B:317:0x08d8, B:319:0x08e1, B:320:0x08ed, B:322:0x08f6, B:323:0x0901, B:325:0x0910, B:327:0x091a, B:330:0x0934, B:332:0x093b, B:335:0x0950, B:337:0x0965, B:339:0x096f, B:340:0x097b, B:342:0x0982, B:343:0x098d, B:345:0x09af, B:347:0x09f4, B:349:0x0a0b, B:352:0x0a1d, B:353:0x0a3d, B:356:0x0a4c, B:358:0x0a55, B:360:0x0a9f, B:362:0x0aa6, B:364:0x0abb, B:366:0x0ac3, B:369:0x0acd, B:371:0x0ad4, B:373:0x0adb, B:374:0x0ae2, B:376:0x0ae8, B:379:0x0aef, B:381:0x0afb, B:383:0x0b0a, B:384:0x0b4d, B:388:0x0b59, B:392:0x0b69, B:394:0x0b77, B:396:0x0b82, B:398:0x0b8c, B:399:0x0b93, B:401:0x0b9b, B:405:0x0bab, B:409:0x0bc4, B:413:0x0bd7, B:415:0x0be1, B:417:0x0bee, B:423:0x0c29, B:427:0x0c3e, B:431:0x0c4f, B:433:0x0c59, B:435:0x0c7e, B:437:0x0c88, B:441:0x0ca2, B:442:0x0cb6, B:443:0x0cd3, B:444:0x0cda, B:445:0x0ce0, B:447:0x0ce7, B:449:0x0cf7, B:454:0x0d29, B:456:0x0d3b, B:461:0x0d4b, B:463:0x0d54, B:470:0x0d6e, B:480:0x0d92, B:482:0x0d97, B:484:0x0d9f, B:486:0x0db1, B:488:0x0dcf, B:492:0x0df1, B:495:0x0dfe, B:497:0x0e07, B:498:0x0e13, B:501:0x0e1d, B:505:0x0e2a, B:507:0x0e3a, B:508:0x0e45, B:512:0x0e5d, B:516:0x0e6d, B:518:0x0e86, B:520:0x0e8c, B:521:0x0eb8, B:526:0x0eeb, B:529:0x0ef7, B:531:0x0f03, B:534:0x0f0f, B:537:0x0f1a, B:540:0x0f26, B:542:0x0f38, B:544:0x0f3f, B:548:0x0f50, B:549:0x0f5e, B:551:0x0f65, B:554:0x0f6e, B:557:0x0f76, B:559:0x0f7c, B:561:0x0f89, B:562:0x0f93, B:564:0x0f9b, B:566:0x0fa2, B:568:0x0faf, B:569:0x0fb9, B:570:0x0fc1, B:570:0x0fc1, B:573:0x0fc9, B:578:0x0fd9, B:580:0x0fe9, B:582:0x0ff4, B:585:0x0ffe, B:588:0x1013, B:590:0x1021, B:595:0x1038, B:597:0x1053, B:599:0x1065), top: B:618:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:524:0x0edf  */
    /* JADX WARN: Type inference failed for: r0v118, types: [long] */
    /* JADX WARN: Type inference failed for: r0v132, types: [long] */
    /* JADX WARN: Type inference failed for: r0v201, types: [long] */
    /* JADX WARN: Type inference failed for: r0v206, types: [long] */
    /* JADX WARN: Type inference failed for: r0v209, types: [long] */
    /* JADX WARN: Type inference failed for: r0v408, types: [long] */
    /* JADX WARN: Type inference failed for: r0v410, types: [long] */
    /* JADX WARN: Type inference failed for: r0v441, types: [long] */
    /* JADX WARN: Type inference failed for: r0v444, types: [long] */
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
