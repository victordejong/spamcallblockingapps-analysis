package com.google.android.play.core.review;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.d;
import com.google.android.play.core.tasks.p;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/review/h.class */
class h<T> extends d {

    /* renamed from: a  reason: collision with root package name */
    final com.google.android.play.core.internal.h f31416a;

    /* renamed from: b  reason: collision with root package name */
    final p<T> f31417b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ j f31418c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(j jVar, com.google.android.play.core.internal.h hVar, p<T> pVar) {
        this.f31418c = jVar;
        this.f31416a = hVar;
        this.f31417b = pVar;
    }

    @Override // com.google.android.play.core.internal.e
    public void a(Bundle bundle) throws RemoteException {
        this.f31418c.f31420b.a();
        this.f31416a.c("onGetLaunchReviewFlowInfo", new Object[0]);
    }
}
