package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.d;
import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejw.class */
public final class ejw extends ejy<ed> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ View f27918a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ HashMap f27919b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ HashMap f27920c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ ejj f27921d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ejw(ejj ejjVar, View view, HashMap hashMap, HashMap hashMap2) {
        this.f27921d = ejjVar;
        this.f27918a = view;
        this.f27919b = hashMap;
        this.f27920c = hashMap2;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    protected final /* synthetic */ ed a() {
        ejj.a(this.f27918a.getContext(), "native_ad_view_holder_delegate");
        return new m();
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ ed a(elf elfVar) throws RemoteException {
        return elfVar.zza(d.a(this.f27918a), d.a(this.f27919b), d.a(this.f27920c));
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ ed b() throws RemoteException {
        ga gaVar;
        gaVar = this.f27921d.h;
        return gaVar.a(this.f27918a, this.f27919b, this.f27920c);
    }
}
