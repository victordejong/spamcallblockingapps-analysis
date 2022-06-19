package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.internal.measurement.l */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/l.class */
public final class C13649l extends AbstractRunnableC13353aa {

    /* renamed from: a */
    final /* synthetic */ BinderC13670lu f50974a;

    /* renamed from: b */
    final /* synthetic */ C13363ak f50975b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13649l(C13363ak c13363ak, BinderC13670lu binderC13670lu) {
        super(c13363ak, true);
        this.f50975b = c13363ak;
        this.f50974a = binderC13670lu;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: a */
    final void mo12290a() throws RemoteException {
        AbstractC13702mz abstractC13702mz;
        abstractC13702mz = this.f50975b.f50605j;
        ((AbstractC13702mz) C12045o.m19162a(abstractC13702mz)).getGmpAppId(this.f50974a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: b */
    protected final void mo12291b() {
        this.f50974a.mo12294a((Bundle) null);
    }
}
