package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.internal.measurement.d */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/d.class */
public final class C13433d extends AbstractRunnableC13353aa {

    /* renamed from: a */
    final /* synthetic */ String f50617a;

    /* renamed from: b */
    final /* synthetic */ String f50618b;

    /* renamed from: c */
    final /* synthetic */ Bundle f50619c;

    /* renamed from: d */
    final /* synthetic */ C13363ak f50620d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13433d(C13363ak c13363ak, String str, String str2, Bundle bundle) {
        super(c13363ak, true);
        this.f50620d = c13363ak;
        this.f50617a = str;
        this.f50618b = str2;
        this.f50619c = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: a */
    final void mo12290a() throws RemoteException {
        AbstractC13702mz abstractC13702mz;
        abstractC13702mz = this.f50620d.f50605j;
        ((AbstractC13702mz) C12045o.m19162a(abstractC13702mz)).clearConditionalUserProperty(this.f50617a, this.f50618b, this.f50619c);
    }
}
