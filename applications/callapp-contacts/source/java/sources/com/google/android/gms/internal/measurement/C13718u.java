package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.internal.measurement.u */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/u.class */
public final class C13718u extends AbstractRunnableC13353aa {

    /* renamed from: a */
    final /* synthetic */ String f51061a;

    /* renamed from: b */
    final /* synthetic */ BinderC13670lu f51062b;

    /* renamed from: c */
    final /* synthetic */ C13363ak f51063c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13718u(C13363ak c13363ak, String str, BinderC13670lu binderC13670lu) {
        super(c13363ak, true);
        this.f51063c = c13363ak;
        this.f51061a = str;
        this.f51062b = binderC13670lu;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: a */
    final void mo12290a() throws RemoteException {
        AbstractC13702mz abstractC13702mz;
        abstractC13702mz = this.f51063c.f50605j;
        ((AbstractC13702mz) C12045o.m19162a(abstractC13702mz)).getMaxUserProperties(this.f51061a, this.f51062b);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: b */
    protected final void mo12291b() {
        this.f51062b.mo12294a((Bundle) null);
    }
}
