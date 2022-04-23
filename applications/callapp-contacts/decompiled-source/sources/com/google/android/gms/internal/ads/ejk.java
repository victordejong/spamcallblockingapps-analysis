package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import net.pubnative.lite.sdk.analytics.Reporting;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejk.class */
public final class ejk extends ejy<uq> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Context f27884a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f27885b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ mm f27886c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ ejj f27887d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ejk(ejj ejjVar, Context context, String str, mm mmVar) {
        this.f27887d = ejjVar;
        this.f27884a = context;
        this.f27885b = str;
        this.f27886c = mmVar;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    protected final /* synthetic */ uq a() {
        ejj.a(this.f27884a, Reporting.AdFormat.REWARDED);
        return new p();
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ uq a(elf elfVar) throws RemoteException {
        return elfVar.zzb(d.a(this.f27884a), this.f27885b, this.f27886c, 204890000);
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ uq b() throws RemoteException {
        return vg.a(this.f27884a, this.f27885b, this.f27886c);
    }
}
