package com.google.android.play.core.review;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractBinderC15068d;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.review.h */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/review/h.class */
class BinderC15102h<T> extends AbstractBinderC15068d {

    /* renamed from: a */
    final C15072h f54831a;

    /* renamed from: b */
    final C15192p<T> f54832b;

    /* renamed from: c */
    final /* synthetic */ C15104j f54833c;

    public BinderC15102h(C15104j c15104j, C15072h c15072h, C15192p<T> c15192p) {
        this.f54833c = c15104j;
        this.f54831a = c15072h;
        this.f54832b = c15192p;
    }

    @Override // com.google.android.play.core.internal.AbstractC15069e
    /* renamed from: a */
    public void mo9464a(Bundle bundle) throws RemoteException {
        this.f54833c.f54835b.m9505a();
        this.f54831a.m9508c("onGetLaunchReviewFlowInfo", new Object[0]);
    }
}
