package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.ListenerHolder;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.AbstractC3245b0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zae.class */
public final class zae extends AbstractC3245b0<Void> {

    /* renamed from: c */
    public final zabs f23275c;

    @Override // com.google.android.gms.common.api.internal.zab
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo17485a(zav zavVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zad
    /* renamed from: b */
    public final Feature[] mo17483b(GoogleApiManager.zaa<?> zaaVar) {
        return this.f23275c.f23253a.m17601c();
    }

    @Override // com.google.android.gms.common.api.internal.zad
    /* renamed from: c */
    public final boolean mo17482c(GoogleApiManager.zaa<?> zaaVar) {
        return this.f23275c.f23253a.m17600d();
    }

    @Override // p131c.p161d.p170b.p224d.p238d.p239a.p240a.AbstractC3245b0
    /* renamed from: d */
    public final void mo17488d(GoogleApiManager.zaa<?> zaaVar) throws RemoteException {
        this.f23275c.f23253a.m17603a(zaaVar.m17660b(), this.f11933b);
        ListenerHolder.ListenerKey<?> b = this.f23275c.f23253a.m17602b();
        if (b != null) {
            zaaVar.m17654c().put(b, this.f23275c);
        }
    }
}
