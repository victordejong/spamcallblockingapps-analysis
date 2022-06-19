package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.internal.measurement.j */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/j.class */
public final class C13595j extends AbstractRunnableC13353aa {

    /* renamed from: a */
    final /* synthetic */ String f50871a;

    /* renamed from: b */
    final /* synthetic */ C13363ak f50872b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13595j(C13363ak c13363ak, String str) {
        super(c13363ak, true);
        this.f50872b = c13363ak;
        this.f50871a = str;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: a */
    final void mo12290a() throws RemoteException {
        AbstractC13702mz abstractC13702mz;
        abstractC13702mz = this.f50872b.f50605j;
        ((AbstractC13702mz) C12045o.m19162a(abstractC13702mz)).beginAdUnitExposure(this.f50871a, this.f50575i);
    }
}
