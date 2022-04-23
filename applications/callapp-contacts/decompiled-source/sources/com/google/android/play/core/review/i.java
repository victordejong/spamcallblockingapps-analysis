package com.google.android.play.core.review;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.h;
import com.google.android.play.core.tasks.p;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/review/i.class */
final class i extends h<ReviewInfo> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public i(j jVar, p pVar) {
        super(jVar, new h("OnRequestInstallCallback"), pVar);
    }

    @Override // com.google.android.play.core.review.h, com.google.android.play.core.internal.e
    public final void a(Bundle bundle) throws RemoteException {
        super.a(bundle);
        this.f31417b.a((p<T>) ReviewInfo.b((PendingIntent) bundle.get("confirmation_intent")));
    }
}
