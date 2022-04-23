package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejx.class */
public final class ejx extends ejy<dv> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ FrameLayout f27922a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ FrameLayout f27923b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ Context f27924c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ ejj f27925d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ejx(ejj ejjVar, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.f27925d = ejjVar;
        this.f27922a = frameLayout;
        this.f27923b = frameLayout2;
        this.f27924c = context;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    protected final /* synthetic */ dv a() {
        ejj.a(this.f27924c, "native_ad_view_delegate");
        return new n();
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ dv a(elf elfVar) throws RemoteException {
        return elfVar.zza(d.a(this.f27922a), d.a(this.f27923b));
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ dv b() throws RemoteException {
        fx fxVar;
        fxVar = this.f27925d.f27883d;
        return fxVar.a(this.f27924c, this.f27922a, this.f27923b);
    }
}
