package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejq.class */
public final class ejq extends ejy<ekw> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Context f27899a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ zzvt f27900b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ String f27901c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ mm f27902d;
    private final /* synthetic */ ejj e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ejq(ejj ejjVar, Context context, zzvt zzvtVar, String str, mm mmVar) {
        this.e = ejjVar;
        this.f27899a = context;
        this.f27900b = zzvtVar;
        this.f27901c = str;
        this.f27902d = mmVar;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ ekw a() {
        ejj.a(this.f27899a, "app_open");
        return new j();
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ ekw a(elf elfVar) throws RemoteException {
        return elfVar.zzc(d.a(this.f27899a), this.f27900b, this.f27901c, this.f27902d, 204890000);
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ ekw b() throws RemoteException {
        eiz eizVar;
        eizVar = this.e.f27880a;
        return eizVar.a(this.f27899a, this.f27900b, this.f27901c, this.f27902d, 4);
    }
}
