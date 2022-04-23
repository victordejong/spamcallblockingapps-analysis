package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.Binder;
import android.text.TextUtils;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;
import com.google.android.gms.measurement.internal.zzad;
import com.google.android.gms.measurement.internal.zzfh;
import com.google.android.gms.measurement.internal.zzh;
import com.google.android.gms.measurement.internal.zzl;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
import p081h.p203i.p204a.p224e.p235d.C6799g;
import p081h.p203i.p204a.p224e.p235d.C6801h;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p249s.C7086r;
/* renamed from: h.i.a.e.m.b.u0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/u0.class */
public final class BinderC9065u0 extends AbstractBinderC8979g {

    /* renamed from: a */
    public final C9061t3 f20677a;

    /* renamed from: b */
    public Boolean f20678b;
    @Nullable

    /* renamed from: c */
    public String f20679c;

    public BinderC9065u0(C9061t3 t3Var) {
        this(t3Var, null);
    }

    public BinderC9065u0(C9061t3 t3Var, @Nullable String str) {
        C7021t.m21290a(t3Var);
        this.f20677a = t3Var;
        this.f20679c = null;
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    @BinderThread
    /* renamed from: a */
    public final String mo16143a(zzh zzhVar) {
        m16130b(zzhVar, false);
        return this.f20677a.m16173e(zzhVar);
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    @BinderThread
    /* renamed from: a */
    public final List<zzfh> mo16142a(zzh zzhVar, boolean z) {
        m16130b(zzhVar, false);
        try {
            List<C8953b4> list = (List) this.f20677a.mo16214a().m16363a(new CallableC9011l1(this, zzhVar)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C8953b4 b4Var : list) {
                if (z || !C8959c4.m16702h(b4Var.f20238c)) {
                    arrayList.add(new zzfh(b4Var));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f20677a.mo16178c().m16375s().m16336a("Failed to get user attributes. appId", C9027o.m16380a(zzhVar.f7158a), e);
            return null;
        }
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    @BinderThread
    /* renamed from: a */
    public final List<zzl> mo16137a(String str, String str2, zzh zzhVar) {
        m16130b(zzhVar, false);
        try {
            return (List) this.f20677a.mo16214a().m16363a(new CallableC8962d1(this, zzhVar, str, str2)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f20677a.mo16178c().m16375s().m16337a("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    @BinderThread
    /* renamed from: a */
    public final List<zzl> mo16136a(String str, String str2, String str3) {
        m16133a(str, true);
        try {
            return (List) this.f20677a.mo16214a().m16363a(new CallableC8969e1(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f20677a.mo16178c().m16375s().m16337a("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    @BinderThread
    /* renamed from: a */
    public final List<zzfh> mo16135a(String str, String str2, String str3, boolean z) {
        m16133a(str, true);
        try {
            List<C8953b4> list = (List) this.f20677a.mo16214a().m16363a(new CallableC8956c1(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C8953b4 b4Var : list) {
                if (z || !C8959c4.m16702h(b4Var.f20238c)) {
                    arrayList.add(new zzfh(b4Var));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f20677a.mo16178c().m16375s().m16336a("Failed to get user attributes. appId", C9027o.m16380a(str), e);
            return Collections.emptyList();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    @BinderThread
    /* renamed from: a */
    public final List<zzfh> mo16134a(String str, String str2, boolean z, zzh zzhVar) {
        m16130b(zzhVar, false);
        try {
            List<C8953b4> list = (List) this.f20677a.mo16214a().m16363a(new CallableC8950b1(this, zzhVar, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C8953b4 b4Var : list) {
                if (z || !C8959c4.m16702h(b4Var.f20238c)) {
                    arrayList.add(new zzfh(b4Var));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f20677a.mo16178c().m16375s().m16336a("Failed to get user attributes. appId", C9027o.m16380a(zzhVar.f7158a), e);
            return Collections.emptyList();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    @BinderThread
    /* renamed from: a */
    public final void mo16148a(long j, String str, String str2, String str3) {
        m16138a(new RunnableC9023n1(this, str2, str3, str, j));
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    @BinderThread
    /* renamed from: a */
    public final void mo16147a(zzad zzadVar, zzh zzhVar) {
        C7021t.m21290a(zzadVar);
        m16130b(zzhVar, false);
        m16138a(new RunnableC8981g1(this, zzadVar, zzhVar));
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    @BinderThread
    /* renamed from: a */
    public final void mo16145a(zzad zzadVar, String str, String str2) {
        C7021t.m21290a(zzadVar);
        C7021t.m21283b(str);
        m16133a(str, true);
        m16138a(new RunnableC8987h1(this, zzadVar, str));
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    @BinderThread
    /* renamed from: a */
    public final void mo16144a(zzfh zzfhVar, zzh zzhVar) {
        C7021t.m21290a(zzfhVar);
        m16130b(zzhVar, false);
        if (zzfhVar.m31657c() == null) {
            m16138a(new RunnableC8999j1(this, zzfhVar, zzhVar));
        } else {
            m16138a(new RunnableC9005k1(this, zzfhVar, zzhVar));
        }
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    @BinderThread
    /* renamed from: a */
    public final void mo16141a(zzl zzlVar) {
        C7021t.m21290a(zzlVar);
        C7021t.m21290a(zzlVar.f7178c);
        m16133a(zzlVar.f7176a, true);
        zzl zzlVar2 = new zzl(zzlVar);
        if (zzlVar.f7178c.m31657c() == null) {
            m16138a(new RunnableC9088y0(this, zzlVar2));
        } else {
            m16138a(new RunnableC8944a1(this, zzlVar2));
        }
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    @BinderThread
    /* renamed from: a */
    public final void mo16140a(zzl zzlVar, zzh zzhVar) {
        C7021t.m21290a(zzlVar);
        C7021t.m21290a(zzlVar.f7178c);
        m16130b(zzhVar, false);
        zzl zzlVar2 = new zzl(zzlVar);
        zzlVar2.f7176a = zzhVar.f7158a;
        if (zzlVar.f7178c.m31657c() == null) {
            m16138a(new RunnableC9077w0(this, zzlVar2, zzhVar));
        } else {
            m16138a(new RunnableC9083x0(this, zzlVar2, zzhVar));
        }
    }

    /* renamed from: a */
    public final void m16138a(Runnable runnable) {
        C7021t.m21290a(runnable);
        if (!C8966e.f20298X.m16678a().booleanValue() || !this.f20677a.mo16214a().m16355s()) {
            this.f20677a.mo16214a().m16364a(runnable);
        } else {
            runnable.run();
        }
    }

    @BinderThread
    /* renamed from: a */
    public final void m16133a(String str, boolean z) {
        boolean z2;
        if (!TextUtils.isEmpty(str)) {
            if (z) {
                try {
                    if (this.f20678b == null) {
                        if (!"com.google.android.gms".equals(this.f20679c) && !C7086r.m21116a(this.f20677a.getContext(), Binder.getCallingUid()) && !C6801h.m21873a(this.f20677a.getContext()).m21874a(Binder.getCallingUid())) {
                            z2 = false;
                            this.f20678b = Boolean.valueOf(z2);
                        }
                        z2 = true;
                        this.f20678b = Boolean.valueOf(z2);
                    }
                    if (this.f20678b.booleanValue()) {
                        return;
                    }
                } catch (SecurityException e) {
                    this.f20677a.mo16178c().m16375s().m16337a("Measurement Service called with invalid calling package. appId", C9027o.m16380a(str));
                    throw e;
                }
            }
            if (this.f20679c == null && C6799g.uidHasPackageName(this.f20677a.getContext(), Binder.getCallingUid(), str)) {
                this.f20679c = str;
            }
            if (!str.equals(this.f20679c)) {
                throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
            }
            return;
        }
        this.f20677a.mo16178c().m16375s().m16338a("Measurement Service called without app package");
        throw new SecurityException("Measurement Service called without app package");
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    @BinderThread
    /* renamed from: a */
    public final byte[] mo16146a(zzad zzadVar, String str) {
        C7021t.m21283b(str);
        C7021t.m21290a(zzadVar);
        m16133a(str, true);
        this.f20677a.mo16178c().m16368z().m16337a("Log and bundle. event", this.f20677a.m16171g().m16473a(zzadVar.f7147a));
        long nanoTime = this.f20677a.mo16174e().nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) this.f20677a.mo16214a().m16359b(new CallableC8993i1(this, zzadVar, str)).get();
            byte[] bArr2 = bArr;
            if (bArr == null) {
                this.f20677a.mo16178c().m16375s().m16337a("Log and bundle returned null. appId", C9027o.m16380a(str));
                bArr2 = new byte[0];
            }
            this.f20677a.mo16178c().m16368z().m16335a("Log and bundle processed. event, size, time_ms", this.f20677a.m16171g().m16473a(zzadVar.f7147a), Integer.valueOf(bArr2.length), Long.valueOf((this.f20677a.mo16174e().nanoTime() / 1000000) - nanoTime));
            return bArr2;
        } catch (InterruptedException | ExecutionException e) {
            this.f20677a.mo16178c().m16375s().m16335a("Failed to log and bundle. appId, event, error", C9027o.m16380a(str), this.f20677a.m16171g().m16473a(zzadVar.f7147a), e);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0063, code lost:
        if ("referrer API".equals(r0) != false) goto L_0x0066;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzad m16132b(com.google.android.gms.measurement.internal.zzad r9, com.google.android.gms.measurement.internal.zzh r10) {
        /*
            r8 = this;
            java.lang.String r0 = "_cmp"
            r1 = r9
            java.lang.String r1 = r1.f7147a
            boolean r0 = r0.equals(r1)
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r12
            r13 = r0
            r0 = r11
            if (r0 == 0) goto L_0x007e
            r0 = r9
            com.google.android.gms.measurement.internal.zzaa r0 = r0.f7148b
            r14 = r0
            r0 = r12
            r13 = r0
            r0 = r14
            if (r0 == 0) goto L_0x007e
            r0 = r14
            int r0 = r0.size()
            if (r0 != 0) goto L_0x0034
            r0 = r12
            r13 = r0
            goto L_0x007e
        L_0x0034:
            r0 = r9
            com.google.android.gms.measurement.internal.zzaa r0 = r0.f7148b
            java.lang.String r1 = "_cis"
            java.lang.String r0 = r0.m31659c(r1)
            r14 = r0
            r0 = r12
            r13 = r0
            r0 = r14
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x007e
            java.lang.String r0 = "referrer broadcast"
            r1 = r14
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0066
            r0 = r12
            r13 = r0
            java.lang.String r0 = "referrer API"
            r1 = r14
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x007e
        L_0x0066:
            r0 = r12
            r13 = r0
            r0 = r8
            h.i.a.e.m.b.t3 r0 = r0.f20677a
            h.i.a.e.m.b.k4 r0 = r0.m16169i()
            r1 = r10
            java.lang.String r1 = r1.f7158a
            boolean r0 = r0.m16493l(r1)
            if (r0 == 0) goto L_0x007e
            r0 = 1
            r13 = r0
        L_0x007e:
            r0 = r13
            if (r0 == 0) goto L_0x00ae
            r0 = r8
            h.i.a.e.m.b.t3 r0 = r0.f20677a
            h.i.a.e.m.b.o r0 = r0.mo16178c()
            h.i.a.e.m.b.q r0 = r0.m16369y()
            java.lang.String r1 = "Event has been filtered "
            r2 = r9
            java.lang.String r2 = r2.toString()
            r0.m16337a(r1, r2)
            com.google.android.gms.measurement.internal.zzad r0 = new com.google.android.gms.measurement.internal.zzad
            r1 = r0
            java.lang.String r2 = "_cmpx"
            r3 = r9
            com.google.android.gms.measurement.internal.zzaa r3 = r3.f7148b
            r4 = r9
            java.lang.String r4 = r4.f7149c
            r5 = r9
            long r5 = r5.f7150d
            r1.<init>(r2, r3, r4, r5)
            return r0
        L_0x00ae:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.BinderC9065u0.m16132b(com.google.android.gms.measurement.internal.zzad, com.google.android.gms.measurement.internal.zzh):com.google.android.gms.measurement.internal.zzad");
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    @BinderThread
    /* renamed from: b */
    public final void mo16131b(zzh zzhVar) {
        m16133a(zzhVar.f7158a, false);
        m16138a(new RunnableC8975f1(this, zzhVar));
    }

    @BinderThread
    /* renamed from: b */
    public final void m16130b(zzh zzhVar, boolean z) {
        C7021t.m21290a(zzhVar);
        m16133a(zzhVar.f7158a, false);
        this.f20677a.m16170h().m16707d(zzhVar.f7159b, zzhVar.f7175r);
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    @BinderThread
    /* renamed from: c */
    public final void mo16129c(zzh zzhVar) {
        m16130b(zzhVar, false);
        m16138a(new RunnableC9017m1(this, zzhVar));
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8973f
    @BinderThread
    /* renamed from: d */
    public final void mo16128d(zzh zzhVar) {
        m16130b(zzhVar, false);
        m16138a(new RunnableC9071v0(this, zzhVar));
    }
}
