package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.zak;
/* renamed from: com.google.android.gms.common.api.internal.ba */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/ba.class */
final class RunnableC11860ba implements Runnable {

    /* renamed from: a */
    final /* synthetic */ zak f39271a;

    /* renamed from: b */
    final /* synthetic */ BinderC11862bc f39272b;

    public RunnableC11860ba(BinderC11862bc binderC11862bc, zak zakVar) {
        this.f39272b = binderC11862bc;
        this.f39271a = zakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BinderC11862bc.m19392a(this.f39272b, this.f39271a);
    }
}
