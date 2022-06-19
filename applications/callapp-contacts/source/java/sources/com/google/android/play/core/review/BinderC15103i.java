package com.google.android.play.core.review;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.review.i */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/review/i.class */
final class BinderC15103i extends BinderC15102h<ReviewInfo> {
    public BinderC15103i(C15104j c15104j, C15192p c15192p) {
        super(c15104j, new C15072h("OnRequestInstallCallback"), c15192p);
    }

    @Override // com.google.android.play.core.review.BinderC15102h, com.google.android.play.core.internal.AbstractC15069e
    /* renamed from: a */
    public final void mo9464a(Bundle bundle) throws RemoteException {
        super.mo9464a(bundle);
        this.f54832b.m9323a((C15192p<T>) ReviewInfo.m9468b((PendingIntent) bundle.get("confirmation_intent")));
    }
}
