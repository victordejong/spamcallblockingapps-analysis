package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.RemoteException;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbi.class */
final class cbi implements dbi<ArrayList<Uri>> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC12884ro f45450a;

    public cbi(caw cawVar, AbstractC12884ro abstractC12884ro) {
        this.f45450a = abstractC12884ro;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final /* synthetic */ void mo13892a(ArrayList<Uri> arrayList) {
        try {
            this.f45450a.mo14204a(arrayList);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13891a(Throwable th) {
        try {
            AbstractC12884ro abstractC12884ro = this.f45450a;
            String valueOf = String.valueOf(th.getMessage());
            abstractC12884ro.mo14205a(valueOf.length() != 0 ? "Internal error: ".concat(valueOf) : new String("Internal error: "));
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }
}
