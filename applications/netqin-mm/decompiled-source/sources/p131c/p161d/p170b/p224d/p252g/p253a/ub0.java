package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.internal.ads.zzhc;
import com.google.android.gms.internal.ads.zzhd;
import com.google.android.gms.internal.ads.zzhh;
import com.google.android.gms.internal.ads.zzhn;
import com.google.android.gms.internal.ads.zzho;
import com.google.android.gms.internal.ads.zzhp;
import com.google.android.gms.internal.ads.zzhs;
import com.google.android.gms.internal.ads.zzht;
import com.google.android.gms.internal.ads.zzhu;
import com.google.android.gms.internal.ads.zzhw;
import com.google.android.gms.internal.ads.zzhx;
import com.google.android.gms.internal.ads.zzhy;
import com.google.android.gms.internal.ads.zzhz;
import com.google.android.gms.internal.ads.zzia;
import com.google.android.gms.internal.ads.zzid;
import com.google.android.gms.internal.ads.zzmx;
import com.google.android.gms.internal.ads.zzmz;
import com.google.android.gms.internal.ads.zzna;
import com.google.android.gms.internal.ads.zznc;
import com.google.android.gms.internal.ads.zzob;
import com.google.android.gms.internal.ads.zzof;
import com.google.android.gms.internal.ads.zzog;
import com.google.android.gms.internal.ads.zzpd;
import com.google.android.gms.internal.ads.zzpl;
import java.io.IOException;
/* renamed from: c.d.b.d.g.a.ub0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ub0.class */
public final class ub0 implements Handler.Callback, zzna, zznc, zzof {

    /* renamed from: A */
    public int f15598A;

    /* renamed from: B */
    public vb0 f15599B;

    /* renamed from: C */
    public long f15600C;

    /* renamed from: D */
    public tb0 f15601D;

    /* renamed from: E */
    public tb0 f15602E;

    /* renamed from: F */
    public tb0 f15603F;

    /* renamed from: G */
    public zzhy f15604G;

    /* renamed from: a */
    public final zzhx[] f15605a;

    /* renamed from: b */
    public final zzhw[] f15606b;

    /* renamed from: c */
    public final zzog f15607c;

    /* renamed from: d */
    public final zzhs f15608d;

    /* renamed from: e */
    public final zzpl f15609e;

    /* renamed from: f */
    public final Handler f15610f;

    /* renamed from: g */
    public final HandlerThread f15611g;

    /* renamed from: h */
    public final Handler f15612h;

    /* renamed from: i */
    public final zzhc f15613i;

    /* renamed from: j */
    public final zzid f15614j;

    /* renamed from: k */
    public final zzia f15615k;

    /* renamed from: l */
    public zzhn f15616l;

    /* renamed from: m */
    public zzhu f15617m;

    /* renamed from: n */
    public zzhx f15618n;

    /* renamed from: o */
    public zzpd f15619o;

    /* renamed from: p */
    public zzmz f15620p;

    /* renamed from: q */
    public zzhx[] f15621q;

    /* renamed from: r */
    public boolean f15622r;

    /* renamed from: s */
    public boolean f15623s;

    /* renamed from: t */
    public boolean f15624t;

    /* renamed from: u */
    public boolean f15625u;

    /* renamed from: x */
    public int f15628x;

    /* renamed from: y */
    public int f15629y;

    /* renamed from: z */
    public long f15630z;

    /* renamed from: w */
    public int f15627w = 0;

    /* renamed from: v */
    public int f15626v = 1;

    public ub0(zzhx[] zzhxVarArr, zzog zzogVar, zzhs zzhsVar, boolean z, int i, Handler handler, zzhn zzhnVar, zzhc zzhcVar) {
        this.f15605a = zzhxVarArr;
        this.f15607c = zzogVar;
        this.f15608d = zzhsVar;
        this.f15623s = z;
        this.f15612h = handler;
        this.f15616l = zzhnVar;
        this.f15613i = zzhcVar;
        this.f15606b = new zzhw[zzhxVarArr.length];
        for (int i2 = 0; i2 < zzhxVarArr.length; i2++) {
            zzhxVarArr[i2].mo12015a(i2);
            this.f15606b[i2] = zzhxVarArr[i2].mo12006i();
        }
        this.f15609e = new zzpl();
        this.f15621q = new zzhx[0];
        this.f15614j = new zzid();
        this.f15615k = new zzia();
        zzogVar.m11736a((zzof) this);
        this.f15617m = zzhu.f28294d;
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.f15611g = handlerThread;
        handlerThread.start();
        this.f15610f = new Handler(this.f15611g.getLooper(), this);
    }

    /* renamed from: a */
    public static void m26270a(zzhx zzhxVar) throws zzhd {
        if (zzhxVar.mo12011d() == 2) {
            zzhxVar.stop();
        }
    }

    /* renamed from: b */
    public static void m26258b(tb0 tb0Var) {
        while (tb0Var != null) {
            tb0Var.m26324a();
            tb0Var = tb0Var.f15383l;
        }
    }

    /* renamed from: a */
    public final int m26275a(int i, zzhy zzhyVar, zzhy zzhyVar2) {
        int c = zzhyVar.mo11756c();
        int i2 = -1;
        int i3 = i;
        for (int i4 = 0; i4 < c && i2 == -1; i4++) {
            i3 = zzhyVar.m12001a(i3, this.f15615k, this.f15614j, this.f15627w);
            i2 = zzhyVar2.mo11758a(zzhyVar.mo11760a(i3, this.f15615k, true).f28302b);
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r4v0, types: [c.d.b.d.g.a.ub0] */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* renamed from: a */
    public final long m26276a(int i, long j) throws zzhd {
        tb0 tb0Var;
        char c;
        m26250e();
        this.f15624t = false;
        m26277a(2);
        tb0 tb0Var2 = this.f15603F;
        if (tb0Var2 != null) {
            tb0 tb0Var3 = null;
            while (true) {
                tb0Var = tb0Var3;
                if (tb0Var2 == null) {
                    break;
                }
                if (tb0Var2.f15378g != i || !tb0Var2.f15381j) {
                    tb0Var2.m26324a();
                } else {
                    tb0Var3 = tb0Var2;
                }
                tb0Var2 = tb0Var2.f15383l;
            }
        } else {
            tb0 tb0Var4 = this.f15601D;
            if (tb0Var4 != null) {
                tb0Var4.m26324a();
            }
            tb0Var = null;
        }
        tb0 tb0Var5 = this.f15603F;
        if (!(tb0Var5 == tb0Var && tb0Var5 == this.f15602E)) {
            for (zzhx zzhxVar : this.f15621q) {
                zzhxVar.mo12009f();
            }
            this.f15621q = new zzhx[0];
            this.f15619o = null;
            this.f15618n = null;
            this.f15603F = null;
        }
        if (tb0Var != null) {
            tb0Var.f15383l = null;
            this.f15601D = tb0Var;
            this.f15602E = tb0Var;
            m26272a(tb0Var);
            tb0 tb0Var6 = this.f15603F;
            char c2 = j;
            if (tb0Var6.f15382k) {
                c2 = tb0Var6.f15372a.mo11804b(j);
            }
            m26274a(c2);
            m26246i();
            c = c2;
        } else {
            this.f15601D = null;
            this.f15602E = null;
            this.f15603F = null;
            m26274a(j);
            c = j;
        }
        this.f15610f.sendEmptyMessage(2);
        return c;
    }

    /* renamed from: a */
    public final Pair<Integer, Long> m26271a(vb0 vb0Var) {
        zzhy zzhyVar = vb0Var.f15812a;
        zzhy zzhyVar2 = zzhyVar;
        if (zzhyVar.m12002a()) {
            zzhyVar2 = this.f15604G;
        }
        try {
            Pair<Integer, Long> b = m26257b(zzhyVar2, vb0Var.f15813b, vb0Var.f15814c);
            zzhy zzhyVar3 = this.f15604G;
            if (zzhyVar3 == zzhyVar2) {
                return b;
            }
            int a = zzhyVar3.mo11758a(zzhyVar2.mo11760a(((Integer) b.first).intValue(), this.f15615k, true).f28302b);
            if (a != -1) {
                return Pair.create(Integer.valueOf(a), (Long) b.second);
            }
            int a2 = m26275a(((Integer) b.first).intValue(), zzhyVar2, this.f15604G);
            if (a2 == -1) {
                return null;
            }
            this.f15604G.mo11760a(a2, this.f15615k, false);
            return m26260b(0, -9223372036854775807L);
        } catch (IndexOutOfBoundsException e) {
            throw new zzht(this.f15604G, vb0Var.f15813b, vb0Var.f15814c);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair<java.lang.Integer, java.lang.Long> m26268a(com.google.android.gms.internal.ads.zzhy r8, int r9, long r10, long r12) {
        /*
            r7 = this;
            r0 = r9
            r1 = 0
            r2 = r8
            int r2 = r2.mo11757b()
            int r0 = com.google.android.gms.internal.ads.zzoz.m11699a(r0, r1, r2)
            r0 = r8
            r1 = r9
            r2 = r7
            com.google.android.gms.internal.ads.zzid r2 = r2.f15614j
            r3 = 0
            r4 = r12
            com.google.android.gms.internal.ads.zzid r0 = r0.mo11759a(r1, r2, r3, r4)
            r0 = r10
            r12 = r0
            r0 = r10
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0037
            r0 = r7
            com.google.android.gms.internal.ads.zzid r0 = r0.f15614j
            long r0 = r0.f28315h
            r10 = r0
            r0 = r10
            r12 = r0
            r0 = r10
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0037
            r0 = 0
            return r0
        L_0x0037:
            r0 = r7
            com.google.android.gms.internal.ads.zzid r0 = r0.f15614j
            long r0 = r0.f28317j
            r1 = r12
            long r0 = r0 + r1
            r12 = r0
            r0 = r8
            r1 = 0
            r2 = r7
            com.google.android.gms.internal.ads.zzia r2 = r2.f15615k
            r3 = 0
            com.google.android.gms.internal.ads.zzia r0 = r0.mo11760a(r1, r2, r3)
            long r0 = r0.f28303c
            r10 = r0
            r0 = r10
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0059
        L_0x0059:
            r0 = 0
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r1 = r12
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            android.util.Pair r0 = android.util.Pair.create(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.ub0.m26268a(com.google.android.gms.internal.ads.zzhy, int, long, long):android.util.Pair");
    }

    @Override // com.google.android.gms.internal.ads.zzof
    /* renamed from: a */
    public final void mo11738a() {
        this.f15610f.sendEmptyMessage(10);
    }

    /* renamed from: a */
    public final void m26277a(int i) {
        if (this.f15626v != i) {
            this.f15626v = i;
            this.f15612h.obtainMessage(1, i, 0).sendToTarget();
        }
    }

    /* renamed from: a */
    public final void m26274a(long j) throws zzhd {
        tb0 tb0Var = this.f15603F;
        long b = j + (tb0Var == null ? 60000000L : tb0Var.m26320b());
        this.f15600C = b;
        this.f15609e.m11638a(b);
        for (zzhx zzhxVar : this.f15621q) {
            zzhxVar.mo12014a(this.f15600C);
        }
    }

    /* renamed from: a */
    public final void m26273a(long j, long j2) {
        this.f15610f.removeMessages(2);
        long elapsedRealtime = (j + j2) - SystemClock.elapsedRealtime();
        if (elapsedRealtime <= 0) {
            this.f15610f.sendEmptyMessage(2);
        } else {
            this.f15610f.sendEmptyMessageDelayed(2, elapsedRealtime);
        }
    }

    /* renamed from: a */
    public final void m26272a(tb0 tb0Var) throws zzhd {
        if (this.f15603F != tb0Var) {
            boolean[] zArr = new boolean[this.f15605a.length];
            int i = 0;
            int i2 = 0;
            while (true) {
                zzhx[] zzhxVarArr = this.f15605a;
                if (i < zzhxVarArr.length) {
                    zzhx zzhxVar = zzhxVarArr[i];
                    zArr[i] = zzhxVar.mo12011d() != 0;
                    zzob a = tb0Var.f15384m.f28716b.m11739a(i);
                    i2 = i2;
                    if (a != null) {
                        i2++;
                    }
                    if (zArr[i] && (a == null || (zzhxVar.mo12004m() && zzhxVar.mo12005k() == this.f15603F.f15375d[i]))) {
                        if (zzhxVar == this.f15618n) {
                            this.f15609e.m11636a(this.f15619o);
                            this.f15619o = null;
                            this.f15618n = null;
                        }
                        m26270a(zzhxVar);
                        zzhxVar.mo12009f();
                    }
                    i++;
                } else {
                    this.f15603F = tb0Var;
                    this.f15612h.obtainMessage(3, tb0Var.f15384m).sendToTarget();
                    m26263a(zArr, i2);
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m26269a(zzhy zzhyVar, int i, long j) {
        this.f15610f.obtainMessage(3, new vb0(zzhyVar, i, j)).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.zznc
    /* renamed from: a */
    public final void mo11795a(zzhy zzhyVar, Object obj) {
        this.f15610f.obtainMessage(7, Pair.create(zzhyVar, obj)).sendToTarget();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.internal.ads.zzna
    /* renamed from: a */
    public final void mo11796a(zzmx zzmxVar) {
        this.f15610f.obtainMessage(8, zzmxVar).sendToTarget();
    }

    /* renamed from: a */
    public final void m26267a(zzmz zzmzVar, boolean z) {
        this.f15610f.obtainMessage(0, 1, 0, zzmzVar).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.zzno
    /* renamed from: a */
    public final /* synthetic */ void mo11755a(zzmx zzmxVar) {
        this.f15610f.obtainMessage(9, zzmxVar).sendToTarget();
    }

    /* renamed from: a */
    public final void m26266a(Object obj, int i) {
        this.f15616l = new zzhn(0, 0L);
        m26256b(obj, i);
        this.f15616l = new zzhn(0, -9223372036854775807L);
        m26277a(4);
        m26252c(false);
    }

    /* renamed from: a */
    public final void m26265a(boolean z) {
        this.f15610f.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
    }

    /* renamed from: a */
    public final void m26264a(zzhh... zzhhVarArr) {
        if (this.f15622r) {
            Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            return;
        }
        this.f15628x++;
        this.f15610f.obtainMessage(11, zzhhVarArr).sendToTarget();
    }

    /* renamed from: a */
    public final void m26263a(boolean[] zArr, int i) throws zzhd {
        this.f15621q = new zzhx[i];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            zzhx[] zzhxVarArr = this.f15605a;
            if (i2 < zzhxVarArr.length) {
                zzhx zzhxVar = zzhxVarArr[i2];
                zzob a = this.f15603F.f15384m.f28716b.m11739a(i2);
                i3 = i3;
                if (a != null) {
                    this.f15621q[i3] = zzhxVar;
                    if (zzhxVar.mo12011d() == 0) {
                        zzhz zzhzVar = this.f15603F.f15384m.f28718d[i2];
                        boolean z = this.f15623s && this.f15626v == 3;
                        boolean z2 = !zArr[i2] && z;
                        int length = a.length();
                        zzho[] zzhoVarArr = new zzho[length];
                        for (int i4 = 0; i4 < length; i4++) {
                            zzhoVarArr[i4] = a.mo11742a(i4);
                        }
                        tb0 tb0Var = this.f15603F;
                        zzhxVar.mo12013a(zzhzVar, zzhoVarArr, tb0Var.f15375d[i2], this.f15600C, z2, tb0Var.m26320b());
                        zzpd j = zzhxVar.mo11931j();
                        if (j != null) {
                            if (this.f15619o == null) {
                                this.f15619o = j;
                                this.f15618n = zzhxVar;
                                j.mo11637a(this.f15617m);
                            } else {
                                throw zzhd.zza(new IllegalStateException("Multiple renderer media clocks enabled."));
                            }
                        }
                        if (z) {
                            zzhxVar.start();
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

    /* renamed from: b */
    public final Pair<Integer, Long> m26260b(int i, long j) {
        return m26257b(this.f15604G, i, -9223372036854775807L);
    }

    /* renamed from: b */
    public final Pair<Integer, Long> m26257b(zzhy zzhyVar, int i, long j) {
        return m26268a(zzhyVar, i, j, 0L);
    }

    /* renamed from: b */
    public final void m26262b() {
        synchronized (this) {
            if (!this.f15622r) {
                this.f15610f.sendEmptyMessage(6);
                while (!this.f15622r) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                    }
                }
                this.f15611g.quit();
            }
        }
    }

    /* renamed from: b */
    public final void m26256b(Object obj, int i) {
        this.f15612h.obtainMessage(6, new zzhp(this.f15604G, obj, this.f15616l, i)).sendToTarget();
    }

    /* renamed from: b */
    public final void m26255b(boolean z) {
        if (this.f15625u != z) {
            this.f15625u = z;
            this.f15612h.obtainMessage(2, z ? 1 : 0, 0).sendToTarget();
        }
    }

    /* renamed from: b */
    public final void m26254b(zzhh... zzhhVarArr) {
        synchronized (this) {
            if (this.f15622r) {
                Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
                return;
            }
            int i = this.f15628x;
            this.f15628x = i + 1;
            this.f15610f.obtainMessage(11, zzhhVarArr).sendToTarget();
            while (this.f15629y <= i) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    /* renamed from: b */
    public final boolean m26261b(int i) {
        this.f15604G.mo11760a(i, this.f15615k, false);
        return !this.f15604G.m12000a(0, this.f15614j, false).f28312e && this.f15604G.m12001a(i, this.f15615k, this.f15614j, this.f15627w) == -1;
    }

    /* renamed from: b */
    public final boolean m26259b(long j) {
        if (j == -9223372036854775807L || this.f15616l.f28260c < j) {
            return true;
        }
        tb0 tb0Var = this.f15603F.f15383l;
        return tb0Var != null && tb0Var.f15381j;
    }

    /* renamed from: c */
    public final void m26253c() {
        this.f15610f.sendEmptyMessage(5);
    }

    /* renamed from: c */
    public final void m26252c(boolean z) {
        zzhx[] zzhxVarArr;
        this.f15610f.removeMessages(2);
        this.f15624t = false;
        this.f15609e.m11634c();
        this.f15619o = null;
        this.f15618n = null;
        this.f15600C = 60000000L;
        for (zzhx zzhxVar : this.f15621q) {
            try {
                m26270a(zzhxVar);
                zzhxVar.mo12009f();
            } catch (zzhd | RuntimeException e) {
                Log.e("ExoPlayerImplInternal", "Stop failed.", e);
            }
        }
        this.f15621q = new zzhx[0];
        tb0 tb0Var = this.f15603F;
        if (tb0Var == null) {
            tb0Var = this.f15601D;
        }
        m26258b(tb0Var);
        this.f15601D = null;
        this.f15602E = null;
        this.f15603F = null;
        m26255b(false);
        if (z) {
            zzmz zzmzVar = this.f15620p;
            if (zzmzVar != null) {
                zzmzVar.mo11788b();
                this.f15620p = null;
            }
            this.f15604G = null;
        }
    }

    /* renamed from: d */
    public final void m26251d() throws zzhd {
        this.f15624t = false;
        this.f15609e.m11635b();
        for (zzhx zzhxVar : this.f15621q) {
            zzhxVar.start();
        }
    }

    /* renamed from: e */
    public final void m26250e() throws zzhd {
        this.f15609e.m11634c();
        for (zzhx zzhxVar : this.f15621q) {
            m26270a(zzhxVar);
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
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m26249f() throws com.google.android.gms.internal.ads.zzhd {
        /*
            r6 = this;
            r0 = r6
            c.d.b.d.g.a.tb0 r0 = r0.f15603F
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L_0x000a
            return
        L_0x000a:
            r0 = r7
            com.google.android.gms.internal.ads.zzmx r0 = r0.f15372a
            long r0 = r0.mo11801d()
            r8 = r0
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0024
            r0 = r6
            r1 = r8
            r0.m26274a(r1)
            goto L_0x006a
        L_0x0024:
            r0 = r6
            com.google.android.gms.internal.ads.zzhx r0 = r0.f15618n
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0050
            r0 = r7
            boolean r0 = r0.mo11827c()
            if (r0 != 0) goto L_0x0050
            r0 = r6
            com.google.android.gms.internal.ads.zzpd r0 = r0.f15619o
            long r0 = r0.mo11633o()
            r8 = r0
            r0 = r6
            r1 = r8
            r0.f15600C = r1
            r0 = r6
            com.google.android.gms.internal.ads.zzpl r0 = r0.f15609e
            r1 = r8
            r0.m11638a(r1)
            goto L_0x005b
        L_0x0050:
            r0 = r6
            r1 = r6
            com.google.android.gms.internal.ads.zzpl r1 = r1.f15609e
            long r1 = r1.mo11633o()
            r0.f15600C = r1
        L_0x005b:
            r0 = r6
            c.d.b.d.g.a.tb0 r0 = r0.f15603F
            r7 = r0
            r0 = r6
            long r0 = r0.f15600C
            r1 = r7
            long r1 = r1.m26320b()
            long r0 = r0 - r1
            r8 = r0
        L_0x006a:
            r0 = r6
            com.google.android.gms.internal.ads.zzhn r0 = r0.f15616l
            r1 = r8
            r0.f28260c = r1
            r0 = r6
            long r1 = android.os.SystemClock.elapsedRealtime()
            r2 = 1000(0x3e8, double:4.94E-321)
            long r1 = r1 * r2
            r0.f15630z = r1
            r0 = r6
            com.google.android.gms.internal.ads.zzhx[] r0 = r0.f15621q
            int r0 = r0.length
            if (r0 != 0) goto L_0x008c
            r0 = -9223372036854775808
            r8 = r0
            goto L_0x0099
        L_0x008c:
            r0 = r6
            c.d.b.d.g.a.tb0 r0 = r0.f15603F
            com.google.android.gms.internal.ads.zzmx r0 = r0.f15372a
            long r0 = r0.mo11803c()
            r8 = r0
        L_0x0099:
            r0 = r6
            com.google.android.gms.internal.ads.zzhn r0 = r0.f15616l
            r7 = r0
            r0 = r8
            r10 = r0
            r0 = r8
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00c1
            r0 = r6
            com.google.android.gms.internal.ads.zzhy r0 = r0.f15604G
            r1 = r6
            c.d.b.d.g.a.tb0 r1 = r1.f15603F
            int r1 = r1.f15378g
            r2 = r6
            com.google.android.gms.internal.ads.zzia r2 = r2.f15615k
            r3 = 0
            com.google.android.gms.internal.ads.zzia r0 = r0.mo11760a(r1, r2, r3)
            long r0 = r0.f28303c
            r10 = r0
        L_0x00c1:
            r0 = r7
            r1 = r10
            r0.f28261d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.ub0.m26249f():void");
    }

    /* renamed from: g */
    public final void m26248g() {
        m26252c(true);
        this.f15608d.mo12023a();
        m26277a(1);
    }

    /* renamed from: h */
    public final void m26247h() throws IOException {
        tb0 tb0Var = this.f15601D;
        if (!(tb0Var == null || tb0Var.f15381j)) {
            tb0 tb0Var2 = this.f15602E;
            if (tb0Var2 == null || tb0Var2.f15383l == tb0Var) {
                for (zzhx zzhxVar : this.f15621q) {
                    if (!zzhxVar.mo12008g()) {
                        return;
                    }
                }
                this.f15601D.f15372a.mo11800e();
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:202:0x050f A[Catch: IOException -> 0x1064, zzhd -> 0x1068, RuntimeException -> 0x106c, TRY_LEAVE, TryCatch #9 {RuntimeException -> 0x106c, blocks: (B:2:0x0000, B:6:0x0052, B:8:0x0065, B:9:0x006d, B:12:0x0076, B:17:0x0085, B:22:0x0096, B:27:0x00ba, B:29:0x00c6, B:35:0x00e2, B:40:0x00fd, B:42:0x0104, B:44:0x0111, B:46:0x0121, B:49:0x012a, B:51:0x0131, B:53:0x0159, B:57:0x0165, B:59:0x016c, B:71:0x01ad, B:80:0x01c4, B:83:0x01c7, B:88:0x01d9, B:93:0x01de, B:95:0x01e0, B:97:0x01e6, B:101:0x01f2, B:104:0x01fc, B:107:0x0204, B:111:0x020e, B:114:0x021b, B:119:0x022f, B:121:0x0279, B:123:0x0287, B:125:0x0294, B:127:0x029e, B:133:0x02c1, B:139:0x02e2, B:141:0x02ee, B:145:0x02fc, B:147:0x0308, B:149:0x0313, B:152:0x0328, B:153:0x0333, B:155:0x033c, B:156:0x0355, B:159:0x0363, B:160:0x036f, B:162:0x0381, B:164:0x03a7, B:166:0x03b9, B:168:0x03c8, B:171:0x03d6, B:173:0x03dc, B:175:0x03eb, B:178:0x03f9, B:180:0x041c, B:182:0x0437, B:184:0x043c, B:186:0x0465, B:188:0x046c, B:190:0x048a, B:191:0x0494, B:192:0x04ba, B:194:0x04c8, B:196:0x04cf, B:197:0x04d9, B:200:0x0508, B:202:0x050f, B:203:0x0517, B:206:0x0520, B:209:0x0533, B:212:0x0549, B:213:0x0553, B:215:0x05a3, B:217:0x05a9, B:221:0x05c4, B:222:0x05cd, B:223:0x05e8, B:229:0x0610, B:231:0x061c, B:233:0x0658, B:235:0x0660, B:238:0x0683, B:240:0x069e, B:247:0x06cd, B:248:0x06f7, B:250:0x0708, B:252:0x0710, B:253:0x0724, B:262:0x0736, B:264:0x0738, B:266:0x073d, B:268:0x074c, B:269:0x075a, B:271:0x0764, B:273:0x0777, B:275:0x0787, B:276:0x079a, B:278:0x07a5, B:279:0x07e0, B:284:0x07f5, B:291:0x0834, B:295:0x0857, B:301:0x0880, B:306:0x08a6, B:309:0x08b8, B:313:0x08df, B:314:0x08f0, B:315:0x08f1, B:315:0x08f1, B:316:0x08f4, B:318:0x08fd, B:319:0x0909, B:321:0x0910, B:322:0x091c, B:324:0x092f, B:326:0x0939, B:329:0x0954, B:331:0x095b, B:334:0x0970, B:336:0x0988, B:338:0x0992, B:340:0x099e, B:342:0x09a5, B:344:0x09b0, B:346:0x09d5, B:348:0x0a17, B:350:0x0a2f, B:354:0x0a3f, B:355:0x0a62, B:359:0x0a6e, B:361:0x0a79, B:363:0x0ac1, B:365:0x0aca, B:367:0x0adf, B:369:0x0ae5, B:372:0x0af2, B:374:0x0af9, B:376:0x0b00, B:377:0x0b07, B:379:0x0b0d, B:382:0x0b14, B:384:0x0b1e, B:386:0x0b30, B:387:0x0b73, B:391:0x0b80, B:393:0x0b8a, B:395:0x0ba2, B:397:0x0bad, B:399:0x0bb7, B:400:0x0bbe, B:402:0x0bc7, B:404:0x0bd1, B:408:0x0bf5, B:412:0x0c07, B:414:0x0c11, B:416:0x0c1e, B:422:0x0c58, B:424:0x0c61, B:428:0x0c79, B:430:0x0c83, B:432:0x0ca4, B:434:0x0cae, B:438:0x0cc8, B:439:0x0cdc, B:440:0x0cf8, B:441:0x0cff, B:442:0x0d05, B:444:0x0d0c, B:445:0x0d1c, B:450:0x0d57, B:452:0x0d6a, B:457:0x0d7c, B:459:0x0d85, B:466:0x0d9f, B:476:0x0dc3, B:478:0x0dc8, B:480:0x0dce, B:482:0x0de3, B:484:0x0e01, B:488:0x0e24, B:491:0x0e31, B:493:0x0e3a, B:494:0x0e46, B:496:0x0e4e, B:500:0x0e5b, B:502:0x0e6b, B:503:0x0e76, B:507:0x0e8e, B:511:0x0e9e, B:513:0x0eb7, B:518:0x0ee9, B:521:0x0ef5, B:523:0x0f01, B:524:0x0f08, B:526:0x0f10, B:529:0x0f1b, B:532:0x0f27, B:534:0x0f39, B:536:0x0f40, B:540:0x0f52, B:541:0x0f61, B:543:0x0f68, B:546:0x0f71, B:549:0x0f79, B:550:0x0f84, B:552:0x0f8c, B:553:0x0f98, B:554:0x0fa0, B:554:0x0fa0, B:556:0x0fa5, B:561:0x0fb5, B:563:0x0fc5, B:564:0x0fd0, B:566:0x0fd8, B:567:0x0fe8, B:569:0x0ff0, B:571:0x0ffb, B:576:0x1014, B:578:0x1030, B:580:0x1042), top: B:603:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0517 A[Catch: IOException -> 0x1064, zzhd -> 0x1068, RuntimeException -> 0x106c, TRY_ENTER, TryCatch #9 {RuntimeException -> 0x106c, blocks: (B:2:0x0000, B:6:0x0052, B:8:0x0065, B:9:0x006d, B:12:0x0076, B:17:0x0085, B:22:0x0096, B:27:0x00ba, B:29:0x00c6, B:35:0x00e2, B:40:0x00fd, B:42:0x0104, B:44:0x0111, B:46:0x0121, B:49:0x012a, B:51:0x0131, B:53:0x0159, B:57:0x0165, B:59:0x016c, B:71:0x01ad, B:80:0x01c4, B:83:0x01c7, B:88:0x01d9, B:93:0x01de, B:95:0x01e0, B:97:0x01e6, B:101:0x01f2, B:104:0x01fc, B:107:0x0204, B:111:0x020e, B:114:0x021b, B:119:0x022f, B:121:0x0279, B:123:0x0287, B:125:0x0294, B:127:0x029e, B:133:0x02c1, B:139:0x02e2, B:141:0x02ee, B:145:0x02fc, B:147:0x0308, B:149:0x0313, B:152:0x0328, B:153:0x0333, B:155:0x033c, B:156:0x0355, B:159:0x0363, B:160:0x036f, B:162:0x0381, B:164:0x03a7, B:166:0x03b9, B:168:0x03c8, B:171:0x03d6, B:173:0x03dc, B:175:0x03eb, B:178:0x03f9, B:180:0x041c, B:182:0x0437, B:184:0x043c, B:186:0x0465, B:188:0x046c, B:190:0x048a, B:191:0x0494, B:192:0x04ba, B:194:0x04c8, B:196:0x04cf, B:197:0x04d9, B:200:0x0508, B:202:0x050f, B:203:0x0517, B:206:0x0520, B:209:0x0533, B:212:0x0549, B:213:0x0553, B:215:0x05a3, B:217:0x05a9, B:221:0x05c4, B:222:0x05cd, B:223:0x05e8, B:229:0x0610, B:231:0x061c, B:233:0x0658, B:235:0x0660, B:238:0x0683, B:240:0x069e, B:247:0x06cd, B:248:0x06f7, B:250:0x0708, B:252:0x0710, B:253:0x0724, B:262:0x0736, B:264:0x0738, B:266:0x073d, B:268:0x074c, B:269:0x075a, B:271:0x0764, B:273:0x0777, B:275:0x0787, B:276:0x079a, B:278:0x07a5, B:279:0x07e0, B:284:0x07f5, B:291:0x0834, B:295:0x0857, B:301:0x0880, B:306:0x08a6, B:309:0x08b8, B:313:0x08df, B:314:0x08f0, B:315:0x08f1, B:315:0x08f1, B:316:0x08f4, B:318:0x08fd, B:319:0x0909, B:321:0x0910, B:322:0x091c, B:324:0x092f, B:326:0x0939, B:329:0x0954, B:331:0x095b, B:334:0x0970, B:336:0x0988, B:338:0x0992, B:340:0x099e, B:342:0x09a5, B:344:0x09b0, B:346:0x09d5, B:348:0x0a17, B:350:0x0a2f, B:354:0x0a3f, B:355:0x0a62, B:359:0x0a6e, B:361:0x0a79, B:363:0x0ac1, B:365:0x0aca, B:367:0x0adf, B:369:0x0ae5, B:372:0x0af2, B:374:0x0af9, B:376:0x0b00, B:377:0x0b07, B:379:0x0b0d, B:382:0x0b14, B:384:0x0b1e, B:386:0x0b30, B:387:0x0b73, B:391:0x0b80, B:393:0x0b8a, B:395:0x0ba2, B:397:0x0bad, B:399:0x0bb7, B:400:0x0bbe, B:402:0x0bc7, B:404:0x0bd1, B:408:0x0bf5, B:412:0x0c07, B:414:0x0c11, B:416:0x0c1e, B:422:0x0c58, B:424:0x0c61, B:428:0x0c79, B:430:0x0c83, B:432:0x0ca4, B:434:0x0cae, B:438:0x0cc8, B:439:0x0cdc, B:440:0x0cf8, B:441:0x0cff, B:442:0x0d05, B:444:0x0d0c, B:445:0x0d1c, B:450:0x0d57, B:452:0x0d6a, B:457:0x0d7c, B:459:0x0d85, B:466:0x0d9f, B:476:0x0dc3, B:478:0x0dc8, B:480:0x0dce, B:482:0x0de3, B:484:0x0e01, B:488:0x0e24, B:491:0x0e31, B:493:0x0e3a, B:494:0x0e46, B:496:0x0e4e, B:500:0x0e5b, B:502:0x0e6b, B:503:0x0e76, B:507:0x0e8e, B:511:0x0e9e, B:513:0x0eb7, B:518:0x0ee9, B:521:0x0ef5, B:523:0x0f01, B:524:0x0f08, B:526:0x0f10, B:529:0x0f1b, B:532:0x0f27, B:534:0x0f39, B:536:0x0f40, B:540:0x0f52, B:541:0x0f61, B:543:0x0f68, B:546:0x0f71, B:549:0x0f79, B:550:0x0f84, B:552:0x0f8c, B:553:0x0f98, B:554:0x0fa0, B:554:0x0fa0, B:556:0x0fa5, B:561:0x0fb5, B:563:0x0fc5, B:564:0x0fd0, B:566:0x0fd8, B:567:0x0fe8, B:569:0x0ff0, B:571:0x0ffb, B:576:0x1014, B:578:0x1030, B:580:0x1042), top: B:603:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0520 A[Catch: IOException -> 0x1064, zzhd -> 0x1068, RuntimeException -> 0x106c, TRY_ENTER, TRY_LEAVE, TryCatch #9 {RuntimeException -> 0x106c, blocks: (B:2:0x0000, B:6:0x0052, B:8:0x0065, B:9:0x006d, B:12:0x0076, B:17:0x0085, B:22:0x0096, B:27:0x00ba, B:29:0x00c6, B:35:0x00e2, B:40:0x00fd, B:42:0x0104, B:44:0x0111, B:46:0x0121, B:49:0x012a, B:51:0x0131, B:53:0x0159, B:57:0x0165, B:59:0x016c, B:71:0x01ad, B:80:0x01c4, B:83:0x01c7, B:88:0x01d9, B:93:0x01de, B:95:0x01e0, B:97:0x01e6, B:101:0x01f2, B:104:0x01fc, B:107:0x0204, B:111:0x020e, B:114:0x021b, B:119:0x022f, B:121:0x0279, B:123:0x0287, B:125:0x0294, B:127:0x029e, B:133:0x02c1, B:139:0x02e2, B:141:0x02ee, B:145:0x02fc, B:147:0x0308, B:149:0x0313, B:152:0x0328, B:153:0x0333, B:155:0x033c, B:156:0x0355, B:159:0x0363, B:160:0x036f, B:162:0x0381, B:164:0x03a7, B:166:0x03b9, B:168:0x03c8, B:171:0x03d6, B:173:0x03dc, B:175:0x03eb, B:178:0x03f9, B:180:0x041c, B:182:0x0437, B:184:0x043c, B:186:0x0465, B:188:0x046c, B:190:0x048a, B:191:0x0494, B:192:0x04ba, B:194:0x04c8, B:196:0x04cf, B:197:0x04d9, B:200:0x0508, B:202:0x050f, B:203:0x0517, B:206:0x0520, B:209:0x0533, B:212:0x0549, B:213:0x0553, B:215:0x05a3, B:217:0x05a9, B:221:0x05c4, B:222:0x05cd, B:223:0x05e8, B:229:0x0610, B:231:0x061c, B:233:0x0658, B:235:0x0660, B:238:0x0683, B:240:0x069e, B:247:0x06cd, B:248:0x06f7, B:250:0x0708, B:252:0x0710, B:253:0x0724, B:262:0x0736, B:264:0x0738, B:266:0x073d, B:268:0x074c, B:269:0x075a, B:271:0x0764, B:273:0x0777, B:275:0x0787, B:276:0x079a, B:278:0x07a5, B:279:0x07e0, B:284:0x07f5, B:291:0x0834, B:295:0x0857, B:301:0x0880, B:306:0x08a6, B:309:0x08b8, B:313:0x08df, B:314:0x08f0, B:315:0x08f1, B:315:0x08f1, B:316:0x08f4, B:318:0x08fd, B:319:0x0909, B:321:0x0910, B:322:0x091c, B:324:0x092f, B:326:0x0939, B:329:0x0954, B:331:0x095b, B:334:0x0970, B:336:0x0988, B:338:0x0992, B:340:0x099e, B:342:0x09a5, B:344:0x09b0, B:346:0x09d5, B:348:0x0a17, B:350:0x0a2f, B:354:0x0a3f, B:355:0x0a62, B:359:0x0a6e, B:361:0x0a79, B:363:0x0ac1, B:365:0x0aca, B:367:0x0adf, B:369:0x0ae5, B:372:0x0af2, B:374:0x0af9, B:376:0x0b00, B:377:0x0b07, B:379:0x0b0d, B:382:0x0b14, B:384:0x0b1e, B:386:0x0b30, B:387:0x0b73, B:391:0x0b80, B:393:0x0b8a, B:395:0x0ba2, B:397:0x0bad, B:399:0x0bb7, B:400:0x0bbe, B:402:0x0bc7, B:404:0x0bd1, B:408:0x0bf5, B:412:0x0c07, B:414:0x0c11, B:416:0x0c1e, B:422:0x0c58, B:424:0x0c61, B:428:0x0c79, B:430:0x0c83, B:432:0x0ca4, B:434:0x0cae, B:438:0x0cc8, B:439:0x0cdc, B:440:0x0cf8, B:441:0x0cff, B:442:0x0d05, B:444:0x0d0c, B:445:0x0d1c, B:450:0x0d57, B:452:0x0d6a, B:457:0x0d7c, B:459:0x0d85, B:466:0x0d9f, B:476:0x0dc3, B:478:0x0dc8, B:480:0x0dce, B:482:0x0de3, B:484:0x0e01, B:488:0x0e24, B:491:0x0e31, B:493:0x0e3a, B:494:0x0e46, B:496:0x0e4e, B:500:0x0e5b, B:502:0x0e6b, B:503:0x0e76, B:507:0x0e8e, B:511:0x0e9e, B:513:0x0eb7, B:518:0x0ee9, B:521:0x0ef5, B:523:0x0f01, B:524:0x0f08, B:526:0x0f10, B:529:0x0f1b, B:532:0x0f27, B:534:0x0f39, B:536:0x0f40, B:540:0x0f52, B:541:0x0f61, B:543:0x0f68, B:546:0x0f71, B:549:0x0f79, B:550:0x0f84, B:552:0x0f8c, B:553:0x0f98, B:554:0x0fa0, B:554:0x0fa0, B:556:0x0fa5, B:561:0x0fb5, B:563:0x0fc5, B:564:0x0fd0, B:566:0x0fd8, B:567:0x0fe8, B:569:0x0ff0, B:571:0x0ffb, B:576:0x1014, B:578:0x1030, B:580:0x1042), top: B:603:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:352:0x0a35  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x0a3f A[Catch: IOException -> 0x1064, zzhd -> 0x1068, RuntimeException -> 0x106c, TRY_ENTER, TRY_LEAVE, TryCatch #9 {RuntimeException -> 0x106c, blocks: (B:2:0x0000, B:6:0x0052, B:8:0x0065, B:9:0x006d, B:12:0x0076, B:17:0x0085, B:22:0x0096, B:27:0x00ba, B:29:0x00c6, B:35:0x00e2, B:40:0x00fd, B:42:0x0104, B:44:0x0111, B:46:0x0121, B:49:0x012a, B:51:0x0131, B:53:0x0159, B:57:0x0165, B:59:0x016c, B:71:0x01ad, B:80:0x01c4, B:83:0x01c7, B:88:0x01d9, B:93:0x01de, B:95:0x01e0, B:97:0x01e6, B:101:0x01f2, B:104:0x01fc, B:107:0x0204, B:111:0x020e, B:114:0x021b, B:119:0x022f, B:121:0x0279, B:123:0x0287, B:125:0x0294, B:127:0x029e, B:133:0x02c1, B:139:0x02e2, B:141:0x02ee, B:145:0x02fc, B:147:0x0308, B:149:0x0313, B:152:0x0328, B:153:0x0333, B:155:0x033c, B:156:0x0355, B:159:0x0363, B:160:0x036f, B:162:0x0381, B:164:0x03a7, B:166:0x03b9, B:168:0x03c8, B:171:0x03d6, B:173:0x03dc, B:175:0x03eb, B:178:0x03f9, B:180:0x041c, B:182:0x0437, B:184:0x043c, B:186:0x0465, B:188:0x046c, B:190:0x048a, B:191:0x0494, B:192:0x04ba, B:194:0x04c8, B:196:0x04cf, B:197:0x04d9, B:200:0x0508, B:202:0x050f, B:203:0x0517, B:206:0x0520, B:209:0x0533, B:212:0x0549, B:213:0x0553, B:215:0x05a3, B:217:0x05a9, B:221:0x05c4, B:222:0x05cd, B:223:0x05e8, B:229:0x0610, B:231:0x061c, B:233:0x0658, B:235:0x0660, B:238:0x0683, B:240:0x069e, B:247:0x06cd, B:248:0x06f7, B:250:0x0708, B:252:0x0710, B:253:0x0724, B:262:0x0736, B:264:0x0738, B:266:0x073d, B:268:0x074c, B:269:0x075a, B:271:0x0764, B:273:0x0777, B:275:0x0787, B:276:0x079a, B:278:0x07a5, B:279:0x07e0, B:284:0x07f5, B:291:0x0834, B:295:0x0857, B:301:0x0880, B:306:0x08a6, B:309:0x08b8, B:313:0x08df, B:314:0x08f0, B:315:0x08f1, B:315:0x08f1, B:316:0x08f4, B:318:0x08fd, B:319:0x0909, B:321:0x0910, B:322:0x091c, B:324:0x092f, B:326:0x0939, B:329:0x0954, B:331:0x095b, B:334:0x0970, B:336:0x0988, B:338:0x0992, B:340:0x099e, B:342:0x09a5, B:344:0x09b0, B:346:0x09d5, B:348:0x0a17, B:350:0x0a2f, B:354:0x0a3f, B:355:0x0a62, B:359:0x0a6e, B:361:0x0a79, B:363:0x0ac1, B:365:0x0aca, B:367:0x0adf, B:369:0x0ae5, B:372:0x0af2, B:374:0x0af9, B:376:0x0b00, B:377:0x0b07, B:379:0x0b0d, B:382:0x0b14, B:384:0x0b1e, B:386:0x0b30, B:387:0x0b73, B:391:0x0b80, B:393:0x0b8a, B:395:0x0ba2, B:397:0x0bad, B:399:0x0bb7, B:400:0x0bbe, B:402:0x0bc7, B:404:0x0bd1, B:408:0x0bf5, B:412:0x0c07, B:414:0x0c11, B:416:0x0c1e, B:422:0x0c58, B:424:0x0c61, B:428:0x0c79, B:430:0x0c83, B:432:0x0ca4, B:434:0x0cae, B:438:0x0cc8, B:439:0x0cdc, B:440:0x0cf8, B:441:0x0cff, B:442:0x0d05, B:444:0x0d0c, B:445:0x0d1c, B:450:0x0d57, B:452:0x0d6a, B:457:0x0d7c, B:459:0x0d85, B:466:0x0d9f, B:476:0x0dc3, B:478:0x0dc8, B:480:0x0dce, B:482:0x0de3, B:484:0x0e01, B:488:0x0e24, B:491:0x0e31, B:493:0x0e3a, B:494:0x0e46, B:496:0x0e4e, B:500:0x0e5b, B:502:0x0e6b, B:503:0x0e76, B:507:0x0e8e, B:511:0x0e9e, B:513:0x0eb7, B:518:0x0ee9, B:521:0x0ef5, B:523:0x0f01, B:524:0x0f08, B:526:0x0f10, B:529:0x0f1b, B:532:0x0f27, B:534:0x0f39, B:536:0x0f40, B:540:0x0f52, B:541:0x0f61, B:543:0x0f68, B:546:0x0f71, B:549:0x0f79, B:550:0x0f84, B:552:0x0f8c, B:553:0x0f98, B:554:0x0fa0, B:554:0x0fa0, B:556:0x0fa5, B:561:0x0fb5, B:563:0x0fc5, B:564:0x0fd0, B:566:0x0fd8, B:567:0x0fe8, B:569:0x0ff0, B:571:0x0ffb, B:576:0x1014, B:578:0x1030, B:580:0x1042), top: B:603:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:357:0x0a69  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x0a6e A[Catch: IOException -> 0x1064, zzhd -> 0x1068, RuntimeException -> 0x106c, TRY_ENTER, TryCatch #9 {RuntimeException -> 0x106c, blocks: (B:2:0x0000, B:6:0x0052, B:8:0x0065, B:9:0x006d, B:12:0x0076, B:17:0x0085, B:22:0x0096, B:27:0x00ba, B:29:0x00c6, B:35:0x00e2, B:40:0x00fd, B:42:0x0104, B:44:0x0111, B:46:0x0121, B:49:0x012a, B:51:0x0131, B:53:0x0159, B:57:0x0165, B:59:0x016c, B:71:0x01ad, B:80:0x01c4, B:83:0x01c7, B:88:0x01d9, B:93:0x01de, B:95:0x01e0, B:97:0x01e6, B:101:0x01f2, B:104:0x01fc, B:107:0x0204, B:111:0x020e, B:114:0x021b, B:119:0x022f, B:121:0x0279, B:123:0x0287, B:125:0x0294, B:127:0x029e, B:133:0x02c1, B:139:0x02e2, B:141:0x02ee, B:145:0x02fc, B:147:0x0308, B:149:0x0313, B:152:0x0328, B:153:0x0333, B:155:0x033c, B:156:0x0355, B:159:0x0363, B:160:0x036f, B:162:0x0381, B:164:0x03a7, B:166:0x03b9, B:168:0x03c8, B:171:0x03d6, B:173:0x03dc, B:175:0x03eb, B:178:0x03f9, B:180:0x041c, B:182:0x0437, B:184:0x043c, B:186:0x0465, B:188:0x046c, B:190:0x048a, B:191:0x0494, B:192:0x04ba, B:194:0x04c8, B:196:0x04cf, B:197:0x04d9, B:200:0x0508, B:202:0x050f, B:203:0x0517, B:206:0x0520, B:209:0x0533, B:212:0x0549, B:213:0x0553, B:215:0x05a3, B:217:0x05a9, B:221:0x05c4, B:222:0x05cd, B:223:0x05e8, B:229:0x0610, B:231:0x061c, B:233:0x0658, B:235:0x0660, B:238:0x0683, B:240:0x069e, B:247:0x06cd, B:248:0x06f7, B:250:0x0708, B:252:0x0710, B:253:0x0724, B:262:0x0736, B:264:0x0738, B:266:0x073d, B:268:0x074c, B:269:0x075a, B:271:0x0764, B:273:0x0777, B:275:0x0787, B:276:0x079a, B:278:0x07a5, B:279:0x07e0, B:284:0x07f5, B:291:0x0834, B:295:0x0857, B:301:0x0880, B:306:0x08a6, B:309:0x08b8, B:313:0x08df, B:314:0x08f0, B:315:0x08f1, B:315:0x08f1, B:316:0x08f4, B:318:0x08fd, B:319:0x0909, B:321:0x0910, B:322:0x091c, B:324:0x092f, B:326:0x0939, B:329:0x0954, B:331:0x095b, B:334:0x0970, B:336:0x0988, B:338:0x0992, B:340:0x099e, B:342:0x09a5, B:344:0x09b0, B:346:0x09d5, B:348:0x0a17, B:350:0x0a2f, B:354:0x0a3f, B:355:0x0a62, B:359:0x0a6e, B:361:0x0a79, B:363:0x0ac1, B:365:0x0aca, B:367:0x0adf, B:369:0x0ae5, B:372:0x0af2, B:374:0x0af9, B:376:0x0b00, B:377:0x0b07, B:379:0x0b0d, B:382:0x0b14, B:384:0x0b1e, B:386:0x0b30, B:387:0x0b73, B:391:0x0b80, B:393:0x0b8a, B:395:0x0ba2, B:397:0x0bad, B:399:0x0bb7, B:400:0x0bbe, B:402:0x0bc7, B:404:0x0bd1, B:408:0x0bf5, B:412:0x0c07, B:414:0x0c11, B:416:0x0c1e, B:422:0x0c58, B:424:0x0c61, B:428:0x0c79, B:430:0x0c83, B:432:0x0ca4, B:434:0x0cae, B:438:0x0cc8, B:439:0x0cdc, B:440:0x0cf8, B:441:0x0cff, B:442:0x0d05, B:444:0x0d0c, B:445:0x0d1c, B:450:0x0d57, B:452:0x0d6a, B:457:0x0d7c, B:459:0x0d85, B:466:0x0d9f, B:476:0x0dc3, B:478:0x0dc8, B:480:0x0dce, B:482:0x0de3, B:484:0x0e01, B:488:0x0e24, B:491:0x0e31, B:493:0x0e3a, B:494:0x0e46, B:496:0x0e4e, B:500:0x0e5b, B:502:0x0e6b, B:503:0x0e76, B:507:0x0e8e, B:511:0x0e9e, B:513:0x0eb7, B:518:0x0ee9, B:521:0x0ef5, B:523:0x0f01, B:524:0x0f08, B:526:0x0f10, B:529:0x0f1b, B:532:0x0f27, B:534:0x0f39, B:536:0x0f40, B:540:0x0f52, B:541:0x0f61, B:543:0x0f68, B:546:0x0f71, B:549:0x0f79, B:550:0x0f84, B:552:0x0f8c, B:553:0x0f98, B:554:0x0fa0, B:554:0x0fa0, B:556:0x0fa5, B:561:0x0fb5, B:563:0x0fc5, B:564:0x0fd0, B:566:0x0fd8, B:567:0x0fe8, B:569:0x0ff0, B:571:0x0ffb, B:576:0x1014, B:578:0x1030, B:580:0x1042), top: B:603:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:363:0x0ac1 A[Catch: IOException -> 0x1064, zzhd -> 0x1068, RuntimeException -> 0x106c, TryCatch #9 {RuntimeException -> 0x106c, blocks: (B:2:0x0000, B:6:0x0052, B:8:0x0065, B:9:0x006d, B:12:0x0076, B:17:0x0085, B:22:0x0096, B:27:0x00ba, B:29:0x00c6, B:35:0x00e2, B:40:0x00fd, B:42:0x0104, B:44:0x0111, B:46:0x0121, B:49:0x012a, B:51:0x0131, B:53:0x0159, B:57:0x0165, B:59:0x016c, B:71:0x01ad, B:80:0x01c4, B:83:0x01c7, B:88:0x01d9, B:93:0x01de, B:95:0x01e0, B:97:0x01e6, B:101:0x01f2, B:104:0x01fc, B:107:0x0204, B:111:0x020e, B:114:0x021b, B:119:0x022f, B:121:0x0279, B:123:0x0287, B:125:0x0294, B:127:0x029e, B:133:0x02c1, B:139:0x02e2, B:141:0x02ee, B:145:0x02fc, B:147:0x0308, B:149:0x0313, B:152:0x0328, B:153:0x0333, B:155:0x033c, B:156:0x0355, B:159:0x0363, B:160:0x036f, B:162:0x0381, B:164:0x03a7, B:166:0x03b9, B:168:0x03c8, B:171:0x03d6, B:173:0x03dc, B:175:0x03eb, B:178:0x03f9, B:180:0x041c, B:182:0x0437, B:184:0x043c, B:186:0x0465, B:188:0x046c, B:190:0x048a, B:191:0x0494, B:192:0x04ba, B:194:0x04c8, B:196:0x04cf, B:197:0x04d9, B:200:0x0508, B:202:0x050f, B:203:0x0517, B:206:0x0520, B:209:0x0533, B:212:0x0549, B:213:0x0553, B:215:0x05a3, B:217:0x05a9, B:221:0x05c4, B:222:0x05cd, B:223:0x05e8, B:229:0x0610, B:231:0x061c, B:233:0x0658, B:235:0x0660, B:238:0x0683, B:240:0x069e, B:247:0x06cd, B:248:0x06f7, B:250:0x0708, B:252:0x0710, B:253:0x0724, B:262:0x0736, B:264:0x0738, B:266:0x073d, B:268:0x074c, B:269:0x075a, B:271:0x0764, B:273:0x0777, B:275:0x0787, B:276:0x079a, B:278:0x07a5, B:279:0x07e0, B:284:0x07f5, B:291:0x0834, B:295:0x0857, B:301:0x0880, B:306:0x08a6, B:309:0x08b8, B:313:0x08df, B:314:0x08f0, B:315:0x08f1, B:315:0x08f1, B:316:0x08f4, B:318:0x08fd, B:319:0x0909, B:321:0x0910, B:322:0x091c, B:324:0x092f, B:326:0x0939, B:329:0x0954, B:331:0x095b, B:334:0x0970, B:336:0x0988, B:338:0x0992, B:340:0x099e, B:342:0x09a5, B:344:0x09b0, B:346:0x09d5, B:348:0x0a17, B:350:0x0a2f, B:354:0x0a3f, B:355:0x0a62, B:359:0x0a6e, B:361:0x0a79, B:363:0x0ac1, B:365:0x0aca, B:367:0x0adf, B:369:0x0ae5, B:372:0x0af2, B:374:0x0af9, B:376:0x0b00, B:377:0x0b07, B:379:0x0b0d, B:382:0x0b14, B:384:0x0b1e, B:386:0x0b30, B:387:0x0b73, B:391:0x0b80, B:393:0x0b8a, B:395:0x0ba2, B:397:0x0bad, B:399:0x0bb7, B:400:0x0bbe, B:402:0x0bc7, B:404:0x0bd1, B:408:0x0bf5, B:412:0x0c07, B:414:0x0c11, B:416:0x0c1e, B:422:0x0c58, B:424:0x0c61, B:428:0x0c79, B:430:0x0c83, B:432:0x0ca4, B:434:0x0cae, B:438:0x0cc8, B:439:0x0cdc, B:440:0x0cf8, B:441:0x0cff, B:442:0x0d05, B:444:0x0d0c, B:445:0x0d1c, B:450:0x0d57, B:452:0x0d6a, B:457:0x0d7c, B:459:0x0d85, B:466:0x0d9f, B:476:0x0dc3, B:478:0x0dc8, B:480:0x0dce, B:482:0x0de3, B:484:0x0e01, B:488:0x0e24, B:491:0x0e31, B:493:0x0e3a, B:494:0x0e46, B:496:0x0e4e, B:500:0x0e5b, B:502:0x0e6b, B:503:0x0e76, B:507:0x0e8e, B:511:0x0e9e, B:513:0x0eb7, B:518:0x0ee9, B:521:0x0ef5, B:523:0x0f01, B:524:0x0f08, B:526:0x0f10, B:529:0x0f1b, B:532:0x0f27, B:534:0x0f39, B:536:0x0f40, B:540:0x0f52, B:541:0x0f61, B:543:0x0f68, B:546:0x0f71, B:549:0x0f79, B:550:0x0f84, B:552:0x0f8c, B:553:0x0f98, B:554:0x0fa0, B:554:0x0fa0, B:556:0x0fa5, B:561:0x0fb5, B:563:0x0fc5, B:564:0x0fd0, B:566:0x0fd8, B:567:0x0fe8, B:569:0x0ff0, B:571:0x0ffb, B:576:0x1014, B:578:0x1030, B:580:0x1042), top: B:603:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:369:0x0ae5 A[Catch: IOException -> 0x1064, zzhd -> 0x1068, RuntimeException -> 0x106c, TryCatch #9 {RuntimeException -> 0x106c, blocks: (B:2:0x0000, B:6:0x0052, B:8:0x0065, B:9:0x006d, B:12:0x0076, B:17:0x0085, B:22:0x0096, B:27:0x00ba, B:29:0x00c6, B:35:0x00e2, B:40:0x00fd, B:42:0x0104, B:44:0x0111, B:46:0x0121, B:49:0x012a, B:51:0x0131, B:53:0x0159, B:57:0x0165, B:59:0x016c, B:71:0x01ad, B:80:0x01c4, B:83:0x01c7, B:88:0x01d9, B:93:0x01de, B:95:0x01e0, B:97:0x01e6, B:101:0x01f2, B:104:0x01fc, B:107:0x0204, B:111:0x020e, B:114:0x021b, B:119:0x022f, B:121:0x0279, B:123:0x0287, B:125:0x0294, B:127:0x029e, B:133:0x02c1, B:139:0x02e2, B:141:0x02ee, B:145:0x02fc, B:147:0x0308, B:149:0x0313, B:152:0x0328, B:153:0x0333, B:155:0x033c, B:156:0x0355, B:159:0x0363, B:160:0x036f, B:162:0x0381, B:164:0x03a7, B:166:0x03b9, B:168:0x03c8, B:171:0x03d6, B:173:0x03dc, B:175:0x03eb, B:178:0x03f9, B:180:0x041c, B:182:0x0437, B:184:0x043c, B:186:0x0465, B:188:0x046c, B:190:0x048a, B:191:0x0494, B:192:0x04ba, B:194:0x04c8, B:196:0x04cf, B:197:0x04d9, B:200:0x0508, B:202:0x050f, B:203:0x0517, B:206:0x0520, B:209:0x0533, B:212:0x0549, B:213:0x0553, B:215:0x05a3, B:217:0x05a9, B:221:0x05c4, B:222:0x05cd, B:223:0x05e8, B:229:0x0610, B:231:0x061c, B:233:0x0658, B:235:0x0660, B:238:0x0683, B:240:0x069e, B:247:0x06cd, B:248:0x06f7, B:250:0x0708, B:252:0x0710, B:253:0x0724, B:262:0x0736, B:264:0x0738, B:266:0x073d, B:268:0x074c, B:269:0x075a, B:271:0x0764, B:273:0x0777, B:275:0x0787, B:276:0x079a, B:278:0x07a5, B:279:0x07e0, B:284:0x07f5, B:291:0x0834, B:295:0x0857, B:301:0x0880, B:306:0x08a6, B:309:0x08b8, B:313:0x08df, B:314:0x08f0, B:315:0x08f1, B:315:0x08f1, B:316:0x08f4, B:318:0x08fd, B:319:0x0909, B:321:0x0910, B:322:0x091c, B:324:0x092f, B:326:0x0939, B:329:0x0954, B:331:0x095b, B:334:0x0970, B:336:0x0988, B:338:0x0992, B:340:0x099e, B:342:0x09a5, B:344:0x09b0, B:346:0x09d5, B:348:0x0a17, B:350:0x0a2f, B:354:0x0a3f, B:355:0x0a62, B:359:0x0a6e, B:361:0x0a79, B:363:0x0ac1, B:365:0x0aca, B:367:0x0adf, B:369:0x0ae5, B:372:0x0af2, B:374:0x0af9, B:376:0x0b00, B:377:0x0b07, B:379:0x0b0d, B:382:0x0b14, B:384:0x0b1e, B:386:0x0b30, B:387:0x0b73, B:391:0x0b80, B:393:0x0b8a, B:395:0x0ba2, B:397:0x0bad, B:399:0x0bb7, B:400:0x0bbe, B:402:0x0bc7, B:404:0x0bd1, B:408:0x0bf5, B:412:0x0c07, B:414:0x0c11, B:416:0x0c1e, B:422:0x0c58, B:424:0x0c61, B:428:0x0c79, B:430:0x0c83, B:432:0x0ca4, B:434:0x0cae, B:438:0x0cc8, B:439:0x0cdc, B:440:0x0cf8, B:441:0x0cff, B:442:0x0d05, B:444:0x0d0c, B:445:0x0d1c, B:450:0x0d57, B:452:0x0d6a, B:457:0x0d7c, B:459:0x0d85, B:466:0x0d9f, B:476:0x0dc3, B:478:0x0dc8, B:480:0x0dce, B:482:0x0de3, B:484:0x0e01, B:488:0x0e24, B:491:0x0e31, B:493:0x0e3a, B:494:0x0e46, B:496:0x0e4e, B:500:0x0e5b, B:502:0x0e6b, B:503:0x0e76, B:507:0x0e8e, B:511:0x0e9e, B:513:0x0eb7, B:518:0x0ee9, B:521:0x0ef5, B:523:0x0f01, B:524:0x0f08, B:526:0x0f10, B:529:0x0f1b, B:532:0x0f27, B:534:0x0f39, B:536:0x0f40, B:540:0x0f52, B:541:0x0f61, B:543:0x0f68, B:546:0x0f71, B:549:0x0f79, B:550:0x0f84, B:552:0x0f8c, B:553:0x0f98, B:554:0x0fa0, B:554:0x0fa0, B:556:0x0fa5, B:561:0x0fb5, B:563:0x0fc5, B:564:0x0fd0, B:566:0x0fd8, B:567:0x0fe8, B:569:0x0ff0, B:571:0x0ffb, B:576:0x1014, B:578:0x1030, B:580:0x1042), top: B:603:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0b13 A[LOOP:7: B:381:0x0b13->B:386:0x0b30, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:466:0x0d9f A[Catch: IOException -> 0x1064, zzhd -> 0x1068, RuntimeException -> 0x106c, TRY_ENTER, TryCatch #9 {RuntimeException -> 0x106c, blocks: (B:2:0x0000, B:6:0x0052, B:8:0x0065, B:9:0x006d, B:12:0x0076, B:17:0x0085, B:22:0x0096, B:27:0x00ba, B:29:0x00c6, B:35:0x00e2, B:40:0x00fd, B:42:0x0104, B:44:0x0111, B:46:0x0121, B:49:0x012a, B:51:0x0131, B:53:0x0159, B:57:0x0165, B:59:0x016c, B:71:0x01ad, B:80:0x01c4, B:83:0x01c7, B:88:0x01d9, B:93:0x01de, B:95:0x01e0, B:97:0x01e6, B:101:0x01f2, B:104:0x01fc, B:107:0x0204, B:111:0x020e, B:114:0x021b, B:119:0x022f, B:121:0x0279, B:123:0x0287, B:125:0x0294, B:127:0x029e, B:133:0x02c1, B:139:0x02e2, B:141:0x02ee, B:145:0x02fc, B:147:0x0308, B:149:0x0313, B:152:0x0328, B:153:0x0333, B:155:0x033c, B:156:0x0355, B:159:0x0363, B:160:0x036f, B:162:0x0381, B:164:0x03a7, B:166:0x03b9, B:168:0x03c8, B:171:0x03d6, B:173:0x03dc, B:175:0x03eb, B:178:0x03f9, B:180:0x041c, B:182:0x0437, B:184:0x043c, B:186:0x0465, B:188:0x046c, B:190:0x048a, B:191:0x0494, B:192:0x04ba, B:194:0x04c8, B:196:0x04cf, B:197:0x04d9, B:200:0x0508, B:202:0x050f, B:203:0x0517, B:206:0x0520, B:209:0x0533, B:212:0x0549, B:213:0x0553, B:215:0x05a3, B:217:0x05a9, B:221:0x05c4, B:222:0x05cd, B:223:0x05e8, B:229:0x0610, B:231:0x061c, B:233:0x0658, B:235:0x0660, B:238:0x0683, B:240:0x069e, B:247:0x06cd, B:248:0x06f7, B:250:0x0708, B:252:0x0710, B:253:0x0724, B:262:0x0736, B:264:0x0738, B:266:0x073d, B:268:0x074c, B:269:0x075a, B:271:0x0764, B:273:0x0777, B:275:0x0787, B:276:0x079a, B:278:0x07a5, B:279:0x07e0, B:284:0x07f5, B:291:0x0834, B:295:0x0857, B:301:0x0880, B:306:0x08a6, B:309:0x08b8, B:313:0x08df, B:314:0x08f0, B:315:0x08f1, B:315:0x08f1, B:316:0x08f4, B:318:0x08fd, B:319:0x0909, B:321:0x0910, B:322:0x091c, B:324:0x092f, B:326:0x0939, B:329:0x0954, B:331:0x095b, B:334:0x0970, B:336:0x0988, B:338:0x0992, B:340:0x099e, B:342:0x09a5, B:344:0x09b0, B:346:0x09d5, B:348:0x0a17, B:350:0x0a2f, B:354:0x0a3f, B:355:0x0a62, B:359:0x0a6e, B:361:0x0a79, B:363:0x0ac1, B:365:0x0aca, B:367:0x0adf, B:369:0x0ae5, B:372:0x0af2, B:374:0x0af9, B:376:0x0b00, B:377:0x0b07, B:379:0x0b0d, B:382:0x0b14, B:384:0x0b1e, B:386:0x0b30, B:387:0x0b73, B:391:0x0b80, B:393:0x0b8a, B:395:0x0ba2, B:397:0x0bad, B:399:0x0bb7, B:400:0x0bbe, B:402:0x0bc7, B:404:0x0bd1, B:408:0x0bf5, B:412:0x0c07, B:414:0x0c11, B:416:0x0c1e, B:422:0x0c58, B:424:0x0c61, B:428:0x0c79, B:430:0x0c83, B:432:0x0ca4, B:434:0x0cae, B:438:0x0cc8, B:439:0x0cdc, B:440:0x0cf8, B:441:0x0cff, B:442:0x0d05, B:444:0x0d0c, B:445:0x0d1c, B:450:0x0d57, B:452:0x0d6a, B:457:0x0d7c, B:459:0x0d85, B:466:0x0d9f, B:476:0x0dc3, B:478:0x0dc8, B:480:0x0dce, B:482:0x0de3, B:484:0x0e01, B:488:0x0e24, B:491:0x0e31, B:493:0x0e3a, B:494:0x0e46, B:496:0x0e4e, B:500:0x0e5b, B:502:0x0e6b, B:503:0x0e76, B:507:0x0e8e, B:511:0x0e9e, B:513:0x0eb7, B:518:0x0ee9, B:521:0x0ef5, B:523:0x0f01, B:524:0x0f08, B:526:0x0f10, B:529:0x0f1b, B:532:0x0f27, B:534:0x0f39, B:536:0x0f40, B:540:0x0f52, B:541:0x0f61, B:543:0x0f68, B:546:0x0f71, B:549:0x0f79, B:550:0x0f84, B:552:0x0f8c, B:553:0x0f98, B:554:0x0fa0, B:554:0x0fa0, B:556:0x0fa5, B:561:0x0fb5, B:563:0x0fc5, B:564:0x0fd0, B:566:0x0fd8, B:567:0x0fe8, B:569:0x0ff0, B:571:0x0ffb, B:576:0x1014, B:578:0x1030, B:580:0x1042), top: B:603:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:516:0x0edd  */
    /* JADX WARN: Type inference failed for: r18v10 */
    /* JADX WARN: Type inference failed for: r18v11 */
    /* JADX WARN: Type inference failed for: r18v2, types: [long] */
    /* JADX WARN: Type inference failed for: r29v0 */
    /* JADX WARN: Type inference failed for: r29v1, types: [long] */
    /* JADX WARN: Type inference failed for: r29v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r16) {
        /*
            Method dump skipped, instructions count: 4303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.ub0.handleMessage(android.os.Message):boolean");
    }

    /* renamed from: i */
    public final void m26246i() {
        tb0 tb0Var = this.f15601D;
        long a = !tb0Var.f15381j ? 0L : tb0Var.f15372a.mo11766a();
        if (a == Long.MIN_VALUE) {
            m26255b(false);
            return;
        }
        long b = this.f15600C - this.f15601D.m26320b();
        boolean a2 = this.f15608d.mo12022a(a - b);
        m26255b(a2);
        if (a2) {
            this.f15601D.f15372a.mo11765a(b);
        }
    }
}
