package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.install.InstallException;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.appupdate.p */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/p.class */
final class BinderC14888p extends BinderC14887o<Void> {
    public BinderC14888p(C14890r c14890r, C15192p<Void> c15192p) {
        super(c14890r, new C15072h("OnCompleteUpdateCallback"), c15192p);
    }

    @Override // com.google.android.play.core.appupdate.BinderC14887o, com.google.android.play.core.internal.AbstractC15057bu
    /* renamed from: b */
    public final void mo9543b(Bundle bundle) throws RemoteException {
        int i;
        int i2;
        super.mo9543b(bundle);
        i = bundle.getInt("error.code", -2);
        if (i == 0) {
            this.f54325b.m9323a((C15192p<T>) null);
            return;
        }
        C15192p<T> c15192p = this.f54325b;
        i2 = bundle.getInt("error.code", -2);
        c15192p.m9322b(new InstallException(i2));
    }
}
