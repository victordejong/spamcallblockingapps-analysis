package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.RemoteException;
import java.util.ArrayList;
import javax.annotation.Nonnull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/buj.class */
final class buj implements crh<ArrayList<Uri>> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC3389op f12285a;

    public buj(btx btxVar, AbstractC3389op abstractC3389op) {
        this.f12285a = abstractC3389op;
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final /* synthetic */ void mo6719a(@Nonnull ArrayList<Uri> arrayList) {
        try {
            this.f12285a.mo7356a(arrayList);
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final void mo6718a(Throwable th) {
        try {
            AbstractC3389op abstractC3389op = this.f12285a;
            String valueOf = String.valueOf(th.getMessage());
            abstractC3389op.mo7357a(valueOf.length() != 0 ? "Internal error: ".concat(valueOf) : new String("Internal error: "));
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
        }
    }
}
