package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.C11943d;
import com.google.android.gms.common.C11956e;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.util.C12115s;
import com.google.android.gms.internal.measurement.C13620jy;
import com.mopub.mobileads.PangleAdapterConfiguration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
/* renamed from: com.google.android.gms.measurement.internal.fl */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fl.class */
public final class BinderC13999fl extends AbstractBinderC13937de {

    /* renamed from: a */
    final C14110jo f51634a;

    /* renamed from: b */
    private Boolean f51635b;

    /* renamed from: c */
    private String f51636c = null;

    public BinderC13999fl(C14110jo c14110jo, String str) {
        C12045o.m19162a(c14110jo);
        this.f51634a = c14110jo;
    }

    /* renamed from: a */
    private void m11897a(Runnable runnable) {
        C12045o.m19162a(runnable);
        if (this.f51634a.mo11658d().aj_()) {
            runnable.run();
        } else {
            this.f51634a.mo11658d().m12011a(runnable);
        }
    }

    /* renamed from: a */
    private final void m11891a(String str, boolean z) {
        boolean z2;
        if (TextUtils.isEmpty(str)) {
            this.f51634a.mo11661c().f51395c.m12092a("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z) {
            try {
                if (this.f51635b == null) {
                    if (!"com.google.android.gms".equals(this.f51636c) && !C12115s.m19006a(this.f51634a.f51969f.f51523a, Binder.getCallingUid()) && !C11956e.m19247a(this.f51634a.f51969f.f51523a).m19248a(Binder.getCallingUid())) {
                        z2 = false;
                        this.f51635b = Boolean.valueOf(z2);
                    }
                    z2 = true;
                    this.f51635b = Boolean.valueOf(z2);
                }
                if (this.f51635b.booleanValue()) {
                    return;
                }
            } catch (SecurityException e) {
                this.f51634a.mo11661c().f51395c.m12091a("Measurement Service called with invalid calling package. appId", C13947do.m12087a(str));
                throw e;
            }
        }
        if (this.f51636c == null && C11943d.uidHasPackageName(this.f51634a.f51969f.f51523a, Binder.getCallingUid(), str)) {
            this.f51636c = str;
        }
        if (str.equals(this.f51636c)) {
            return;
        }
        throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
    }

    /* renamed from: f */
    private final void m11885f(zzp zzpVar) {
        C12045o.m19162a(zzpVar);
        C12045o.m19160a(zzpVar.zza);
        m11891a(zzpVar.zza, false);
        this.f51634a.m11652h().m11580a(zzpVar.zzb, zzpVar.zzq, zzpVar.zzu);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final List<zzkl> mo11898a(zzp zzpVar, boolean z) {
        m11885f(zzpVar);
        String str = zzpVar.zza;
        C12045o.m19162a(str);
        try {
            List<C14114js> list = (List) this.f51634a.mo11658d().m12010a(new CallableC13996fi(this, str)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C14114js c14114js : list) {
                if (z || !C14116ju.m11561e(c14114js.f51992c)) {
                    arrayList.add(new zzkl(c14114js));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f51634a.mo11661c().f51395c.m12090a("Failed to get user properties. appId", C13947do.m12087a(zzpVar.zza), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final List<zzaa> mo11895a(String str, String str2, zzp zzpVar) {
        m11885f(zzpVar);
        String str3 = zzpVar.zza;
        C12045o.m19162a(str3);
        try {
            return (List) this.f51634a.mo11658d().m12010a(new CallableC13985ey(this, str3, str, str2)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f51634a.mo11661c().f51395c.m12091a("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final List<zzaa> mo11894a(String str, String str2, String str3) {
        m11891a(str, true);
        try {
            return (List) this.f51634a.mo11658d().m12010a(new CallableC13986ez(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f51634a.mo11661c().f51395c.m12091a("Failed to get conditional user properties as", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final List<zzkl> mo11893a(String str, String str2, String str3, boolean z) {
        m11891a(str, true);
        try {
            List<C14114js> list = (List) this.f51634a.mo11658d().m12010a(new CallableC13984ex(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C14114js c14114js : list) {
                if (z || !C14116ju.m11561e(c14114js.f51992c)) {
                    arrayList.add(new zzkl(c14114js));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f51634a.mo11661c().f51395c.m12090a("Failed to get user properties as. appId", C13947do.m12087a(str), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final List<zzkl> mo11892a(String str, String str2, boolean z, zzp zzpVar) {
        m11885f(zzpVar);
        String str3 = zzpVar.zza;
        C12045o.m19162a(str3);
        try {
            List<C14114js> list = (List) this.f51634a.mo11658d().m12010a(new CallableC13983ew(this, str3, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C14114js c14114js : list) {
                if (z || !C14116ju.m11561e(c14114js.f51992c)) {
                    arrayList.add(new zzkl(c14114js));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f51634a.mo11661c().f51395c.m12090a("Failed to query user properties. appId", C13947do.m12087a(zzpVar.zza), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final void mo11907a(long j, String str, String str2, String str3) {
        m11897a(new RunnableC13998fk(this, str2, str3, str, j));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final void mo11906a(Bundle bundle, zzp zzpVar) {
        m11885f(zzpVar);
        String str = zzpVar.zza;
        C12045o.m19162a(str);
        m11897a(new Runnable(this, str, bundle) { // from class: com.google.android.gms.measurement.internal.et

            /* renamed from: a */
            private final BinderC13999fl f51548a;

            /* renamed from: b */
            private final String f51549b;

            /* renamed from: c */
            private final Bundle f51550c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f51548a = this;
                this.f51549b = str;
                this.f51550c = bundle;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f51548a.m11896a(this.f51549b, this.f51550c);
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final void mo11904a(zzaa zzaaVar) {
        C12045o.m19162a(zzaaVar);
        C12045o.m19162a(zzaaVar.zzc);
        C12045o.m19160a(zzaaVar.zza);
        m11891a(zzaaVar.zza, true);
        m11897a(new RunnableC13982ev(this, new zzaa(zzaaVar)));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final void mo11903a(zzaa zzaaVar, zzp zzpVar) {
        C12045o.m19162a(zzaaVar);
        C12045o.m19162a(zzaaVar.zzc);
        m11885f(zzpVar);
        zzaa zzaaVar2 = new zzaa(zzaaVar);
        zzaaVar2.zza = zzpVar.zza;
        m11897a(new RunnableC13981eu(this, zzaaVar2, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final void mo11902a(zzas zzasVar, zzp zzpVar) {
        C12045o.m19162a(zzasVar);
        m11885f(zzpVar);
        m11897a(new RunnableC13992fe(this, zzasVar, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final void mo11901a(zzas zzasVar, String str) {
        C12045o.m19162a(zzasVar);
        C12045o.m19160a(str);
        m11891a(str, true);
        m11897a(new RunnableC13993ff(this, zzasVar, str));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final void mo11900a(zzkl zzklVar, zzp zzpVar) {
        C12045o.m19162a(zzklVar);
        m11885f(zzpVar);
        m11897a(new RunnableC13995fh(this, zzklVar, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final void mo11899a(zzp zzpVar) {
        m11885f(zzpVar);
        m11897a(new RunnableC13997fj(this, zzpVar));
    }

    /* renamed from: a */
    public final /* synthetic */ void m11896a(String str, Bundle bundle) {
        C14068i m11654f = this.f51634a.m11654f();
        m11654f.mo11884S_();
        m11654f.m11696v();
        byte[] m12886j = m11654f.f51940f.m11653g().m11631a(new C14136n(m11654f.f51637t, "", str, "dep", 0L, 0L, bundle)).m12886j();
        m11654f.f51637t.mo11661c().f51403k.m12090a("Saving default event parameters, appId, data size", m11654f.f51637t.m11987h().m12097a(str), Integer.valueOf(m12886j.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, str);
        contentValues.put("parameters", m12886j);
        try {
            if (m11654f.m11783e().insertWithOnConflict("default_event_params", null, contentValues, 5) != -1) {
                return;
            }
            m11654f.f51637t.mo11661c().f51395c.m12091a("Failed to insert default event parameters (got -1). appId", C13947do.m12087a(str));
        } catch (SQLiteException e) {
            m11654f.f51637t.mo11661c().f51395c.m12090a("Error storing default event parameters. appId", C13947do.m12087a(str), e);
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: b */
    public final void mo11889b(zzp zzpVar) {
        m11885f(zzpVar);
        m11897a(new RunnableC13989fb(this, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: b */
    public final byte[] mo11890b(zzas zzasVar, String str) {
        C12045o.m19160a(str);
        C12045o.m19162a(zzasVar);
        m11891a(str, true);
        this.f51634a.mo11661c().f51402j.m12091a("Log and bundle. event", this.f51634a.f51969f.m11987h().m12097a(zzasVar.zza));
        long mo19037c = this.f51634a.mo11690Y_().mo19037c() / 1000000;
        try {
            byte[] bArr = (byte[]) this.f51634a.mo11658d().m12006b(new CallableC13994fg(this, zzasVar, str)).get();
            byte[] bArr2 = bArr;
            if (bArr == null) {
                this.f51634a.mo11661c().f51395c.m12091a("Log and bundle returned null. appId", C13947do.m12087a(str));
                bArr2 = new byte[0];
            }
            this.f51634a.mo11661c().f51402j.m12089a("Log and bundle processed. event, size, time_ms", this.f51634a.f51969f.m11987h().m12097a(zzasVar.zza), Integer.valueOf(bArr2.length), Long.valueOf((this.f51634a.mo11690Y_().mo19037c() / 1000000) - mo19037c));
            return bArr2;
        } catch (InterruptedException | ExecutionException e) {
            this.f51634a.mo11661c().f51395c.m12089a("Failed to log and bundle. appId, event, error", C13947do.m12087a(str), this.f51634a.f51969f.m11987h().m12097a(zzasVar.zza), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: c */
    public final String mo11888c(zzp zzpVar) {
        m11885f(zzpVar);
        return this.f51634a.m11657d(zzpVar);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: d */
    public final void mo11887d(zzp zzpVar) {
        C12045o.m19160a(zzpVar.zza);
        m11891a(zzpVar.zza, false);
        m11897a(new RunnableC13988fa(this, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: e */
    public final void mo11886e(zzp zzpVar) {
        C13620jy.m12411b();
        if (this.f51634a.m11670b().m12061d(null, C13935dc.f51335aw)) {
            C12045o.m19160a(zzpVar.zza);
            C12045o.m19162a(zzpVar.zzv);
            RunnableC13990fc runnableC13990fc = new RunnableC13990fc(this, zzpVar);
            C12045o.m19162a(runnableC13990fc);
            if (this.f51634a.mo11658d().aj_()) {
                runnableC13990fc.run();
            } else {
                this.f51634a.mo11658d().m12007b(runnableC13990fc);
            }
        }
    }
}
