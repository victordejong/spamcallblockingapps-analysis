package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import com.mopub.common.AdType;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejs.class */
public final class ejs extends ejy<ekw> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Context f27904a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ zzvt f27905b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ String f27906c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ mm f27907d;
    private final /* synthetic */ ejj e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ejs(ejj ejjVar, Context context, zzvt zzvtVar, String str, mm mmVar) {
        this.e = ejjVar;
        this.f27904a = context;
        this.f27905b = zzvtVar;
        this.f27906c = str;
        this.f27907d = mmVar;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ ekw a() {
        ejj.a(this.f27904a, AdType.INTERSTITIAL);
        return new j();
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ ekw a(elf elfVar) throws RemoteException {
        return elfVar.zzb(d.a(this.f27904a), this.f27905b, this.f27906c, this.f27907d, 204890000);
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ ekw b() throws RemoteException {
        eiz eizVar;
        eizVar = this.e.f27880a;
        return eizVar.a(this.f27904a, this.f27905b, this.f27906c, this.f27907d, 2);
    }
}
