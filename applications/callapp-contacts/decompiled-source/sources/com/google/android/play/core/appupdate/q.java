package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.install.InstallException;
import com.google.android.play.core.internal.h;
import com.google.android.play.core.tasks.p;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/q.class */
final class q extends o<a> {

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ r f31054d;
    private final String e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(r rVar, p<a> pVar, String str) {
        super(rVar, new h("OnRequestInstallCallback"), pVar);
        this.f31054d = rVar;
        this.e = str;
    }

    @Override // com.google.android.play.core.appupdate.o, com.google.android.play.core.internal.bu
    public final void a(Bundle bundle) throws RemoteException {
        int i;
        int i2;
        super.a(bundle);
        i = bundle.getInt("error.code", -2);
        if (i != 0) {
            p<T> pVar = this.f31052b;
            i2 = bundle.getInt("error.code", -2);
            pVar.b(new InstallException(i2));
            return;
        }
        this.f31052b.a((p<T>) r.a(this.f31054d, bundle, this.e));
    }
}
