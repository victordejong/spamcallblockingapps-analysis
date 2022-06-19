package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.internal.measurement.x */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/x.class */
public final class C13721x extends AbstractRunnableC13353aa {

    /* renamed from: a */
    final /* synthetic */ BinderC13354ab f51066a;

    /* renamed from: b */
    final /* synthetic */ C13363ak f51067b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13721x(C13363ak c13363ak, BinderC13354ab binderC13354ab) {
        super(c13363ak, true);
        this.f51067b = c13363ak;
        this.f51066a = binderC13354ab;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: a */
    final void mo12290a() throws RemoteException {
        AbstractC13702mz abstractC13702mz;
        abstractC13702mz = this.f51067b.f50605j;
        ((AbstractC13702mz) C12045o.m19162a(abstractC13702mz)).registerOnMeasurementEventListener(this.f51066a);
    }
}
