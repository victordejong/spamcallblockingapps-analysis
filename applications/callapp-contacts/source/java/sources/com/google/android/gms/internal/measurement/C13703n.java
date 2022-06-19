package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.internal.measurement.n */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/n.class */
public final class C13703n extends AbstractRunnableC13353aa {

    /* renamed from: a */
    final /* synthetic */ BinderC13670lu f51043a;

    /* renamed from: b */
    final /* synthetic */ C13363ak f51044b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13703n(C13363ak c13363ak, BinderC13670lu binderC13670lu) {
        super(c13363ak, true);
        this.f51044b = c13363ak;
        this.f51043a = binderC13670lu;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: a */
    final void mo12290a() throws RemoteException {
        AbstractC13702mz abstractC13702mz;
        abstractC13702mz = this.f51044b.f50605j;
        ((AbstractC13702mz) C12045o.m19162a(abstractC13702mz)).generateEventId(this.f51043a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: b */
    protected final void mo12291b() {
        this.f51043a.mo12294a((Bundle) null);
    }
}
