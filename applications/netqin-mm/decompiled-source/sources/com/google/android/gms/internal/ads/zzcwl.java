package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwl.class */
public final class zzcwl {

    /* renamed from: a */
    public final zzdow f26662a;

    /* renamed from: b */
    public final zzckp f26663b;

    /* renamed from: c */
    public final zzcmu f26664c;

    public zzcwl(zzdow zzdowVar, zzckp zzckpVar, zzcmu zzcmuVar) {
        this.f26662a = zzdowVar;
        this.f26663b = zzckpVar;
        this.f26664c = zzcmuVar;
    }

    /* renamed from: a */
    public final void m13814a(zzdnw zzdnwVar, zzdnv zzdnvVar, int i, zzcte zzcteVar, long j) {
        zzckq zzckqVar;
        zzcmt a = this.f26664c.m14042a();
        a.m14047a(zzdnwVar);
        a.m14048a(zzdnvVar);
        a.m14046a("action", "adapter_status");
        a.m14046a("adapter_l", String.valueOf(j));
        a.m14046a("sc", Integer.toString(i));
        if (zzcteVar != null) {
            a.m14046a("arec", Integer.toString(zzcteVar.zzaqj().f28995a));
            String a2 = this.f26662a.m13388a(zzcteVar.getMessage());
            if (a2 != null) {
                a.m14046a("areec", a2);
            }
        }
        zzckp zzckpVar = this.f26663b;
        Iterator<String> it = zzdnvVar.f27603s.iterator();
        while (true) {
            if (!it.hasNext()) {
                zzckqVar = null;
                break;
            }
            zzckqVar = zzckpVar.m14110a(it.next());
            if (zzckqVar != null) {
                break;
            }
        }
        if (zzckqVar != null) {
            a.m14046a("ancn", zzckqVar.f26188a);
            zzapv zzapvVar = zzckqVar.f26189b;
            if (zzapvVar != null) {
                a.m14046a("adapter_v", zzapvVar.toString());
            }
            zzapv zzapvVar2 = zzckqVar.f26190c;
            if (zzapvVar2 != null) {
                a.m14046a("adapter_sv", zzapvVar2.toString());
            }
        }
        a.m14045b();
    }
}
