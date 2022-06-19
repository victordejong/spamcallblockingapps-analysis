package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.RemoteException;
import java.util.Collections;
import javax.annotation.Nonnull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bui.class */
final class bui implements crh<Uri> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC3389op f12284a;

    public bui(btx btxVar, AbstractC3389op abstractC3389op) {
        this.f12284a = abstractC3389op;
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final /* synthetic */ void mo6719a(@Nonnull Uri uri) {
        try {
            this.f12284a.mo7356a(Collections.singletonList(uri));
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final void mo6718a(Throwable th) {
        try {
            AbstractC3389op abstractC3389op = this.f12284a;
            String valueOf = String.valueOf(th.getMessage());
            abstractC3389op.mo7357a(valueOf.length() != 0 ? "Internal error: ".concat(valueOf) : new String("Internal error: "));
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
        }
    }
}
