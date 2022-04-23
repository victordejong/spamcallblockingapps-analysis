package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejv.class */
public final class ejv extends ejy<ekp> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Context f27914a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f27915b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ mm f27916c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ ejj f27917d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ejv(ejj ejjVar, Context context, String str, mm mmVar) {
        this.f27917d = ejjVar;
        this.f27914a = context;
        this.f27915b = str;
        this.f27916c = mmVar;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    protected final /* synthetic */ ekp a() {
        ejj.a(this.f27914a, "native_ad");
        return new f();
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ ekp a(elf elfVar) throws RemoteException {
        return elfVar.zza(d.a(this.f27914a), this.f27915b, this.f27916c, 204890000);
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ ekp b() throws RemoteException {
        eiw eiwVar;
        eiwVar = this.f27917d.f27881b;
        return eiwVar.a(this.f27914a, this.f27915b, this.f27916c);
    }
}
