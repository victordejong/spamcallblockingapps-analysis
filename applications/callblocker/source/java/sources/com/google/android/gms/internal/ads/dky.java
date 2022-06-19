package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dky.class */
public final class dky implements Handler.Callback, dqd, dqf, dri {

    /* renamed from: A */
    private int f14568A;

    /* renamed from: B */
    private dld f14569B;

    /* renamed from: C */
    private long f14570C;

    /* renamed from: D */
    private dlb f14571D;

    /* renamed from: E */
    private dlb f14572E;

    /* renamed from: F */
    private dlb f14573F;

    /* renamed from: G */
    private dln f14574G;

    /* renamed from: a */
    private final dli[] f14575a;

    /* renamed from: b */
    private final dll[] f14576b;

    /* renamed from: c */
    private final drj f14577c;

    /* renamed from: d */
    private final dlh f14578d;

    /* renamed from: e */
    private final dsl f14579e;

    /* renamed from: f */
    private final cnz f14580f;

    /* renamed from: g */
    private final HandlerThread f14581g;

    /* renamed from: h */
    private final cnz f14582h;

    /* renamed from: i */
    private final dkt f14583i;

    /* renamed from: j */
    private final dlo f14584j;

    /* renamed from: k */
    private final dlp f14585k;

    /* renamed from: l */
    private dla f14586l;

    /* renamed from: m */
    private dlj f14587m;

    /* renamed from: n */
    private dli f14588n;

    /* renamed from: o */
    private dsd f14589o;

    /* renamed from: p */
    private dqg f14590p;

    /* renamed from: q */
    private dli[] f14591q;

    /* renamed from: r */
    private boolean f14592r;

    /* renamed from: s */
    private boolean f14593s;

    /* renamed from: t */
    private boolean f14594t;

    /* renamed from: u */
    private boolean f14595u;

    /* renamed from: x */
    private int f14598x;

    /* renamed from: y */
    private int f14599y;

    /* renamed from: z */
    private long f14600z;

    /* renamed from: w */
    private int f14597w = 0;

    /* renamed from: v */
    private int f14596v = 1;

    public dky(dli[] dliVarArr, drj drjVar, dlh dlhVar, boolean z, int i, cnz cnzVar, dla dlaVar, dkt dktVar) {
        this.f14575a = dliVarArr;
        this.f14577c = drjVar;
        this.f14578d = dlhVar;
        this.f14593s = z;
        this.f14582h = cnzVar;
        this.f14586l = dlaVar;
        this.f14583i = dktVar;
        this.f14576b = new dll[dliVarArr.length];
        for (int i2 = 0; i2 < dliVarArr.length; i2++) {
            dliVarArr[i2].mo9217a(i2);
            this.f14576b[i2] = dliVarArr[i2].mo9213b();
        }
        this.f14579e = new dsl();
        this.f14591q = new dli[0];
        this.f14584j = new dlo();
        this.f14585k = new dlp();
        drjVar.m8819a((dri) this);
        this.f14587m = dlj.f14660a;
        this.f14581g = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.f14581g.start();
        this.f14580f = new cnz(this.f14581g.getLooper(), this);
    }

    /* renamed from: a */
    private final int m9275a(int i, dln dlnVar, dln dlnVar2) {
        int mo8836b = dlnVar.mo8836b();
        int i2 = -1;
        for (int i3 = 0; i3 < mo8836b && i2 == -1; i3++) {
            i = dlnVar.m9200a(i, this.f14585k, this.f14584j, this.f14597w);
            i2 = dlnVar2.mo8837a(dlnVar.mo8838a(i, this.f14585k, true).f14677a);
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* renamed from: a */
    private final long m9276a(int i, long j) {
        dlb dlbVar;
        char c;
        m9251e();
        this.f14594t = false;
        m9277a(2);
        if (this.f14573F != null) {
            dlb dlbVar2 = this.f14573F;
            dlb dlbVar3 = null;
            while (true) {
                dlbVar = dlbVar3;
                if (dlbVar2 == null) {
                    break;
                }
                if (dlbVar2.f14611f != i || !dlbVar2.f14614i) {
                    dlbVar2.m9239d();
                } else {
                    dlbVar3 = dlbVar2;
                }
                dlbVar2 = dlbVar2.f14616k;
            }
        } else if (this.f14571D != null) {
            this.f14571D.m9239d();
            dlbVar = null;
        } else {
            dlbVar = null;
        }
        if (this.f14573F != dlbVar || this.f14573F != this.f14572E) {
            for (dli dliVar : this.f14591q) {
                dliVar.mo9204l();
            }
            this.f14591q = new dli[0];
            this.f14589o = null;
            this.f14588n = null;
            this.f14573F = null;
        }
        if (dlbVar != null) {
            dlbVar.f14616k = null;
            this.f14571D = dlbVar;
            this.f14572E = dlbVar;
            m9258b(dlbVar);
            char c2 = j;
            if (this.f14573F.f14615j) {
                c2 = this.f14573F.f14606a.mo8888c(j);
            }
            m9274a((long) c2);
            m9247i();
            c = c2;
        } else {
            this.f14571D = null;
            this.f14572E = null;
            this.f14573F = null;
            m9274a(j);
            c = j;
        }
        this.f14580f.sendEmptyMessage(2);
        return c;
    }

    /* renamed from: a */
    private final Pair<Integer, Long> m9271a(dld dldVar) {
        Pair<Integer, Long> pair;
        dln dlnVar = dldVar.f14629a;
        if (dlnVar.m9199c()) {
            dlnVar = this.f14574G;
        }
        try {
            Pair<Integer, Long> m9257b = m9257b(dlnVar, dldVar.f14630b, dldVar.f14631c);
            if (this.f14574G == dlnVar) {
                pair = m9257b;
            } else {
                int mo8837a = this.f14574G.mo8837a(dlnVar.mo8838a(((Integer) m9257b.first).intValue(), this.f14585k, true).f14677a);
                if (mo8837a != -1) {
                    pair = Pair.create(Integer.valueOf(mo8837a), (Long) m9257b.second);
                } else {
                    int m9275a = m9275a(((Integer) m9257b.first).intValue(), dlnVar, this.f14574G);
                    if (m9275a != -1) {
                        this.f14574G.mo8838a(m9275a, this.f14585k, false);
                        pair = m9260b(0, -9223372036854775807L);
                    } else {
                        pair = null;
                    }
                }
            }
            return pair;
        } catch (IndexOutOfBoundsException e) {
            throw new zzhg(this.f14574G, dldVar.f14630b, dldVar.f14631c);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* renamed from: a */
    private final Pair<Integer, Long> m9268a(dln dlnVar, int i, long j, long j2) {
        Pair<Integer, Long> create;
        drz.m8775a(i, 0, dlnVar.mo8840a());
        dlnVar.mo8839a(i, this.f14584j, false, j2);
        char c = j;
        if (j == -9223372036854775807L) {
            ?? r0 = this.f14584j.f14674h;
            c = r0;
            if (r0 == -9223372036854775807L) {
                create = null;
                return create;
            }
        }
        long j3 = this.f14584j.f14676j + c;
        long j4 = dlnVar.mo8838a(0, this.f14585k, false).f14679c;
        if (j4 == -9223372036854775807L || j3 >= j4) {
        }
        create = Pair.create(0, Long.valueOf(j3));
        return create;
    }

    /* renamed from: a */
    private final void m9277a(int i) {
        if (this.f14596v != i) {
            this.f14596v = i;
            this.f14582h.obtainMessage(1, i, 0).sendToTarget();
        }
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: a */
    private final void m9274a(long j) {
        this.f14570C = this.f14573F == null ? 60000000 + j : this.f14573F.m9245a() + j;
        this.f14579e.m8716a(this.f14570C);
        for (dli dliVar : this.f14591q) {
            dliVar.mo9216a(this.f14570C);
        }
    }

    /* renamed from: a */
    private final void m9273a(long j, long j2) {
        this.f14580f.removeMessages(2);
        long elapsedRealtime = (j + j2) - SystemClock.elapsedRealtime();
        if (elapsedRealtime <= 0) {
            this.f14580f.sendEmptyMessage(2);
        } else {
            this.f14580f.sendEmptyMessageDelayed(2, elapsedRealtime);
        }
    }

    /* renamed from: a */
    private static void m9272a(dlb dlbVar) {
        while (dlbVar != null) {
            dlbVar.m9239d();
            dlbVar = dlbVar.f14616k;
        }
    }

    /* renamed from: a */
    private static void m9270a(dli dliVar) {
        if (dliVar.mo9212d() == 2) {
            dliVar.mo9205k();
        }
    }

    /* renamed from: a */
    private final void m9266a(Object obj, int i) {
        this.f14586l = new dla(0, 0L);
        m9256b(obj, i);
        this.f14586l = new dla(0, -9223372036854775807L);
        m9277a(4);
        m9253c(false);
    }

    /* renamed from: a */
    private final void m9263a(boolean[] zArr, int i) {
        this.f14591q = new dli[i];
        int i2 = 0;
        int i3 = 0;
        while (i3 < this.f14575a.length) {
            dli dliVar = this.f14575a[i3];
            dre m8822a = this.f14573F.f14617l.f15481b.m8822a(i3);
            int i4 = i2;
            if (m8822a != null) {
                this.f14591q[i2] = dliVar;
                if (dliVar.mo9212d() == 0) {
                    dlk dlkVar = this.f14573F.f14617l.f15483d[i3];
                    boolean z = this.f14593s && this.f14596v == 3;
                    boolean z2 = !zArr[i3] && z;
                    dlf[] dlfVarArr = new dlf[m8822a.mo8825b()];
                    for (int i5 = 0; i5 < dlfVarArr.length; i5++) {
                        dlfVarArr[i5] = m8822a.mo8826a(i5);
                    }
                    dliVar.mo9215a(dlkVar, dlfVarArr, this.f14573F.f14609d[i3], this.f14570C, z2, this.f14573F.m9245a());
                    dsd mo9129c = dliVar.mo9129c();
                    if (mo9129c != null) {
                        if (this.f14589o != null) {
                            throw zzgq.m6539a(new IllegalStateException("Multiple renderer media clocks enabled."));
                        }
                        this.f14589o = mo9129c;
                        this.f14588n = dliVar;
                        this.f14589o.mo8715a(this.f14587m);
                    }
                    if (z) {
                        dliVar.mo9211e();
                    }
                }
                i4 = i2 + 1;
            }
            i3++;
            i2 = i4;
        }
    }

    /* renamed from: b */
    private final Pair<Integer, Long> m9260b(int i, long j) {
        return m9257b(this.f14574G, i, -9223372036854775807L);
    }

    /* renamed from: b */
    private final Pair<Integer, Long> m9257b(dln dlnVar, int i, long j) {
        return m9268a(dlnVar, i, j, 0L);
    }

    /* renamed from: b */
    private final void m9258b(dlb dlbVar) {
        if (this.f14573F == dlbVar) {
            return;
        }
        boolean[] zArr = new boolean[this.f14575a.length];
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= this.f14575a.length) {
                this.f14573F = dlbVar;
                this.f14582h.obtainMessage(3, dlbVar.f14617l).sendToTarget();
                m9263a(zArr, i3);
                return;
            }
            dli dliVar = this.f14575a[i];
            zArr[i] = dliVar.mo9212d() != 0;
            dre m8822a = dlbVar.f14617l.f15481b.m8822a(i);
            int i4 = i3;
            if (m8822a != null) {
                i4 = i3 + 1;
            }
            if (zArr[i] && (m8822a == null || (dliVar.mo9207i() && dliVar.mo9210f() == this.f14573F.f14609d[i]))) {
                if (dliVar == this.f14588n) {
                    this.f14579e.m8714a(this.f14589o);
                    this.f14589o = null;
                    this.f14588n = null;
                }
                m9270a(dliVar);
                dliVar.mo9204l();
            }
            i++;
            i2 = i4;
        }
    }

    /* renamed from: b */
    private final void m9256b(Object obj, int i) {
        this.f14582h.obtainMessage(6, new dlc(this.f14574G, obj, this.f14586l, i)).sendToTarget();
    }

    /* renamed from: b */
    private final void m9255b(boolean z) {
        if (this.f14595u != z) {
            this.f14595u = z;
            this.f14582h.obtainMessage(2, z ? 1 : 0, 0).sendToTarget();
        }
    }

    /* renamed from: b */
    private final boolean m9261b(int i) {
        this.f14574G.mo8838a(i, this.f14585k, false);
        boolean z = false;
        if (!this.f14574G.m9201a(0, this.f14584j, false).f14671e) {
            z = false;
            if (this.f14574G.m9200a(i, this.f14585k, this.f14584j, this.f14597w) == -1) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    private final boolean m9259b(long j) {
        return j == -9223372036854775807L || this.f14586l.f14604c < j || (this.f14573F.f14616k != null && this.f14573F.f14616k.f14614i);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0050 -> B:7:0x0048). Please submit an issue!!! */
    /* renamed from: c */
    private final void m9253c(boolean z) {
        dli[] dliVarArr;
        this.f14580f.removeMessages(2);
        this.f14594t = false;
        this.f14579e.m8713b();
        this.f14589o = null;
        this.f14588n = null;
        this.f14570C = 60000000L;
        for (dli dliVar : this.f14591q) {
            try {
                m9270a(dliVar);
                dliVar.mo9204l();
            } catch (zzgq | RuntimeException e) {
                Log.e("ExoPlayerImplInternal", "Stop failed.", e);
            }
        }
        this.f14591q = new dli[0];
        m9272a(this.f14573F != null ? this.f14573F : this.f14571D);
        this.f14571D = null;
        this.f14572E = null;
        this.f14573F = null;
        m9255b(false);
        if (z) {
            if (this.f14590p != null) {
                this.f14590p.mo8894b();
                this.f14590p = null;
            }
            this.f14574G = null;
        }
    }

    /* renamed from: d */
    private final void m9252d() {
        this.f14594t = false;
        this.f14579e.m8717a();
        for (dli dliVar : this.f14591q) {
            dliVar.mo9211e();
        }
    }

    /* renamed from: e */
    private final void m9251e() {
        this.f14579e.m8713b();
        for (dli dliVar : this.f14591q) {
            m9270a(dliVar);
        }
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: f */
    private final void m9250f() {
        if (this.f14573F == null) {
            return;
        }
        char mo8886e = this.f14573F.f14606a.mo8886e();
        if (mo8886e != -9223372036854775807L) {
            m9274a((long) mo8886e);
        } else {
            if (this.f14588n == null || this.f14588n.mo8962u()) {
                this.f14570C = this.f14579e.mo8712w();
            } else {
                this.f14570C = this.f14589o.mo8712w();
                this.f14579e.m8716a(this.f14570C);
            }
            mo8886e = this.f14570C - this.f14573F.m9245a();
        }
        this.f14586l.f14604c = mo8886e;
        this.f14600z = SystemClock.elapsedRealtime() * 1000;
        char mo8885f = this.f14591q.length == 0 ? (char) 0 : this.f14573F.f14606a.mo8885f();
        dla dlaVar = this.f14586l;
        char c = mo8885f;
        if (mo8885f == Long.MIN_VALUE) {
            c = this.f14574G.mo8838a(this.f14573F.f14611f, this.f14585k, false).f14679c;
        }
        dlaVar.f14605d = c;
    }

    /* renamed from: g */
    private final void m9249g() {
        m9253c(true);
        this.f14578d.mo9220b();
        m9277a(1);
    }

    /* renamed from: h */
    private final void m9248h() {
        if (this.f14571D == null || this.f14571D.f14614i) {
            return;
        }
        if (this.f14572E != null && this.f14572E.f14616k != this.f14571D) {
            return;
        }
        for (dli dliVar : this.f14591q) {
            if (!dliVar.mo9209g()) {
                return;
            }
        }
        this.f14571D.f14606a.mo8889c();
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: i */
    private final void m9247i() {
        char mo8843n_ = !this.f14571D.f14614i ? (char) 0 : this.f14571D.f14606a.mo8843n_();
        if (mo8843n_ == Long.MIN_VALUE) {
            m9255b(false);
            return;
        }
        long m9245a = this.f14570C - this.f14571D.m9245a();
        boolean mo9223a = this.f14578d.mo9223a(mo8843n_ - m9245a);
        m9255b(mo9223a);
        if (!mo9223a) {
            return;
        }
        this.f14571D.f14606a.mo8844a(m9245a);
    }

    /* renamed from: a */
    public final void m9278a() {
        this.f14580f.sendEmptyMessage(5);
    }

    /* renamed from: a */
    public final void m9269a(dln dlnVar, int i, long j) {
        this.f14580f.obtainMessage(3, new dld(dlnVar, i, j)).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.dqf
    /* renamed from: a */
    public final void mo8884a(dln dlnVar, Object obj) {
        this.f14580f.obtainMessage(7, Pair.create(dlnVar, obj)).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.dqd
    /* renamed from: a */
    public final void mo8892a(dqe dqeVar) {
        this.f14580f.obtainMessage(8, dqeVar).sendToTarget();
    }

    /* renamed from: a */
    public final void m9267a(dqg dqgVar, boolean z) {
        this.f14580f.obtainMessage(0, 1, 0, dqgVar).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.dqq
    /* renamed from: a */
    public final /* synthetic */ void mo8845a(dqe dqeVar) {
        this.f14580f.obtainMessage(9, dqeVar).sendToTarget();
    }

    /* renamed from: a */
    public final void m9265a(boolean z) {
        this.f14580f.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
    }

    /* renamed from: a */
    public final void m9264a(dku... dkuVarArr) {
        if (this.f14592r) {
            Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            return;
        }
        this.f14598x++;
        this.f14580f.obtainMessage(11, dkuVarArr).sendToTarget();
    }

    /* renamed from: b */
    public final void m9262b() {
        synchronized (this) {
            if (!this.f14592r) {
                this.f14580f.sendEmptyMessage(6);
                while (!this.f14592r) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                    }
                }
                this.f14581g.quit();
            }
        }
    }

    /* renamed from: b */
    public final void m9254b(dku... dkuVarArr) {
        synchronized (this) {
            if (this.f14592r) {
                Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            } else {
                int i = this.f14598x;
                this.f14598x = i + 1;
                this.f14580f.obtainMessage(11, dkuVarArr).sendToTarget();
                while (this.f14599y <= i) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dri
    /* renamed from: c */
    public final void mo8821c() {
        this.f14580f.sendEmptyMessage(10);
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x02e8 A[LOOP:1: B:119:0x02e8->B:124:0x0305, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:300:0x0858  */
    /* JADX WARN: Removed duplicated region for block: B:425:0x0c14 A[Catch: zzgq -> 0x00f6, IOException -> 0x012c, RuntimeException -> 0x0348, TryCatch #7 {zzgq -> 0x00f6, IOException -> 0x012c, RuntimeException -> 0x0348, blocks: (B:2:0x0000, B:3:0x0004, B:8:0x004c, B:12:0x005e, B:14:0x007a, B:16:0x008c, B:19:0x00b5, B:23:0x00be, B:25:0x00cc, B:29:0x00de, B:31:0x00e6, B:34:0x0118, B:36:0x0120, B:39:0x0151, B:41:0x0164, B:44:0x016d, B:48:0x0178, B:52:0x0183, B:57:0x01a7, B:59:0x01b3, B:64:0x01ca, B:68:0x01e3, B:73:0x0203, B:75:0x020a, B:77:0x0217, B:79:0x0227, B:82:0x0231, B:84:0x0238, B:86:0x0262, B:90:0x026e, B:93:0x0278, B:95:0x0284, B:97:0x028e, B:99:0x0294, B:102:0x02a6, B:104:0x02ad, B:106:0x02b8, B:108:0x02c2, B:110:0x02cc, B:112:0x02d2, B:115:0x02dd, B:117:0x02e2, B:120:0x02e9, B:122:0x02f3, B:124:0x0305, B:127:0x036d, B:129:0x0380, B:131:0x038a, B:133:0x03a2, B:135:0x03a9, B:138:0x03be, B:139:0x03d7, B:141:0x03de, B:143:0x03e8, B:147:0x03f6, B:151:0x0400, B:153:0x0449, B:155:0x0452, B:156:0x046d, B:159:0x0495, B:161:0x04d9, B:162:0x04f4, B:163:0x0517, B:164:0x0525, B:166:0x052c, B:168:0x0533, B:169:0x053a, B:173:0x0547, B:175:0x0551, B:177:0x0568, B:179:0x0572, B:181:0x057b, B:182:0x0581, B:184:0x058a, B:186:0x0594, B:190:0x05b5, B:192:0x05be, B:193:0x05c4, B:195:0x05ce, B:197:0x05db, B:202:0x0610, B:204:0x061a, B:208:0x0633, B:210:0x063c, B:212:0x0660, B:214:0x066a, B:216:0x0679, B:218:0x0681, B:220:0x069b, B:221:0x06b4, B:222:0x06ba, B:223:0x06c3, B:225:0x06e5, B:230:0x06fd, B:232:0x0710, B:236:0x071c, B:238:0x0725, B:244:0x0736, B:256:0x0762, B:258:0x0767, B:260:0x076d, B:262:0x0782, B:264:0x07a0, B:268:0x07c5, B:271:0x07d3, B:273:0x07dc, B:275:0x07e6, B:277:0x07ed, B:281:0x0800, B:282:0x080f, B:284:0x0817, B:288:0x0823, B:290:0x0832, B:294:0x0848, B:303:0x085e, B:305:0x086a, B:306:0x0871, B:307:0x0882, B:309:0x089b, B:311:0x08c0, B:312:0x08ca, B:314:0x08d2, B:318:0x08de, B:319:0x08f2, B:320:0x08fc, B:322:0x0903, B:325:0x090c, B:328:0x0914, B:329:0x091c, B:329:0x091c, B:331:0x0922, B:333:0x092a, B:334:0x0936, B:335:0x0941, B:337:0x0950, B:340:0x0964, B:342:0x096e, B:343:0x09ac, B:347:0x09ba, B:354:0x09fb, B:357:0x0a19, B:364:0x0a4c, B:368:0x0a6d, B:372:0x0a8c, B:375:0x0aaa, B:376:0x0aba, B:379:0x0ac1, B:381:0x0ad0, B:383:0x0adc, B:385:0x0af2, B:386:0x0afe, B:388:0x0b07, B:389:0x0b1b, B:399:0x0b30, B:401:0x0b32, B:403:0x0b40, B:407:0x0b50, B:409:0x0b73, B:411:0x0b8f, B:412:0x0b95, B:414:0x0bb7, B:416:0x0bbe, B:418:0x0bdd, B:421:0x0bea, B:423:0x0c0e, B:425:0x0c14, B:428:0x0c1d, B:431:0x0c30, B:434:0x0c45, B:435:0x0c50, B:437:0x0c5e, B:439:0x0c68, B:440:0x0c72, B:443:0x0ca5, B:444:0x0cad, B:446:0x0cfa, B:448:0x0d00, B:451:0x0d14, B:453:0x0d23, B:455:0x0d3f, B:456:0x0d49, B:460:0x0d60, B:462:0x0d6c, B:464:0x0d99, B:466:0x0d9f, B:469:0x0dc1, B:471:0x0ddc, B:479:0x0e14, B:480:0x0e40, B:481:0x0e54, B:483:0x0e63, B:487:0x0e73, B:488:0x0e7a, B:490:0x0e81, B:494:0x0e8d, B:498:0x0e99, B:501:0x0ea1, B:505:0x0eab, B:508:0x0eb8, B:512:0x0ec5, B:514:0x0f10, B:517:0x0f22, B:519:0x0f2d, B:521:0x0f37, B:526:0x0f51, B:532:0x0f73, B:534:0x0f7f, B:538:0x0f8d, B:540:0x0f99, B:542:0x0fa4, B:543:0x0fae, B:549:0x0fca, B:550:0x0fd8, B:552:0x0fef, B:553:0x1002, B:556:0x1013, B:557:0x101f, B:559:0x1031, B:560:0x105d, B:572:0x10a0, B:582:0x10ba, B:585:0x10bd, B:590:0x10cf, B:595:0x10d4), top: B:606:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:428:0x0c1d A[Catch: zzgq -> 0x00f6, IOException -> 0x012c, RuntimeException -> 0x0348, TRY_ENTER, TRY_LEAVE, TryCatch #7 {zzgq -> 0x00f6, IOException -> 0x012c, RuntimeException -> 0x0348, blocks: (B:2:0x0000, B:3:0x0004, B:8:0x004c, B:12:0x005e, B:14:0x007a, B:16:0x008c, B:19:0x00b5, B:23:0x00be, B:25:0x00cc, B:29:0x00de, B:31:0x00e6, B:34:0x0118, B:36:0x0120, B:39:0x0151, B:41:0x0164, B:44:0x016d, B:48:0x0178, B:52:0x0183, B:57:0x01a7, B:59:0x01b3, B:64:0x01ca, B:68:0x01e3, B:73:0x0203, B:75:0x020a, B:77:0x0217, B:79:0x0227, B:82:0x0231, B:84:0x0238, B:86:0x0262, B:90:0x026e, B:93:0x0278, B:95:0x0284, B:97:0x028e, B:99:0x0294, B:102:0x02a6, B:104:0x02ad, B:106:0x02b8, B:108:0x02c2, B:110:0x02cc, B:112:0x02d2, B:115:0x02dd, B:117:0x02e2, B:120:0x02e9, B:122:0x02f3, B:124:0x0305, B:127:0x036d, B:129:0x0380, B:131:0x038a, B:133:0x03a2, B:135:0x03a9, B:138:0x03be, B:139:0x03d7, B:141:0x03de, B:143:0x03e8, B:147:0x03f6, B:151:0x0400, B:153:0x0449, B:155:0x0452, B:156:0x046d, B:159:0x0495, B:161:0x04d9, B:162:0x04f4, B:163:0x0517, B:164:0x0525, B:166:0x052c, B:168:0x0533, B:169:0x053a, B:173:0x0547, B:175:0x0551, B:177:0x0568, B:179:0x0572, B:181:0x057b, B:182:0x0581, B:184:0x058a, B:186:0x0594, B:190:0x05b5, B:192:0x05be, B:193:0x05c4, B:195:0x05ce, B:197:0x05db, B:202:0x0610, B:204:0x061a, B:208:0x0633, B:210:0x063c, B:212:0x0660, B:214:0x066a, B:216:0x0679, B:218:0x0681, B:220:0x069b, B:221:0x06b4, B:222:0x06ba, B:223:0x06c3, B:225:0x06e5, B:230:0x06fd, B:232:0x0710, B:236:0x071c, B:238:0x0725, B:244:0x0736, B:256:0x0762, B:258:0x0767, B:260:0x076d, B:262:0x0782, B:264:0x07a0, B:268:0x07c5, B:271:0x07d3, B:273:0x07dc, B:275:0x07e6, B:277:0x07ed, B:281:0x0800, B:282:0x080f, B:284:0x0817, B:288:0x0823, B:290:0x0832, B:294:0x0848, B:303:0x085e, B:305:0x086a, B:306:0x0871, B:307:0x0882, B:309:0x089b, B:311:0x08c0, B:312:0x08ca, B:314:0x08d2, B:318:0x08de, B:319:0x08f2, B:320:0x08fc, B:322:0x0903, B:325:0x090c, B:328:0x0914, B:329:0x091c, B:329:0x091c, B:331:0x0922, B:333:0x092a, B:334:0x0936, B:335:0x0941, B:337:0x0950, B:340:0x0964, B:342:0x096e, B:343:0x09ac, B:347:0x09ba, B:354:0x09fb, B:357:0x0a19, B:364:0x0a4c, B:368:0x0a6d, B:372:0x0a8c, B:375:0x0aaa, B:376:0x0aba, B:379:0x0ac1, B:381:0x0ad0, B:383:0x0adc, B:385:0x0af2, B:386:0x0afe, B:388:0x0b07, B:389:0x0b1b, B:399:0x0b30, B:401:0x0b32, B:403:0x0b40, B:407:0x0b50, B:409:0x0b73, B:411:0x0b8f, B:412:0x0b95, B:414:0x0bb7, B:416:0x0bbe, B:418:0x0bdd, B:421:0x0bea, B:423:0x0c0e, B:425:0x0c14, B:428:0x0c1d, B:431:0x0c30, B:434:0x0c45, B:435:0x0c50, B:437:0x0c5e, B:439:0x0c68, B:440:0x0c72, B:443:0x0ca5, B:444:0x0cad, B:446:0x0cfa, B:448:0x0d00, B:451:0x0d14, B:453:0x0d23, B:455:0x0d3f, B:456:0x0d49, B:460:0x0d60, B:462:0x0d6c, B:464:0x0d99, B:466:0x0d9f, B:469:0x0dc1, B:471:0x0ddc, B:479:0x0e14, B:480:0x0e40, B:481:0x0e54, B:483:0x0e63, B:487:0x0e73, B:488:0x0e7a, B:490:0x0e81, B:494:0x0e8d, B:498:0x0e99, B:501:0x0ea1, B:505:0x0eab, B:508:0x0eb8, B:512:0x0ec5, B:514:0x0f10, B:517:0x0f22, B:519:0x0f2d, B:521:0x0f37, B:526:0x0f51, B:532:0x0f73, B:534:0x0f7f, B:538:0x0f8d, B:540:0x0f99, B:542:0x0fa4, B:543:0x0fae, B:549:0x0fca, B:550:0x0fd8, B:552:0x0fef, B:553:0x1002, B:556:0x1013, B:557:0x101f, B:559:0x1031, B:560:0x105d, B:572:0x10a0, B:582:0x10ba, B:585:0x10bd, B:590:0x10cf, B:595:0x10d4), top: B:606:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:443:0x0ca5 A[Catch: zzgq -> 0x00f6, IOException -> 0x012c, RuntimeException -> 0x0348, TRY_ENTER, TRY_LEAVE, TryCatch #7 {zzgq -> 0x00f6, IOException -> 0x012c, RuntimeException -> 0x0348, blocks: (B:2:0x0000, B:3:0x0004, B:8:0x004c, B:12:0x005e, B:14:0x007a, B:16:0x008c, B:19:0x00b5, B:23:0x00be, B:25:0x00cc, B:29:0x00de, B:31:0x00e6, B:34:0x0118, B:36:0x0120, B:39:0x0151, B:41:0x0164, B:44:0x016d, B:48:0x0178, B:52:0x0183, B:57:0x01a7, B:59:0x01b3, B:64:0x01ca, B:68:0x01e3, B:73:0x0203, B:75:0x020a, B:77:0x0217, B:79:0x0227, B:82:0x0231, B:84:0x0238, B:86:0x0262, B:90:0x026e, B:93:0x0278, B:95:0x0284, B:97:0x028e, B:99:0x0294, B:102:0x02a6, B:104:0x02ad, B:106:0x02b8, B:108:0x02c2, B:110:0x02cc, B:112:0x02d2, B:115:0x02dd, B:117:0x02e2, B:120:0x02e9, B:122:0x02f3, B:124:0x0305, B:127:0x036d, B:129:0x0380, B:131:0x038a, B:133:0x03a2, B:135:0x03a9, B:138:0x03be, B:139:0x03d7, B:141:0x03de, B:143:0x03e8, B:147:0x03f6, B:151:0x0400, B:153:0x0449, B:155:0x0452, B:156:0x046d, B:159:0x0495, B:161:0x04d9, B:162:0x04f4, B:163:0x0517, B:164:0x0525, B:166:0x052c, B:168:0x0533, B:169:0x053a, B:173:0x0547, B:175:0x0551, B:177:0x0568, B:179:0x0572, B:181:0x057b, B:182:0x0581, B:184:0x058a, B:186:0x0594, B:190:0x05b5, B:192:0x05be, B:193:0x05c4, B:195:0x05ce, B:197:0x05db, B:202:0x0610, B:204:0x061a, B:208:0x0633, B:210:0x063c, B:212:0x0660, B:214:0x066a, B:216:0x0679, B:218:0x0681, B:220:0x069b, B:221:0x06b4, B:222:0x06ba, B:223:0x06c3, B:225:0x06e5, B:230:0x06fd, B:232:0x0710, B:236:0x071c, B:238:0x0725, B:244:0x0736, B:256:0x0762, B:258:0x0767, B:260:0x076d, B:262:0x0782, B:264:0x07a0, B:268:0x07c5, B:271:0x07d3, B:273:0x07dc, B:275:0x07e6, B:277:0x07ed, B:281:0x0800, B:282:0x080f, B:284:0x0817, B:288:0x0823, B:290:0x0832, B:294:0x0848, B:303:0x085e, B:305:0x086a, B:306:0x0871, B:307:0x0882, B:309:0x089b, B:311:0x08c0, B:312:0x08ca, B:314:0x08d2, B:318:0x08de, B:319:0x08f2, B:320:0x08fc, B:322:0x0903, B:325:0x090c, B:328:0x0914, B:329:0x091c, B:329:0x091c, B:331:0x0922, B:333:0x092a, B:334:0x0936, B:335:0x0941, B:337:0x0950, B:340:0x0964, B:342:0x096e, B:343:0x09ac, B:347:0x09ba, B:354:0x09fb, B:357:0x0a19, B:364:0x0a4c, B:368:0x0a6d, B:372:0x0a8c, B:375:0x0aaa, B:376:0x0aba, B:379:0x0ac1, B:381:0x0ad0, B:383:0x0adc, B:385:0x0af2, B:386:0x0afe, B:388:0x0b07, B:389:0x0b1b, B:399:0x0b30, B:401:0x0b32, B:403:0x0b40, B:407:0x0b50, B:409:0x0b73, B:411:0x0b8f, B:412:0x0b95, B:414:0x0bb7, B:416:0x0bbe, B:418:0x0bdd, B:421:0x0bea, B:423:0x0c0e, B:425:0x0c14, B:428:0x0c1d, B:431:0x0c30, B:434:0x0c45, B:435:0x0c50, B:437:0x0c5e, B:439:0x0c68, B:440:0x0c72, B:443:0x0ca5, B:444:0x0cad, B:446:0x0cfa, B:448:0x0d00, B:451:0x0d14, B:453:0x0d23, B:455:0x0d3f, B:456:0x0d49, B:460:0x0d60, B:462:0x0d6c, B:464:0x0d99, B:466:0x0d9f, B:469:0x0dc1, B:471:0x0ddc, B:479:0x0e14, B:480:0x0e40, B:481:0x0e54, B:483:0x0e63, B:487:0x0e73, B:488:0x0e7a, B:490:0x0e81, B:494:0x0e8d, B:498:0x0e99, B:501:0x0ea1, B:505:0x0eab, B:508:0x0eb8, B:512:0x0ec5, B:514:0x0f10, B:517:0x0f22, B:519:0x0f2d, B:521:0x0f37, B:526:0x0f51, B:532:0x0f73, B:534:0x0f7f, B:538:0x0f8d, B:540:0x0f99, B:542:0x0fa4, B:543:0x0fae, B:549:0x0fca, B:550:0x0fd8, B:552:0x0fef, B:553:0x1002, B:556:0x1013, B:557:0x101f, B:559:0x1031, B:560:0x105d, B:572:0x10a0, B:582:0x10ba, B:585:0x10bd, B:590:0x10cf, B:595:0x10d4), top: B:606:0x0000 }] */
    /* JADX WARN: Type inference failed for: r0v608, types: [long] */
    /* JADX WARN: Type inference failed for: r0v615, types: [long] */
    /* JADX WARN: Type inference failed for: r0v640, types: [long] */
    /* JADX WARN: Type inference failed for: r0v643, types: [long] */
    /* JADX WARN: Type inference failed for: r0v705, types: [long] */
    /* JADX WARN: Type inference failed for: r0v723, types: [long] */
    /* JADX WARN: Type inference failed for: r0v727, types: [long] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r16) {
        /*
            Method dump skipped, instructions count: 4309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dky.handleMessage(android.os.Message):boolean");
    }
}
