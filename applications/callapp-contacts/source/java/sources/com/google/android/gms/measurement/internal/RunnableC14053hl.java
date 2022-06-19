package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.measurement.AbstractC13706nc;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.hl */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hl.class */
public final class RunnableC14053hl implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f51802a;

    /* renamed from: b */
    final /* synthetic */ String f51803b;

    /* renamed from: c */
    final /* synthetic */ zzp f51804c;

    /* renamed from: d */
    final /* synthetic */ boolean f51805d;

    /* renamed from: e */
    final /* synthetic */ AbstractC13706nc f51806e;

    /* renamed from: f */
    final /* synthetic */ C14079ik f51807f;

    public RunnableC14053hl(C14079ik c14079ik, String str, String str2, zzp zzpVar, boolean z, AbstractC13706nc abstractC13706nc) {
        this.f51807f = c14079ik;
        this.f51802a = str;
        this.f51803b = str2;
        this.f51804c = zzpVar;
        this.f51805d = z;
        this.f51806e = abstractC13706nc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable th;
        RemoteException e;
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        try {
            try {
                AbstractC13938df abstractC13938df = this.f51807f.f51890b;
                if (abstractC13938df == null) {
                    this.f51807f.f51637t.mo11661c().f51395c.m12090a("Failed to get user properties; not connected to service", this.f51802a, this.f51803b);
                    this.f51807f.f51637t.m11988g().m11597a(this.f51806e, bundle2);
                    return;
                }
                C12045o.m19162a(this.f51804c);
                List<zzkl> mo11892a = abstractC13938df.mo11892a(this.f51802a, this.f51803b, this.f51805d, this.f51804c);
                bundle = new Bundle();
                if (mo11892a != null) {
                    for (zzkl zzklVar : mo11892a) {
                        String str = zzklVar.zze;
                        if (str != null) {
                            bundle.putString(zzklVar.zzb, str);
                        } else {
                            Long l = zzklVar.zzd;
                            if (l != null) {
                                bundle.putLong(zzklVar.zzb, l.longValue());
                            } else {
                                Double d = zzklVar.zzg;
                                if (d != null) {
                                    bundle.putDouble(zzklVar.zzb, d.doubleValue());
                                }
                            }
                        }
                    }
                }
                try {
                    this.f51807f.m11736i();
                    this.f51807f.f51637t.m11988g().m11597a(this.f51806e, bundle);
                } catch (RemoteException e2) {
                    e = e2;
                    this.f51807f.f51637t.mo11661c().f51395c.m12090a("Failed to get user properties; remote exception", this.f51802a, e);
                    this.f51807f.f51637t.m11988g().m11597a(this.f51806e, bundle);
                }
            } catch (Throwable th2) {
                th = th2;
                this.f51807f.f51637t.m11988g().m11597a(this.f51806e, bundle2);
                throw th;
            }
        } catch (RemoteException e3) {
            e = e3;
            bundle = bundle2;
        } catch (Throwable th3) {
            th = th3;
            this.f51807f.f51637t.m11988g().m11597a(this.f51806e, bundle2);
            throw th;
        }
    }
}
