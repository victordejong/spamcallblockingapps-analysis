package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.internal.measurement.c */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/c.class */
public final class C13406c extends AbstractRunnableC13353aa {

    /* renamed from: a */
    final /* synthetic */ Bundle f50613a;

    /* renamed from: b */
    final /* synthetic */ C13363ak f50614b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13406c(C13363ak c13363ak, Bundle bundle) {
        super(c13363ak, true);
        this.f50614b = c13363ak;
        this.f50613a = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: a */
    final void mo12290a() throws RemoteException {
        AbstractC13702mz abstractC13702mz;
        abstractC13702mz = this.f50614b.f50605j;
        ((AbstractC13702mz) C12045o.m19162a(abstractC13702mz)).setConditionalUserProperty(this.f50613a, this.f50574h);
    }
}
