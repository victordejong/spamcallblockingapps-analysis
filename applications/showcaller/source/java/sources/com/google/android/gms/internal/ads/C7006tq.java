package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC6255b;
import com.google.android.gms.dynamic.RemoteCreator;
/* renamed from: com.google.android.gms.internal.ads.tq */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tq.class */
public final class C7006tq extends RemoteCreator<C7045us> {

    /* renamed from: c */
    private kc0 f30109c;

    public C7006tq() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ C7045us mo10567a(IBinder iBinder) {
        C7045us c7045us;
        if (iBinder == null) {
            c7045us = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
            c7045us = queryLocalInterface instanceof C7045us ? (C7045us) queryLocalInterface : new C7045us(iBinder);
        }
        return c7045us;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [com.google.android.gms.internal.ads.rs] */
    /* JADX WARN: Type inference failed for: r0v30, types: [com.google.android.gms.internal.ads.ts] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.google.android.gms.internal.ads.ts] */
    /* renamed from: c */
    public final AbstractC7008ts m10566c(Context context, zzbdl zzbdlVar, String str, s70 s70Var, int i) {
        C6934rs c6934rs;
        C6679kw.m13770a(context);
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25618W6)).booleanValue()) {
            try {
                IBinder m10178a3 = m16747b(context).m10178a3(BinderC6255b.m16744m2(context), zzbdlVar, str, s70Var, 213806000, i);
                if (m10178a3 == null) {
                    c6934rs = null;
                } else {
                    IInterface queryLocalInterface = m10178a3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    c6934rs = queryLocalInterface instanceof AbstractC7008ts ? (AbstractC7008ts) queryLocalInterface : new C6934rs(m10178a3);
                }
                return c6934rs;
            } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
                ei0.m15468b("Could not create remote AdManager.", e);
                return null;
            }
        }
        try {
            IBinder m10178a32 = ((C7045us) hi0.m14638a(context, "com.google.android.gms.ads.ChimeraAdManagerCreatorImpl", C6969sq.f29606a)).m10178a3(BinderC6255b.m16744m2(context), zzbdlVar, str, s70Var, 213806000, i);
            if (m10178a32 == null) {
                context = null;
            } else {
                IInterface queryLocalInterface2 = m10178a32.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
                context = queryLocalInterface2 instanceof AbstractC7008ts ? (AbstractC7008ts) queryLocalInterface2 : new C6934rs(m10178a32);
            }
        } catch (RemoteException | zzcgw | NullPointerException e2) {
            kc0 m14453c = ic0.m14453c(context);
            this.f30109c = m14453c;
            m14453c.mo13921b(e2, "AdManagerCreator.newAdManagerByDynamiteLoader");
            ei0.m15461i("#007 Could not call remote method.", e2);
            context = null;
        }
        return context;
    }
}
