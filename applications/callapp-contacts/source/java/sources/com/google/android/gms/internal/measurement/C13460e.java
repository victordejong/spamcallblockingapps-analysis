package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.internal.measurement.e */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/e.class */
public final class C13460e extends AbstractRunnableC13353aa {

    /* renamed from: a */
    final /* synthetic */ String f50659a;

    /* renamed from: b */
    final /* synthetic */ String f50660b;

    /* renamed from: c */
    final /* synthetic */ BinderC13670lu f50661c;

    /* renamed from: d */
    final /* synthetic */ C13363ak f50662d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13460e(C13363ak c13363ak, String str, String str2, BinderC13670lu binderC13670lu) {
        super(c13363ak, true);
        this.f50662d = c13363ak;
        this.f50659a = str;
        this.f50660b = str2;
        this.f50661c = binderC13670lu;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: a */
    final void mo12290a() throws RemoteException {
        AbstractC13702mz abstractC13702mz;
        abstractC13702mz = this.f50662d.f50605j;
        ((AbstractC13702mz) C12045o.m19162a(abstractC13702mz)).getConditionalUserProperties(this.f50659a, this.f50660b, this.f50661c);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: b */
    protected final void mo12291b() {
        this.f50661c.mo12294a((Bundle) null);
    }
}
