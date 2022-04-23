package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejl.class */
public final class ejl extends ejy<ekw> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Context f27888a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ zzvt f27889b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ String f27890c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ mm f27891d;
    private final /* synthetic */ ejj e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ejl(ejj ejjVar, Context context, zzvt zzvtVar, String str, mm mmVar) {
        this.e = ejjVar;
        this.f27888a = context;
        this.f27889b = zzvtVar;
        this.f27890c = str;
        this.f27891d = mmVar;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ ekw a() {
        ejj.a(this.f27888a, "banner");
        return new j();
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ ekw a(elf elfVar) throws RemoteException {
        return elfVar.zza(d.a(this.f27888a), this.f27889b, this.f27890c, this.f27891d, 204890000);
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ ekw b() throws RemoteException {
        eiz eizVar;
        eizVar = this.e.f27880a;
        return eizVar.a(this.f27888a, this.f27889b, this.f27890c, this.f27891d, 1);
    }
}
