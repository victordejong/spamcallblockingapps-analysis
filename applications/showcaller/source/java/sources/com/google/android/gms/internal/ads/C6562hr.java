package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.ads.hr */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hr.class */
public final class C6562hr extends AbstractC7081vr<ab0> {

    /* renamed from: b */
    final /* synthetic */ Context f24026b;

    /* renamed from: c */
    final /* synthetic */ s70 f24027c;

    public C6562hr(C7044ur c7044ur, Context context, s70 s70Var) {
        this.f24026b = context;
        this.f24027c = s70Var;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ ab0 mo9880a() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ ab0 mo9879b() {
        ab0 ab0Var;
        try {
            ab0Var = ((db0) hi0.m14638a(this.f24026b, "com.google.android.gms.ads.DynamiteOfflineUtilsCreatorImpl", C6525gr.f23448a)).mo15840F0(BinderC6255b.m16744m2(this.f24026b), this.f24027c, 213806000);
        } catch (RemoteException | zzcgw | NullPointerException e) {
            ab0Var = null;
        }
        return ab0Var;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ ab0 mo9878c(AbstractC6415dt abstractC6415dt) {
        return abstractC6415dt.mo15693p6(BinderC6255b.m16744m2(this.f24026b), this.f24027c, 213806000);
    }
}
