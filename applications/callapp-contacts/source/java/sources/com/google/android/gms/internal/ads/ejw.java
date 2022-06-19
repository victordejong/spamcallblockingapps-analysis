package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejw.class */
public final class ejw extends ejy<AbstractC12439ed> {

    /* renamed from: a */
    private final /* synthetic */ View f49133a;

    /* renamed from: b */
    private final /* synthetic */ HashMap f49134b;

    /* renamed from: c */
    private final /* synthetic */ HashMap f49135c;

    /* renamed from: d */
    private final /* synthetic */ ejj f49136d;

    public ejw(ejj ejjVar, View view, HashMap hashMap, HashMap hashMap2) {
        this.f49136d = ejjVar;
        this.f49133a = view;
        this.f49134b = hashMap;
        this.f49135c = hashMap2;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    protected final /* synthetic */ AbstractC12439ed mo14839a() {
        ejj.m14857a(this.f49133a.getContext(), "native_ad_view_holder_delegate");
        return new BinderC12733m();
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    public final /* synthetic */ AbstractC12439ed mo14838a(elf elfVar) throws RemoteException {
        return elfVar.zza(BinderC12129d.m18979a(this.f49133a), BinderC12129d.m18979a(this.f49134b), BinderC12129d.m18979a(this.f49135c));
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: b */
    public final /* synthetic */ AbstractC12439ed mo14837b() throws RemoteException {
        C12572ga c12572ga;
        c12572ga = this.f49136d.f49095h;
        return c12572ga.m14643a(this.f49133a, this.f49134b, this.f49135c);
    }
}
