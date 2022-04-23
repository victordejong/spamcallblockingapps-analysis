package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbf.class */
final class cbf implements dbi<cbt> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ xn f25527a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ caw f25528b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cbf(caw cawVar, xn xnVar) {
        this.f25528b = cawVar;
        this.f25527a = xnVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(cbt cbtVar) {
        zzbar zzbarVar;
        cbt cbtVar2 = cbtVar;
        try {
            if (((Boolean) ekb.e().a(aq.et)).booleanValue()) {
                zzbarVar = this.f25528b.m;
                if (zzbarVar.zzekb >= ((Integer) ekb.e().a(aq.ev)).intValue()) {
                    if (cbtVar2 == null) {
                        this.f25527a.a(null, null, null);
                        return;
                    } else {
                        this.f25527a.a(cbtVar2.f25548a, cbtVar2.f25549b, cbtVar2.f25550c);
                        return;
                    }
                }
            }
            if (cbtVar2 == null) {
                this.f25527a.a(null, null);
            } else {
                this.f25527a.a(cbtVar2.f25548a, cbtVar2.f25549b);
            }
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        try {
            xn xnVar = this.f25527a;
            String valueOf = String.valueOf(th.getMessage());
            xnVar.a(valueOf.length() != 0 ? "Internal error. ".concat(valueOf) : new String("Internal error. "));
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }
}
