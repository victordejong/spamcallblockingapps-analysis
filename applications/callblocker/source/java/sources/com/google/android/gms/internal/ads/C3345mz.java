package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.AbstractC2359d;
import com.google.android.gms.ads.mediation.AbstractC2371o;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.mz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mz.class */
public final class C3345mz implements AbstractC2359d<AbstractC2371o, Object> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC3328mi f16972a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC3286ku f16973b;

    /* renamed from: c */
    private final /* synthetic */ BinderC3339mt f16974c;

    public C3345mz(BinderC3339mt binderC3339mt, AbstractC3328mi abstractC3328mi, AbstractC3286ku abstractC3286ku) {
        this.f16974c = binderC3339mt;
        this.f16972a = abstractC3328mi;
        this.f16973b = abstractC3286ku;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2359d
    /* renamed from: a */
    public final void mo7437a(String str) {
        try {
            this.f16972a.mo7461a(str);
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
        }
    }
}
