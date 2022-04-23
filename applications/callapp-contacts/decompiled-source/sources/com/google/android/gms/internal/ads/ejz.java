package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import com.mopub.common.AdType;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejz.class */
public final class ejz extends ejy<ts> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Context f27927a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ mm f27928b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ ejj f27929c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ejz(ejj ejjVar, Context context, mm mmVar) {
        this.f27929c = ejjVar;
        this.f27927a = context;
        this.f27928b = mmVar;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    protected final /* synthetic */ ts a() {
        ejj.a(this.f27927a, AdType.REWARDED_VIDEO);
        return new r();
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ ts a(elf elfVar) throws RemoteException {
        return elfVar.zza(d.a(this.f27927a), this.f27928b, 204890000);
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ ts b() throws RemoteException {
        ud udVar;
        udVar = this.f27929c.e;
        return udVar.a(this.f27927a, this.f27928b);
    }
}
