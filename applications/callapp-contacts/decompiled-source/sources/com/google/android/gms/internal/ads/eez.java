package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eez.class */
final class eez implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ efa f27758a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eez(efa efaVar) {
        this.f27758a = efaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        boolean z2;
        List<efc> list;
        obj = this.f27758a.e;
        synchronized (obj) {
            z = this.f27758a.f;
            if (z) {
                z2 = this.f27758a.g;
                if (z2) {
                    this.f27758a.f = false;
                    zzd.zzdz("App went background");
                    list = this.f27758a.h;
                    for (efc efcVar : list) {
                        try {
                            efcVar.a(false);
                        } catch (Exception e) {
                            za.zzc("", e);
                        }
                    }
                }
            }
            zzd.zzdz("App is still foreground");
        }
    }
}
