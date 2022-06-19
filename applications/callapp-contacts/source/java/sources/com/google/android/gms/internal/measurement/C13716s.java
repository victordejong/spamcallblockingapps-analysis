package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.internal.measurement.s */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/s.class */
public final class C13716s extends AbstractRunnableC13353aa {

    /* renamed from: a */
    final /* synthetic */ Bundle f51057a;

    /* renamed from: b */
    final /* synthetic */ BinderC13670lu f51058b;

    /* renamed from: c */
    final /* synthetic */ C13363ak f51059c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13716s(C13363ak c13363ak, Bundle bundle, BinderC13670lu binderC13670lu) {
        super(c13363ak, true);
        this.f51059c = c13363ak;
        this.f51057a = bundle;
        this.f51058b = binderC13670lu;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: a */
    final void mo12290a() throws RemoteException {
        AbstractC13702mz abstractC13702mz;
        abstractC13702mz = this.f51059c.f50605j;
        ((AbstractC13702mz) C12045o.m19162a(abstractC13702mz)).performAction(this.f51057a, this.f51058b, this.f50574h);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: b */
    protected final void mo12291b() {
        this.f51058b.mo12294a((Bundle) null);
    }
}
