package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejo.class */
public final class ejo extends ejy<ql> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Context f27896a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ mm f27897b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ejo(ejj ejjVar, Context context, mm mmVar) {
        this.f27896a = context;
        this.f27897b = mmVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public final ql b() {
        try {
            return ((qq) yz.a(this.f27896a, "com.google.android.gms.ads.DynamiteOfflineUtilsCreatorImpl", ejr.f27903a)).a(d.a(this.f27896a), this.f27897b);
        } catch (RemoteException | zzbap | NullPointerException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.ejy
    protected final /* bridge */ /* synthetic */ ql a() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ ql a(elf elfVar) throws RemoteException {
        return elfVar.zzc(d.a(this.f27896a), this.f27897b, 204890000);
    }
}
