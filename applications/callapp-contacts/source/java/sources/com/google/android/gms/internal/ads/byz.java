package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/byz.class */
public final class byz extends ekn {

    /* renamed from: a */
    private final caf f45137a;

    public byz(Context context, afq afqVar, cpq cpqVar, bcy bcyVar, eki ekiVar) {
        cah cahVar = new cah(bcyVar, afqVar.mo18737a());
        cahVar.f45202b.m17551a(ekiVar);
        this.f45137a = new caf(new can(afqVar, context, cahVar, cpqVar), cpqVar.f46340d);
    }

    @Override // com.google.android.gms.internal.ads.eko
    /* renamed from: a */
    public final void mo14627a(zzvq zzvqVar) throws RemoteException {
        this.f45137a.m17526a(zzvqVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.eko
    /* renamed from: a */
    public final void mo14626a(zzvq zzvqVar, int i) throws RemoteException {
        synchronized (this) {
            this.f45137a.m17526a(zzvqVar, i);
        }
    }

    @Override // com.google.android.gms.internal.ads.eko
    /* renamed from: a */
    public final boolean mo14628a() throws RemoteException {
        boolean m17527a;
        synchronized (this) {
            m17527a = this.f45137a.m17527a();
        }
        return m17527a;
    }

    @Override // com.google.android.gms.internal.ads.eko
    /* renamed from: b */
    public final String mo14625b() {
        String m17525b;
        synchronized (this) {
            m17525b = this.f45137a.m17525b();
        }
        return m17525b;
    }

    @Override // com.google.android.gms.internal.ads.eko
    /* renamed from: c */
    public final String mo14624c() {
        String m17524c;
        synchronized (this) {
            m17524c = this.f45137a.m17524c();
        }
        return m17524c;
    }
}
