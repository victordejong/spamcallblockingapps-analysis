package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejt.class */
public final class ejt extends ejy<ekw> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Context f27908a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ zzvt f27909b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ String f27910c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ ejj f27911d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ejt(ejj ejjVar, Context context, zzvt zzvtVar, String str) {
        this.f27911d = ejjVar;
        this.f27908a = context;
        this.f27909b = zzvtVar;
        this.f27910c = str;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ ekw a() {
        ejj.a(this.f27908a, "search");
        return new j();
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ ekw a(elf elfVar) throws RemoteException {
        return elfVar.zza(d.a(this.f27908a), this.f27909b, this.f27910c, 204890000);
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ ekw b() throws RemoteException {
        eiz eizVar;
        eizVar = this.f27911d.f27880a;
        return eizVar.a(this.f27908a, this.f27909b, this.f27910c, null, 3);
    }
}
