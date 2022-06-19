package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/btu.class */
final class btu extends AbstractBinderC12797oi {

    /* renamed from: a */
    private bsn<AbstractC12807os, buh> f44730a;

    /* renamed from: b */
    private final /* synthetic */ btq f44731b;

    /* JADX INFO: Access modifiers changed from: private */
    public btu(btq btqVar, bsn<AbstractC12807os, buh> bsnVar) {
        this.f44731b = btqVar;
        this.f44730a = bsnVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12794of
    /* renamed from: a */
    public final void mo14304a(AbstractC12126b abstractC12126b) throws RemoteException {
        this.f44731b.f44720b = (View) BinderC12129d.m18980a(abstractC12126b);
        this.f44730a.f44641c.mo14418e();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12794of
    /* renamed from: a */
    public final void mo14303a(AbstractC12753mt abstractC12753mt) throws RemoteException {
        this.f44731b.f44721c = abstractC12753mt;
        this.f44730a.f44641c.mo14418e();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12794of
    /* renamed from: a */
    public final void mo14302a(zzvh zzvhVar) throws RemoteException {
        this.f44730a.f44641c.mo14427a(zzvhVar);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12794of
    /* renamed from: a */
    public final void mo14301a(String str) throws RemoteException {
        this.f44730a.f44641c.mo14433a(0, str);
    }
}
