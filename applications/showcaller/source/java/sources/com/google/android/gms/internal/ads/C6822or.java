package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.ads.or */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/or.class */
public final class C6822or extends AbstractC7081vr<AbstractC6860ps> {

    /* renamed from: b */
    final /* synthetic */ Context f27686b;

    /* renamed from: c */
    final /* synthetic */ String f27687c;

    /* renamed from: d */
    final /* synthetic */ s70 f27688d;

    /* renamed from: e */
    final /* synthetic */ C7044ur f27689e;

    public C6822or(C7044ur c7044ur, Context context, String str, s70 s70Var) {
        this.f27689e = c7044ur;
        this.f27686b = context;
        this.f27687c = str;
        this.f27688d = s70Var;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ AbstractC6860ps mo9880a() {
        C7044ur.m10192h(this.f27686b, "native_ad");
        return new BinderC6492fv();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [com.google.android.gms.internal.ads.ps] */
    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ AbstractC6860ps mo9879b() {
        kc0 kc0Var;
        C6786ns c6786ns;
        C6932rq c6932rq;
        C6679kw.m13770a(this.f27686b);
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25618W6)).booleanValue()) {
            try {
                IBinder m11809a3 = ((C6897qs) hi0.m14638a(this.f27686b, "com.google.android.gms.ads.ChimeraAdLoaderBuilderCreatorImpl", C6785nr.f27270a)).m11809a3(BinderC6255b.m16744m2(this.f27686b), this.f27687c, this.f27688d, 213806000);
                if (m11809a3 == null) {
                    c6786ns = null;
                } else {
                    IInterface queryLocalInterface = m11809a3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                    c6786ns = queryLocalInterface instanceof AbstractC6860ps ? (AbstractC6860ps) queryLocalInterface : new C6786ns(m11809a3);
                }
            } catch (RemoteException | zzcgw | NullPointerException e) {
                this.f27689e.f30944h = ic0.m14453c(this.f27686b);
                kc0Var = this.f27689e.f30944h;
                kc0Var.mo13921b(e, "ClientApiBroker.createAdLoaderBuilder");
                c6786ns = null;
            }
        } else {
            c6932rq = this.f27689e.f30938b;
            c6786ns = c6932rq.m11334c(this.f27686b, this.f27687c, this.f27688d);
        }
        return c6786ns;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ AbstractC6860ps mo9878c(AbstractC6415dt abstractC6415dt) {
        return abstractC6415dt.mo15694p4(BinderC6255b.m16744m2(this.f27686b), this.f27687c, this.f27688d, 213806000);
    }
}
