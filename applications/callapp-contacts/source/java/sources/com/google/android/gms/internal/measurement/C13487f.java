package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.internal.measurement.f */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/f.class */
public final class C13487f extends AbstractRunnableC13353aa {

    /* renamed from: a */
    final /* synthetic */ String f50702a;

    /* renamed from: b */
    final /* synthetic */ C13363ak f50703b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13487f(C13363ak c13363ak, String str) {
        super(c13363ak, true);
        this.f50703b = c13363ak;
        this.f50702a = str;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: a */
    final void mo12290a() throws RemoteException {
        AbstractC13702mz abstractC13702mz;
        abstractC13702mz = this.f50703b.f50605j;
        ((AbstractC13702mz) C12045o.m19162a(abstractC13702mz)).setUserId(this.f50702a, this.f50574h);
    }
}
