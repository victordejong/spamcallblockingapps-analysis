package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.install.InstallException;
import com.google.android.play.core.internal.h;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/p.class */
final class p extends o<Void> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public p(r rVar, com.google.android.play.core.tasks.p<Void> pVar) {
        super(rVar, new h("OnCompleteUpdateCallback"), pVar);
    }

    @Override // com.google.android.play.core.appupdate.o, com.google.android.play.core.internal.bu
    public final void b(Bundle bundle) throws RemoteException {
        int i;
        int i2;
        super.b(bundle);
        i = bundle.getInt("error.code", -2);
        if (i != 0) {
            com.google.android.play.core.tasks.p<T> pVar = this.f31052b;
            i2 = bundle.getInt("error.code", -2);
            pVar.b(new InstallException(i2));
            return;
        }
        this.f31052b.a((com.google.android.play.core.tasks.p<T>) null);
    }
}
