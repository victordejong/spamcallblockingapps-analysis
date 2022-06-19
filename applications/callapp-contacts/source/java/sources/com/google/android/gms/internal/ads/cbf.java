package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbf.class */
final class cbf implements dbi<cbt> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC13047xn f45445a;

    /* renamed from: b */
    private final /* synthetic */ caw f45446b;

    public cbf(caw cawVar, AbstractC13047xn abstractC13047xn) {
        this.f45446b = cawVar;
        this.f45445a = abstractC13047xn;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final /* synthetic */ void mo13892a(cbt cbtVar) {
        zzbar zzbarVar;
        cbt cbtVar2 = cbtVar;
        try {
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42895et)).booleanValue()) {
                zzbarVar = this.f45446b.f45429m;
                if (zzbarVar.zzekb >= ((Integer) ekb.m14831e().m18571a(C12187aq.f42897ev)).intValue()) {
                    if (cbtVar2 == null) {
                        this.f45445a.mo14000a(null, null, null);
                        return;
                    } else {
                        this.f45445a.mo14000a(cbtVar2.f45469a, cbtVar2.f45470b, cbtVar2.f45471c);
                        return;
                    }
                }
            }
            if (cbtVar2 == null) {
                this.f45445a.mo14001a(null, null);
            } else {
                this.f45445a.mo14001a(cbtVar2.f45469a, cbtVar2.f45470b);
            }
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13891a(Throwable th) {
        try {
            AbstractC13047xn abstractC13047xn = this.f45445a;
            String valueOf = String.valueOf(th.getMessage());
            abstractC13047xn.mo14002a(valueOf.length() != 0 ? "Internal error. ".concat(valueOf) : new String("Internal error. "));
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }
}
