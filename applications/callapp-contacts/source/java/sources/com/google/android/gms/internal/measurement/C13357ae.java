package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.measurement.ae */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ae.class */
final class C13357ae extends AbstractRunnableC13353aa {

    /* renamed from: a */
    final /* synthetic */ Activity f50584a;

    /* renamed from: b */
    final /* synthetic */ C13362aj f50585b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13357ae(C13362aj c13362aj, Activity activity) {
        super(c13362aj.f50595a, true);
        this.f50585b = c13362aj;
        this.f50584a = activity;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: a */
    final void mo12290a() throws RemoteException {
        AbstractC13702mz abstractC13702mz;
        abstractC13702mz = this.f50585b.f50595a.f50605j;
        ((AbstractC13702mz) C12045o.m19162a(abstractC13702mz)).onActivityResumed(BinderC12129d.m18979a(this.f50584a), this.f50575i);
    }
}
