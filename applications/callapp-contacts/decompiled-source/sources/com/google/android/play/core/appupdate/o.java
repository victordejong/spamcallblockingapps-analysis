package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.bt;
import com.google.android.play.core.internal.h;
import com.google.android.play.core.tasks.p;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/o.class */
class o<T> extends bt {

    /* renamed from: a  reason: collision with root package name */
    final h f31051a;

    /* renamed from: b  reason: collision with root package name */
    final p<T> f31052b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ r f31053c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(r rVar, h hVar, p<T> pVar) {
        this.f31053c = rVar;
        this.f31051a = hVar;
        this.f31052b = pVar;
    }

    @Override // com.google.android.play.core.internal.bu
    public void a(Bundle bundle) throws RemoteException {
        this.f31053c.f31057b.a();
        this.f31051a.c("onRequestInfo", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.bu
    public void b(Bundle bundle) throws RemoteException {
        this.f31053c.f31057b.a();
        this.f31051a.c("onCompleteUpdate", new Object[0]);
    }
}
