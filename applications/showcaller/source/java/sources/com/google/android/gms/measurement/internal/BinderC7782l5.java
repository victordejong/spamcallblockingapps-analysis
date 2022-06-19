package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.C6094e;
import com.google.android.gms.common.C6096f;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.util.C6242t;
import com.google.android.gms.internal.measurement.C7382g9;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
/* renamed from: com.google.android.gms.measurement.internal.l5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/l5.class */
public final class BinderC7782l5 extends AbstractBinderC7696e3 {

    /* renamed from: d */
    private final C7819o9 f35423d;

    /* renamed from: e */
    private Boolean f35424e;

    /* renamed from: f */
    private String f35425f = null;

    public BinderC7782l5(C7819o9 c7819o9, String str) {
        C6155o.m17018j(c7819o9);
        this.f35423d = c7819o9;
    }

    /* renamed from: A4 */
    private final void m6247A4(String str, boolean z) {
        boolean z2;
        if (TextUtils.isEmpty(str)) {
            this.f35423d.mo6047C().m6195m().m6216a("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z) {
            try {
                if (this.f35424e == null) {
                    if (!"com.google.android.gms".equals(this.f35425f) && !C6242t.m16767a(this.f35423d.mo6030a(), Binder.getCallingUid()) && !C6096f.m17191a(this.f35423d.mo6030a()).m17189c(Binder.getCallingUid())) {
                        z2 = false;
                        this.f35424e = Boolean.valueOf(z2);
                    }
                    z2 = true;
                    this.f35424e = Boolean.valueOf(z2);
                }
                if (this.f35424e.booleanValue()) {
                    return;
                }
            } catch (SecurityException e) {
                this.f35423d.mo6047C().m6195m().m6215b("Measurement Service called with invalid calling package. appId", C7813o3.m6186v(str));
                throw e;
            }
        }
        if (this.f35425f == null && C6094e.m17200k(this.f35423d.mo6030a(), Binder.getCallingUid(), str)) {
            this.f35425f = str;
        }
        if (str.equals(this.f35425f)) {
            return;
        }
        throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
    }

    /* renamed from: y4 */
    private final void m6225y4(zzp zzpVar, boolean z) {
        C6155o.m17018j(zzpVar);
        C6155o.m17022f(zzpVar.f35883d);
        m6247A4(zzpVar.f35883d, false);
        this.f35423d.m6150d0().m5962m(zzpVar.f35884e, zzpVar.f35899t, zzpVar.f35903x);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: A2 */
    public final List<zzkl> mo6248A2(zzp zzpVar, boolean z) {
        m6225y4(zzpVar, false);
        String str = zzpVar.f35883d;
        C6155o.m17018j(str);
        try {
            List<C7863s9> list = (List) this.f35423d.mo6029b().m6111n(new CallableC7746i5(this, str)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C7863s9 c7863s9 : list) {
                if (z || !C7885u9.m5996F(c7863s9.f35683c)) {
                    arrayList.add(new zzkl(c7863s9));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f35423d.mo6047C().m6195m().m6214c("Failed to get user properties. appId", C7813o3.m6186v(zzpVar.f35883d), e);
            return null;
        }
    }

    /* renamed from: D0 */
    public final zzas m6246D0(zzas zzasVar, zzp zzpVar) {
        zzaq zzaqVar;
        if ("_cmp".equals(zzasVar.f35872d) && (zzaqVar = zzasVar.f35873e) != null && zzaqVar.m5865o0() != 0) {
            String m5866n0 = zzasVar.f35873e.m5866n0("_cis");
            if ("referrer broadcast".equals(m5866n0) || "referrer API".equals(m5866n0)) {
                this.f35423d.mo6047C().m6189s().m6215b("Event has been filtered ", zzasVar.toString());
                return new zzas("_cmpx", zzasVar.f35873e, zzasVar.f35874f, zzasVar.f35875g);
            }
        }
        return zzasVar;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: I2 */
    public final List<zzkl> mo6245I2(String str, String str2, boolean z, zzp zzpVar) {
        m6225y4(zzpVar, false);
        String str3 = zzpVar.f35883d;
        C6155o.m17018j(str3);
        try {
            List<C7863s9> list = (List) this.f35423d.mo6029b().m6111n(new CallableC7902w4(this, str3, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C7863s9 c7863s9 : list) {
                if (z || !C7885u9.m5996F(c7863s9.f35683c)) {
                    arrayList.add(new zzkl(c7863s9));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f35423d.mo6047C().m6195m().m6214c("Failed to query user properties. appId", C7813o3.m6186v(zzpVar.f35883d), e);
            return Collections.emptyList();
        }
    }

    /* renamed from: J0 */
    final void m6244J0(Runnable runnable) {
        C6155o.m17018j(runnable);
        if (this.f35423d.mo6029b().m6112m()) {
            runnable.run();
        } else {
            this.f35423d.mo6029b().m6109p(runnable);
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: M0 */
    public final List<zzaa> mo6243M0(String str, String str2, zzp zzpVar) {
        m6225y4(zzpVar, false);
        String str3 = zzpVar.f35883d;
        C6155o.m17018j(str3);
        try {
            return (List) this.f35423d.mo6029b().m6111n(new CallableC7924y4(this, str3, str, str2)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f35423d.mo6047C().m6195m().m6215b("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: M2 */
    public final List<zzaa> mo6242M2(String str, String str2, String str3) {
        m6247A4(str, true);
        try {
            return (List) this.f35423d.mo6029b().m6111n(new CallableC7935z4(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f35423d.mo6047C().m6195m().m6215b("Failed to get conditional user properties as", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: V2 */
    public final void mo6241V2(zzp zzpVar) {
        C6155o.m17022f(zzpVar.f35883d);
        m6247A4(zzpVar.f35883d, false);
        m6244J0(new RunnableC7650a5(this, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: Z3 */
    public final void mo6240Z3(zzp zzpVar) {
        m6225y4(zzpVar, false);
        m6244J0(new RunnableC7662b5(this, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: a1 */
    public final void mo6239a1(zzp zzpVar) {
        C7382g9.m7385a();
        if (this.f35423d.m6161T().m6471u(null, C7672c3.f35111y0)) {
            C6155o.m17022f(zzpVar.f35883d);
            C6155o.m17018j(zzpVar.f35904y);
            RunnableC7674c5 runnableC7674c5 = new RunnableC7674c5(this, zzpVar);
            C6155o.m17018j(runnableC7674c5);
            if (this.f35423d.mo6029b().m6112m()) {
                runnableC7674c5.run();
            } else {
                this.f35423d.mo6029b().m6107r(runnableC7674c5);
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: h6 */
    public final void mo6237h6(zzkl zzklVar, zzp zzpVar) {
        C6155o.m17018j(zzklVar);
        m6225y4(zzpVar, false);
        m6244J0(new RunnableC7734h5(this, zzklVar, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: i3 */
    public final void mo6236i3(Bundle bundle, zzp zzpVar) {
        m6225y4(zzpVar, false);
        String str = zzpVar.f35883d;
        C6155o.m17018j(str);
        m6244J0(new Runnable(this, str, bundle) { // from class: com.google.android.gms.measurement.internal.t4

            /* renamed from: d */
            private final BinderC7782l5 f35696d;

            /* renamed from: e */
            private final String f35697e;

            /* renamed from: f */
            private final Bundle f35698f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f35696d = this;
                this.f35697e = str;
                this.f35698f = bundle;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f35696d.m6234m2(this.f35697e, this.f35698f);
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: k3 */
    public final void mo6235k3(zzaa zzaaVar) {
        C6155o.m17018j(zzaaVar);
        C6155o.m17018j(zzaaVar.f35862f);
        C6155o.m17022f(zzaaVar.f35860d);
        m6247A4(zzaaVar.f35860d, true);
        m6244J0(new RunnableC7891v4(this, new zzaa(zzaaVar)));
    }

    /* renamed from: m2 */
    public final /* synthetic */ void m6234m2(String str, Bundle bundle) {
        C7740i m6158W = this.f35423d.m6158W();
        m6158W.mo6113f();
        m6158W.m6455h();
        byte[] m7045i = m6158W.f35186b.m6154a0().m6057u(new C7798n(m6158W.f35460a, "", str, "dep", 0L, 0L, bundle)).m7045i();
        m6158W.f35460a.mo6047C().m6187u().m6214c("Saving default event parameters, appId, data size", m6158W.f35460a.m6042H().m6345n(str), Integer.valueOf(m7045i.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("parameters", m7045i);
        try {
            if (m6158W.m6399P().insertWithOnConflict("default_event_params", null, contentValues, 5) != -1) {
                return;
            }
            m6158W.f35460a.mo6047C().m6195m().m6215b("Failed to insert default event parameters (got -1). appId", C7813o3.m6186v(str));
        } catch (SQLiteException e) {
            m6158W.f35460a.mo6047C().m6195m().m6214c("Error storing default event parameters. appId", C7813o3.m6186v(str), e);
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: n6 */
    public final void mo6233n6(zzas zzasVar, zzp zzpVar) {
        C6155o.m17018j(zzasVar);
        m6225y4(zzpVar, false);
        m6244J0(new RunnableC7698e5(this, zzasVar, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: p3 */
    public final void mo6232p3(zzas zzasVar, String str, String str2) {
        C6155o.m17018j(zzasVar);
        C6155o.m17022f(str);
        m6247A4(str, true);
        m6244J0(new RunnableC7710f5(this, zzasVar, str));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: q2 */
    public final void mo6231q2(zzaa zzaaVar, zzp zzpVar) {
        C6155o.m17018j(zzaaVar);
        C6155o.m17018j(zzaaVar.f35862f);
        m6225y4(zzpVar, false);
        zzaa zzaaVar2 = new zzaa(zzaaVar);
        zzaaVar2.f35860d = zzpVar.f35883d;
        m6244J0(new RunnableC7880u4(this, zzaaVar2, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: r1 */
    public final String mo6230r1(zzp zzpVar) {
        m6225y4(zzpVar, false);
        return this.f35423d.m6121z(zzpVar);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: r2 */
    public final void mo6229r2(long j, String str, String str2, String str3) {
        m6244J0(new RunnableC7770k5(this, str2, str3, str, j));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: r6 */
    public final List<zzkl> mo6228r6(String str, String str2, String str3, boolean z) {
        m6247A4(str, true);
        try {
            List<C7863s9> list = (List) this.f35423d.mo6029b().m6111n(new CallableC7913x4(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C7863s9 c7863s9 : list) {
                if (z || !C7885u9.m5996F(c7863s9.f35683c)) {
                    arrayList.add(new zzkl(c7863s9));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f35423d.mo6047C().m6195m().m6214c("Failed to get user properties as. appId", C7813o3.m6186v(str), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: u3 */
    public final byte[] mo6227u3(zzas zzasVar, String str) {
        C6155o.m17022f(str);
        C6155o.m17018j(zzasVar);
        m6247A4(str, true);
        this.f35423d.mo6047C().m6188t().m6215b("Log and bundle. event", this.f35423d.m6152c0().m6345n(zzasVar.f35872d));
        long mo16805c = this.f35423d.mo6007x().mo16805c() / 1000000;
        try {
            byte[] bArr = (byte[]) this.f35423d.mo6029b().m6110o(new CallableC7722g5(this, zzasVar, str)).get();
            byte[] bArr2 = bArr;
            if (bArr == null) {
                this.f35423d.mo6047C().m6195m().m6215b("Log and bundle returned null. appId", C7813o3.m6186v(str));
                bArr2 = new byte[0];
            }
            this.f35423d.mo6047C().m6188t().m6213d("Log and bundle processed. event, size, time_ms", this.f35423d.m6152c0().m6345n(zzasVar.f35872d), Integer.valueOf(bArr2.length), Long.valueOf((this.f35423d.mo6007x().mo16805c() / 1000000) - mo16805c));
            return bArr2;
        } catch (InterruptedException | ExecutionException e) {
            this.f35423d.mo6047C().m6195m().m6213d("Failed to log and bundle. appId, event, error", C7813o3.m6186v(str), this.f35423d.m6152c0().m6345n(zzasVar.f35872d), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: x5 */
    public final void mo6226x5(zzp zzpVar) {
        m6225y4(zzpVar, false);
        m6244J0(new RunnableC7758j5(this, zzpVar));
    }
}
