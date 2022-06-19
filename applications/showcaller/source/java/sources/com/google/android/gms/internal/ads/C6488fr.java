package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.ads.fr */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fr.class */
public final class C6488fr extends AbstractC7081vr<yg0> {

    /* renamed from: b */
    final /* synthetic */ Context f23028b;

    /* renamed from: c */
    final /* synthetic */ s70 f23029c;

    public C6488fr(C7044ur c7044ur, Context context, s70 s70Var) {
        this.f23028b = context;
        this.f23029c = s70Var;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ yg0 mo9880a() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ yg0 mo9879b() {
        yg0 yg0Var;
        try {
            yg0Var = ((bh0) hi0.m14638a(this.f23028b, "com.google.android.gms.ads.DynamiteSignalGeneratorCreatorImpl", C6451er.f22313a)).mo8399F0(BinderC6255b.m16744m2(this.f23028b), this.f23029c, 213806000);
        } catch (RemoteException | zzcgw | NullPointerException e) {
            yg0Var = null;
        }
        return yg0Var;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ yg0 mo9878c(AbstractC6415dt abstractC6415dt) {
        return abstractC6415dt.mo15698e1(BinderC6255b.m16744m2(this.f23028b), this.f23029c, 213806000);
    }
}
