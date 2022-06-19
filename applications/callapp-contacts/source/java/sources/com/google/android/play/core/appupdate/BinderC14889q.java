package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.install.InstallException;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.appupdate.q */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/q.class */
final class BinderC14889q extends BinderC14887o<AbstractC14872a> {

    /* renamed from: d */
    final /* synthetic */ C14890r f54327d;

    /* renamed from: e */
    private final String f54328e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC14889q(C14890r c14890r, C15192p<AbstractC14872a> c15192p, String str) {
        super(c14890r, new C15072h("OnRequestInstallCallback"), c15192p);
        this.f54327d = c14890r;
        this.f54328e = str;
    }

    @Override // com.google.android.play.core.appupdate.BinderC14887o, com.google.android.play.core.internal.AbstractC15057bu
    /* renamed from: a */
    public final void mo9544a(Bundle bundle) throws RemoteException {
        int i;
        int i2;
        super.mo9544a(bundle);
        i = bundle.getInt("error.code", -2);
        if (i == 0) {
            this.f54325b.m9323a((C15192p<T>) C14890r.m9817a(this.f54327d, bundle, this.f54328e));
            return;
        }
        C15192p<T> c15192p = this.f54325b;
        i2 = bundle.getInt("error.code", -2);
        c15192p.m9322b(new InstallException(i2));
    }
}
