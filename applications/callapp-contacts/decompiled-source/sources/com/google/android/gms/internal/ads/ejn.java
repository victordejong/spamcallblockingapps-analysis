package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejn.class */
public final class ejn extends ejy<qz> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Activity f27894a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ejj f27895b;

    public ejn(ejj ejjVar, Activity activity) {
        this.f27895b = ejjVar;
        this.f27894a = activity;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    protected final /* synthetic */ qz a() {
        ejj.a(this.f27894a, "ad_overlay");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ qz a(elf elfVar) throws RemoteException {
        return elfVar.zzb(d.a(this.f27894a));
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ qz b() throws RemoteException {
        qx qxVar;
        qxVar = this.f27895b.g;
        return qxVar.a(this.f27894a);
    }
}
