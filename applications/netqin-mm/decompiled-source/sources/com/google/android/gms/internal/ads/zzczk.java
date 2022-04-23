package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczk.class */
public final class zzczk extends zzwx {

    /* renamed from: a */
    public final zzdaa f26817a;

    public zzczk(Context context, zzbix zzbixVar, zzdom zzdomVar, zzcep zzcepVar, zzwt zzwtVar) {
        zzdac zzdacVar = new zzdac(zzcepVar);
        zzdacVar.m13710a(zzwtVar);
        this.f26817a = new zzdaa(new zzdai(zzbixVar, context, zzdacVar, zzdomVar), zzdomVar.m13426b());
    }

    @Override // com.google.android.gms.internal.ads.zzwu
    /* renamed from: a */
    public final String mo11152a() {
        String a;
        synchronized (this) {
            a = this.f26817a.m13717a();
        }
        return a;
    }

    @Override // com.google.android.gms.internal.ads.zzwu
    /* renamed from: a */
    public final void mo11151a(zzvg zzvgVar) throws RemoteException {
        this.f26817a.m13714a(zzvgVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzwu
    /* renamed from: a */
    public final void mo11150a(zzvg zzvgVar, int i) throws RemoteException {
        synchronized (this) {
            this.f26817a.m13714a(zzvgVar, i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwu
    /* renamed from: k0 */
    public final String mo11149k0() {
        String c;
        synchronized (this) {
            c = this.f26817a.m13712c();
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.zzwu
    /* renamed from: n */
    public final boolean mo11148n() throws RemoteException {
        boolean b;
        synchronized (this) {
            b = this.f26817a.m13713b();
        }
        return b;
    }
}
