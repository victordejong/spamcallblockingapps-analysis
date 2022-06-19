package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractBinderC15056bt;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.appupdate.o */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/o.class */
class BinderC14887o<T> extends AbstractBinderC15056bt {

    /* renamed from: a */
    final C15072h f54324a;

    /* renamed from: b */
    final C15192p<T> f54325b;

    /* renamed from: c */
    final /* synthetic */ C14890r f54326c;

    public BinderC14887o(C14890r c14890r, C15072h c15072h, C15192p<T> c15192p) {
        this.f54326c = c14890r;
        this.f54324a = c15072h;
        this.f54325b = c15192p;
    }

    @Override // com.google.android.play.core.internal.AbstractC15057bu
    /* renamed from: a */
    public void mo9544a(Bundle bundle) throws RemoteException {
        this.f54326c.f54331b.m9505a();
        this.f54324a.m9508c("onRequestInfo", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC15057bu
    /* renamed from: b */
    public void mo9543b(Bundle bundle) throws RemoteException {
        this.f54326c.f54331b.m9505a();
        this.f54324a.m9508c("onCompleteUpdate", new Object[0]);
    }
}
