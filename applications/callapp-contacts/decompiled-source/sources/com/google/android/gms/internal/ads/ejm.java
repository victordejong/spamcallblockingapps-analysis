package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejm.class */
public final class ejm extends ejy<xo> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Context f27892a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ mm f27893b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ejm(ejj ejjVar, Context context, mm mmVar) {
        this.f27892a = context;
        this.f27893b = mmVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public final xo b() {
        try {
            return ((xt) yz.a(this.f27892a, "com.google.android.gms.ads.DynamiteSignalGeneratorCreatorImpl", ejp.f27898a)).a(d.a(this.f27892a), this.f27893b);
        } catch (RemoteException | zzbap | NullPointerException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.ejy
    protected final /* bridge */ /* synthetic */ xo a() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ xo a(elf elfVar) throws RemoteException {
        return elfVar.zzb(d.a(this.f27892a), this.f27893b, 204890000);
    }
}
