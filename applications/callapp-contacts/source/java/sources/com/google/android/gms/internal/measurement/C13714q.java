package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.internal.measurement.q */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/q.class */
public final class C13714q extends AbstractRunnableC13353aa {

    /* renamed from: a */
    final /* synthetic */ String f51049a;

    /* renamed from: b */
    final /* synthetic */ String f51050b;

    /* renamed from: c */
    final /* synthetic */ boolean f51051c;

    /* renamed from: d */
    final /* synthetic */ BinderC13670lu f51052d;

    /* renamed from: e */
    final /* synthetic */ C13363ak f51053e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13714q(C13363ak c13363ak, String str, String str2, boolean z, BinderC13670lu binderC13670lu) {
        super(c13363ak, true);
        this.f51053e = c13363ak;
        this.f51049a = str;
        this.f51050b = str2;
        this.f51051c = z;
        this.f51052d = binderC13670lu;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: a */
    final void mo12290a() throws RemoteException {
        AbstractC13702mz abstractC13702mz;
        abstractC13702mz = this.f51053e.f50605j;
        ((AbstractC13702mz) C12045o.m19162a(abstractC13702mz)).getUserProperties(this.f51049a, this.f51050b, this.f51051c, this.f51052d);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: b */
    protected final void mo12291b() {
        this.f51052d.mo12294a((Bundle) null);
    }
}
