package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.internal.measurement.w */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/w.class */
public final class C13720w extends AbstractRunnableC13353aa {

    /* renamed from: a */
    final /* synthetic */ boolean f51064a;

    /* renamed from: b */
    final /* synthetic */ C13363ak f51065b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13720w(C13363ak c13363ak, boolean z) {
        super(c13363ak, true);
        this.f51065b = c13363ak;
        this.f51064a = z;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: a */
    final void mo12290a() throws RemoteException {
        AbstractC13702mz abstractC13702mz;
        abstractC13702mz = this.f51065b.f50605j;
        ((AbstractC13702mz) C12045o.m19162a(abstractC13702mz)).setDataCollectionEnabled(this.f51064a);
    }
}
