package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.internal.measurement.h */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/h.class */
public final class C13541h extends AbstractRunnableC13353aa {

    /* renamed from: a */
    final /* synthetic */ Bundle f50776a;

    /* renamed from: b */
    final /* synthetic */ C13363ak f50777b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13541h(C13363ak c13363ak, Bundle bundle) {
        super(c13363ak, true);
        this.f50777b = c13363ak;
        this.f50776a = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: a */
    final void mo12290a() throws RemoteException {
        AbstractC13702mz abstractC13702mz;
        abstractC13702mz = this.f50777b.f50605j;
        ((AbstractC13702mz) C12045o.m19162a(abstractC13702mz)).setConsent(this.f50776a, this.f50574h);
    }
}
