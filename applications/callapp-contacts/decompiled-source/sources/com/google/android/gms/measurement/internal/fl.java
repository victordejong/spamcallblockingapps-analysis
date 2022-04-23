package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.d;
import com.google.android.gms.common.e;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.util.s;
import com.google.android.gms.internal.measurement.jy;
import com.mopub.mobileads.PangleAdapterConfiguration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fl.class */
public final class fl extends de {

    /* renamed from: a  reason: collision with root package name */
    final jo f29644a;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f29645b;

    /* renamed from: c  reason: collision with root package name */
    private String f29646c = null;

    public fl(jo joVar, String str) {
        o.a(joVar);
        this.f29644a = joVar;
    }

    private void a(Runnable runnable) {
        o.a(runnable);
        if (this.f29644a.d().aj_()) {
            runnable.run();
        } else {
            this.f29644a.d().a(runnable);
        }
    }

    private final void a(String str, boolean z) {
        boolean z2;
        if (!TextUtils.isEmpty(str)) {
            if (z) {
                try {
                    if (this.f29645b == null) {
                        if (!"com.google.android.gms".equals(this.f29646c) && !s.a(this.f29644a.f.f29583a, Binder.getCallingUid()) && !e.a(this.f29644a.f.f29583a).a(Binder.getCallingUid())) {
                            z2 = false;
                            this.f29645b = Boolean.valueOf(z2);
                        }
                        z2 = true;
                        this.f29645b = Boolean.valueOf(z2);
                    }
                    if (this.f29645b.booleanValue()) {
                        return;
                    }
                } catch (SecurityException e) {
                    this.f29644a.c().f29506c.a("Measurement Service called with invalid calling package. appId", Cdo.a(str));
                    throw e;
                }
            }
            if (this.f29646c == null && d.uidHasPackageName(this.f29644a.f.f29583a, Binder.getCallingUid(), str)) {
                this.f29646c = str;
            }
            if (!str.equals(this.f29646c)) {
                throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
            }
            return;
        }
        this.f29644a.c().f29506c.a("Measurement Service called without app package");
        throw new SecurityException("Measurement Service called without app package");
    }

    private final void f(zzp zzpVar) {
        o.a(zzpVar);
        o.a(zzpVar.zza);
        a(zzpVar.zza, false);
        this.f29644a.h().a(zzpVar.zzb, zzpVar.zzq, zzpVar.zzu);
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final List<zzkl> a(zzp zzpVar, boolean z) {
        f(zzpVar);
        String str = zzpVar.zza;
        o.a(str);
        try {
            List<js> list = (List) this.f29644a.d().a(new fi(this, str)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (js jsVar : list) {
                if (z || !ju.e(jsVar.f29911c)) {
                    arrayList.add(new zzkl(jsVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f29644a.c().f29506c.a("Failed to get user properties. appId", Cdo.a(zzpVar.zza), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final List<zzaa> a(String str, String str2, zzp zzpVar) {
        f(zzpVar);
        String str3 = zzpVar.zza;
        o.a(str3);
        try {
            return (List) this.f29644a.d().a(new ey(this, str3, str, str2)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f29644a.c().f29506c.a("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final List<zzaa> a(String str, String str2, String str3) {
        a(str, true);
        try {
            return (List) this.f29644a.d().a(new ez(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f29644a.c().f29506c.a("Failed to get conditional user properties as", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final List<zzkl> a(String str, String str2, String str3, boolean z) {
        a(str, true);
        try {
            List<js> list = (List) this.f29644a.d().a(new ex(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (js jsVar : list) {
                if (z || !ju.e(jsVar.f29911c)) {
                    arrayList.add(new zzkl(jsVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f29644a.c().f29506c.a("Failed to get user properties as. appId", Cdo.a(str), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final List<zzkl> a(String str, String str2, boolean z, zzp zzpVar) {
        f(zzpVar);
        String str3 = zzpVar.zza;
        o.a(str3);
        try {
            List<js> list = (List) this.f29644a.d().a(new ew(this, str3, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (js jsVar : list) {
                if (z || !ju.e(jsVar.f29911c)) {
                    arrayList.add(new zzkl(jsVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f29644a.c().f29506c.a("Failed to query user properties. appId", Cdo.a(zzpVar.zza), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void a(long j, String str, String str2, String str3) {
        a(new fk(this, str2, str3, str, j));
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void a(final Bundle bundle, zzp zzpVar) {
        f(zzpVar);
        final String str = zzpVar.zza;
        o.a(str);
        a(new Runnable(this, str, bundle) { // from class: com.google.android.gms.measurement.internal.et

            /* renamed from: a  reason: collision with root package name */
            private final fl f29587a;

            /* renamed from: b  reason: collision with root package name */
            private final String f29588b;

            /* renamed from: c  reason: collision with root package name */
            private final Bundle f29589c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29587a = this;
                this.f29588b = str;
                this.f29589c = bundle;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f29587a.a(this.f29588b, this.f29589c);
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void a(zzaa zzaaVar) {
        o.a(zzaaVar);
        o.a(zzaaVar.zzc);
        o.a(zzaaVar.zza);
        a(zzaaVar.zza, true);
        a(new ev(this, new zzaa(zzaaVar)));
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void a(zzaa zzaaVar, zzp zzpVar) {
        o.a(zzaaVar);
        o.a(zzaaVar.zzc);
        f(zzpVar);
        zzaa zzaaVar2 = new zzaa(zzaaVar);
        zzaaVar2.zza = zzpVar.zza;
        a(new eu(this, zzaaVar2, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void a(zzas zzasVar, zzp zzpVar) {
        o.a(zzasVar);
        f(zzpVar);
        a(new fe(this, zzasVar, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void a(zzas zzasVar, String str) {
        o.a(zzasVar);
        o.a(str);
        a(str, true);
        a(new ff(this, zzasVar, str));
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void a(zzkl zzklVar, zzp zzpVar) {
        o.a(zzklVar);
        f(zzpVar);
        a(new fh(this, zzklVar, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void a(zzp zzpVar) {
        f(zzpVar);
        a(new fj(this, zzpVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(String str, Bundle bundle) {
        i f = this.f29644a.f();
        f.S_();
        f.v();
        byte[] j = f.f.g().a(new n(f.t, "", str, "dep", 0L, 0L, bundle)).j();
        f.t.c().k.a("Saving default event parameters, appId, data size", f.t.h().a(str), Integer.valueOf(j.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, str);
        contentValues.put("parameters", j);
        try {
            if (f.e().insertWithOnConflict("default_event_params", null, contentValues, 5) == -1) {
                f.t.c().f29506c.a("Failed to insert default event parameters (got -1). appId", Cdo.a(str));
            }
        } catch (SQLiteException e) {
            f.t.c().f29506c.a("Error storing default event parameters. appId", Cdo.a(str), e);
        }
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void b(zzp zzpVar) {
        f(zzpVar);
        a(new fb(this, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final byte[] b(zzas zzasVar, String str) {
        o.a(str);
        o.a(zzasVar);
        a(str, true);
        this.f29644a.c().j.a("Log and bundle. event", this.f29644a.f.h().a(zzasVar.zza));
        long c2 = this.f29644a.Y_().c() / 1000000;
        try {
            byte[] bArr = (byte[]) this.f29644a.d().b(new fg(this, zzasVar, str)).get();
            byte[] bArr2 = bArr;
            if (bArr == null) {
                this.f29644a.c().f29506c.a("Log and bundle returned null. appId", Cdo.a(str));
                bArr2 = new byte[0];
            }
            this.f29644a.c().j.a("Log and bundle processed. event, size, time_ms", this.f29644a.f.h().a(zzasVar.zza), Integer.valueOf(bArr2.length), Long.valueOf((this.f29644a.Y_().c() / 1000000) - c2));
            return bArr2;
        } catch (InterruptedException | ExecutionException e) {
            this.f29644a.c().f29506c.a("Failed to log and bundle. appId, event, error", Cdo.a(str), this.f29644a.f.h().a(zzasVar.zza), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final String c(zzp zzpVar) {
        f(zzpVar);
        return this.f29644a.d(zzpVar);
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void d(zzp zzpVar) {
        o.a(zzpVar.zza);
        a(zzpVar.zza, false);
        a(new fa(this, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void e(zzp zzpVar) {
        jy.b();
        if (this.f29644a.b().d(null, dc.aw)) {
            o.a(zzpVar.zza);
            o.a(zzpVar.zzv);
            fc fcVar = new fc(this, zzpVar);
            o.a(fcVar);
            if (this.f29644a.d().aj_()) {
                fcVar.run();
            } else {
                this.f29644a.d().b(fcVar);
            }
        }
    }
}
