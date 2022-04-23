package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/btu.class */
final class btu extends oi {

    /* renamed from: a  reason: collision with root package name */
    private bsn<os, buh> f25089a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ btq f25090b;

    private btu(btq btqVar, bsn<os, buh> bsnVar) {
        this.f25090b = btqVar;
        this.f25089a = bsnVar;
    }

    @Override // com.google.android.gms.internal.ads.of
    public final void a(b bVar) throws RemoteException {
        this.f25090b.f25079b = (View) d.a(bVar);
        this.f25089a.f25014c.e();
    }

    @Override // com.google.android.gms.internal.ads.of
    public final void a(mt mtVar) throws RemoteException {
        this.f25090b.f25080c = mtVar;
        this.f25089a.f25014c.e();
    }

    @Override // com.google.android.gms.internal.ads.of
    public final void a(zzvh zzvhVar) throws RemoteException {
        this.f25089a.f25014c.a(zzvhVar);
    }

    @Override // com.google.android.gms.internal.ads.of
    public final void a(String str) throws RemoteException {
        this.f25089a.f25014c.a(0, str);
    }
}
