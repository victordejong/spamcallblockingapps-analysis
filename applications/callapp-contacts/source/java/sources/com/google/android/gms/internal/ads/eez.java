package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eez.class */
final class eez implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ efa f48918a;

    public eez(efa efaVar) {
        this.f48918a = efaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        boolean z2;
        List<efc> list;
        obj = this.f48918a.f48923e;
        synchronized (obj) {
            z = this.f48918a.f48924f;
            if (z) {
                z2 = this.f48918a.f48925g;
                if (z2) {
                    this.f48918a.f48924f = false;
                    zzd.zzdz("App went background");
                    list = this.f48918a.f48926h;
                    for (efc efcVar : list) {
                        try {
                            efcVar.mo13953a(false);
                        } catch (Exception e) {
                            C13088za.zzc("", e);
                        }
                    }
                }
            }
            zzd.zzdz("App is still foreground");
        }
    }
}
