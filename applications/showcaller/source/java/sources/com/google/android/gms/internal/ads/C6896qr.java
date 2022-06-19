package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.ads.qr */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qr.class */
public final class C6896qr extends AbstractC7081vr<AbstractC6713lt> {

    /* renamed from: b */
    final /* synthetic */ Context f28608b;

    /* renamed from: c */
    final /* synthetic */ C7044ur f28609c;

    public C6896qr(C7044ur c7044ur, Context context) {
        this.f28609c = c7044ur;
        this.f28608b = context;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ AbstractC6713lt mo9880a() {
        C7044ur.m10192h(this.f28608b, "mobile_ads_settings");
        return new BinderC6641jv();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [com.google.android.gms.internal.ads.lt] */
    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ AbstractC6713lt mo9879b() {
        kc0 kc0Var;
        C6639jt c6639jt;
        C6306av c6306av;
        C6679kw.m13770a(this.f28608b);
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25618W6)).booleanValue()) {
            try {
                IBinder m13084a3 = ((C6750mt) hi0.m14638a(this.f28608b, "com.google.android.gms.ads.ChimeraMobileAdsSettingManagerCreatorImpl", C6859pr.f28102a)).m13084a3(BinderC6255b.m16744m2(this.f28608b), 213806000);
                if (m13084a3 == null) {
                    c6639jt = null;
                } else {
                    IInterface queryLocalInterface = m13084a3.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
                    c6639jt = queryLocalInterface instanceof AbstractC6713lt ? (AbstractC6713lt) queryLocalInterface : new C6639jt(m13084a3);
                }
            } catch (RemoteException | zzcgw | NullPointerException e) {
                this.f28609c.f30944h = ic0.m14453c(this.f28608b);
                kc0Var = this.f28609c.f30944h;
                kc0Var.mo13921b(e, "ClientApiBroker.getMobileAdsSettingsManager");
                c6639jt = null;
            }
        } else {
            c6306av = this.f28609c.f30939c;
            c6639jt = c6306av.m16481c(this.f28608b);
        }
        return c6639jt;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ AbstractC6713lt mo9878c(AbstractC6415dt abstractC6415dt) {
        return abstractC6415dt.mo15699Z4(BinderC6255b.m16744m2(this.f28608b), 213806000);
    }
}
