package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.measurement.nc;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hl.class */
public final class hl implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29769a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29770b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ zzp f29771c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ boolean f29772d;
    final /* synthetic */ nc e;
    final /* synthetic */ ik f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hl(ik ikVar, String str, String str2, zzp zzpVar, boolean z, nc ncVar) {
        this.f = ikVar;
        this.f29769a = str;
        this.f29770b = str2;
        this.f29771c = zzpVar;
        this.f29772d = z;
        this.e = ncVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable th;
        RemoteException e;
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        try {
            try {
                df dfVar = this.f.f29842b;
                if (dfVar == null) {
                    this.f.t.c().f29506c.a("Failed to get user properties; not connected to service", this.f29769a, this.f29770b);
                    this.f.t.g().a(this.e, bundle2);
                    return;
                }
                o.a(this.f29771c);
                List<zzkl> a2 = dfVar.a(this.f29769a, this.f29770b, this.f29772d, this.f29771c);
                bundle = new Bundle();
                if (a2 != null) {
                    for (zzkl zzklVar : a2) {
                        String str = zzklVar.zze;
                        if (str != null) {
                            bundle.putString(zzklVar.zzb, str);
                        } else {
                            Long l = zzklVar.zzd;
                            if (l != null) {
                                bundle.putLong(zzklVar.zzb, l.longValue());
                            } else {
                                Double d2 = zzklVar.zzg;
                                if (d2 != null) {
                                    bundle.putDouble(zzklVar.zzb, d2.doubleValue());
                                }
                            }
                        }
                    }
                }
                try {
                    this.f.i();
                    this.f.t.g().a(this.e, bundle);
                } catch (RemoteException e2) {
                    e = e2;
                    this.f.t.c().f29506c.a("Failed to get user properties; remote exception", this.f29769a, e);
                    this.f.t.g().a(this.e, bundle);
                }
            } catch (Throwable th2) {
                th = th2;
                this.f.t.g().a(this.e, bundle2);
                throw th;
            }
        } catch (RemoteException e3) {
            e = e3;
            bundle = bundle2;
        } catch (Throwable th3) {
            th = th3;
            this.f.t.g().a(this.e, bundle2);
            throw th;
        }
    }
}
