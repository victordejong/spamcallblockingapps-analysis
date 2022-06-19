package com.google.android.play.core.splitinstall;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractBinderC15021al;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.splitinstall.m */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/m.class */
class BinderC15162m<T> extends AbstractBinderC15021al {

    /* renamed from: a */
    final C15192p<T> f54974a;

    /* renamed from: b */
    final /* synthetic */ C15164n f54975b;

    public BinderC15162m(C15164n c15164n, C15192p<T> c15192p) {
        this.f54975b = c15164n;
        this.f54974a = c15192p;
    }

    @Override // com.google.android.play.core.internal.AbstractC15022am
    /* renamed from: a */
    public final void mo9370a() throws RemoteException {
        C15072h c15072h;
        this.f54975b.f54980a.m9505a();
        c15072h = C15164n.f54978b;
        c15072h.m9508c("onGetSessionStates", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC15022am
    /* renamed from: a */
    public final void mo9369a(int i) throws RemoteException {
        C15072h c15072h;
        this.f54975b.f54980a.m9505a();
        c15072h = C15164n.f54978b;
        c15072h.m9508c("onCancelInstall(%d)", Integer.valueOf(i));
    }

    /* renamed from: a */
    public void mo9368a(int i, Bundle bundle) throws RemoteException {
        C15072h c15072h;
        this.f54975b.f54980a.m9505a();
        c15072h = C15164n.f54978b;
        c15072h.m9508c("onStartInstall(%d)", Integer.valueOf(i));
    }

    @Override // com.google.android.play.core.internal.AbstractC15022am
    /* renamed from: a */
    public final void mo9367a(Bundle bundle) throws RemoteException {
        C15072h c15072h;
        this.f54975b.f54980a.m9505a();
        int i = bundle.getInt("error_code");
        c15072h = C15164n.f54978b;
        c15072h.m9509b("onError(%d)", Integer.valueOf(i));
        this.f54974a.m9322b(new SplitInstallException(i));
    }

    @Override // com.google.android.play.core.internal.AbstractC15022am
    /* renamed from: b */
    public final void mo9366b() throws RemoteException {
        C15072h c15072h;
        this.f54975b.f54980a.m9505a();
        c15072h = C15164n.f54978b;
        c15072h.m9508c("onDeferredUninstall", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC15022am
    /* renamed from: b */
    public final void mo9365b(int i) throws RemoteException {
        C15072h c15072h;
        this.f54975b.f54980a.m9505a();
        c15072h = C15164n.f54978b;
        c15072h.m9508c("onCompleteInstall(%d)", Integer.valueOf(i));
    }

    /* renamed from: b */
    public void mo9364b(int i, Bundle bundle) throws RemoteException {
        C15072h c15072h;
        this.f54975b.f54980a.m9505a();
        c15072h = C15164n.f54978b;
        c15072h.m9508c("onGetSession(%d)", Integer.valueOf(i));
    }

    @Override // com.google.android.play.core.internal.AbstractC15022am
    /* renamed from: c */
    public final void mo9363c() throws RemoteException {
        C15072h c15072h;
        this.f54975b.f54980a.m9505a();
        c15072h = C15164n.f54978b;
        c15072h.m9508c("onDeferredInstall", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC15022am
    /* renamed from: d */
    public final void mo9362d() throws RemoteException {
        C15072h c15072h;
        this.f54975b.f54980a.m9505a();
        c15072h = C15164n.f54978b;
        c15072h.m9508c("onDeferredLanguageInstall", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC15022am
    /* renamed from: e */
    public final void mo9361e() throws RemoteException {
        C15072h c15072h;
        this.f54975b.f54980a.m9505a();
        c15072h = C15164n.f54978b;
        c15072h.m9508c("onDeferredLanguageUninstall", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC15022am
    /* renamed from: f */
    public final void mo9360f() throws RemoteException {
        C15072h c15072h;
        this.f54975b.f54980a.m9505a();
        c15072h = C15164n.f54978b;
        c15072h.m9508c("onCompleteInstallForAppUpdate", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC15022am
    /* renamed from: g */
    public final void mo9359g() throws RemoteException {
        C15072h c15072h;
        this.f54975b.f54980a.m9505a();
        c15072h = C15164n.f54978b;
        c15072h.m9508c("onGetSplitsForAppUpdate", new Object[0]);
    }
}
