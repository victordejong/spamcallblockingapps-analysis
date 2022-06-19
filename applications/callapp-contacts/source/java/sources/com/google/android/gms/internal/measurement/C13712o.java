package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.internal.measurement.o */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/o.class */
public final class C13712o extends AbstractRunnableC13353aa {

    /* renamed from: a */
    final /* synthetic */ BinderC13670lu f51045a;

    /* renamed from: b */
    final /* synthetic */ C13363ak f51046b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13712o(C13363ak c13363ak, BinderC13670lu binderC13670lu) {
        super(c13363ak, true);
        this.f51046b = c13363ak;
        this.f51045a = binderC13670lu;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: a */
    final void mo12290a() throws RemoteException {
        AbstractC13702mz abstractC13702mz;
        abstractC13702mz = this.f51046b.f50605j;
        ((AbstractC13702mz) C12045o.m19162a(abstractC13702mz)).getCurrentScreenName(this.f51045a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: b */
    protected final void mo12291b() {
        this.f51045a.mo12294a((Bundle) null);
    }
}
