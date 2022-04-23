package com.google.android.play.core.splitinstall;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.al;
import com.google.android.play.core.internal.h;
import com.google.android.play.core.tasks.p;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/m.class */
class m<T> extends al {

    /* renamed from: a  reason: collision with root package name */
    final p<T> f31533a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ n f31534b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(n nVar, p<T> pVar) {
        this.f31534b = nVar;
        this.f31533a = pVar;
    }

    @Override // com.google.android.play.core.internal.am
    public final void a() throws RemoteException {
        h hVar;
        this.f31534b.f31539a.a();
        hVar = n.f31537b;
        hVar.c("onGetSessionStates", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.am
    public final void a(int i) throws RemoteException {
        h hVar;
        this.f31534b.f31539a.a();
        hVar = n.f31537b;
        hVar.c("onCancelInstall(%d)", Integer.valueOf(i));
    }

    public void a(int i, Bundle bundle) throws RemoteException {
        h hVar;
        this.f31534b.f31539a.a();
        hVar = n.f31537b;
        hVar.c("onStartInstall(%d)", Integer.valueOf(i));
    }

    @Override // com.google.android.play.core.internal.am
    public final void a(Bundle bundle) throws RemoteException {
        h hVar;
        this.f31534b.f31539a.a();
        int i = bundle.getInt("error_code");
        hVar = n.f31537b;
        hVar.b("onError(%d)", Integer.valueOf(i));
        this.f31533a.b(new SplitInstallException(i));
    }

    @Override // com.google.android.play.core.internal.am
    public final void b() throws RemoteException {
        h hVar;
        this.f31534b.f31539a.a();
        hVar = n.f31537b;
        hVar.c("onDeferredUninstall", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.am
    public final void b(int i) throws RemoteException {
        h hVar;
        this.f31534b.f31539a.a();
        hVar = n.f31537b;
        hVar.c("onCompleteInstall(%d)", Integer.valueOf(i));
    }

    public void b(int i, Bundle bundle) throws RemoteException {
        h hVar;
        this.f31534b.f31539a.a();
        hVar = n.f31537b;
        hVar.c("onGetSession(%d)", Integer.valueOf(i));
    }

    @Override // com.google.android.play.core.internal.am
    public final void c() throws RemoteException {
        h hVar;
        this.f31534b.f31539a.a();
        hVar = n.f31537b;
        hVar.c("onDeferredInstall", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.am
    public final void d() throws RemoteException {
        h hVar;
        this.f31534b.f31539a.a();
        hVar = n.f31537b;
        hVar.c("onDeferredLanguageInstall", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.am
    public final void e() throws RemoteException {
        h hVar;
        this.f31534b.f31539a.a();
        hVar = n.f31537b;
        hVar.c("onDeferredLanguageUninstall", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.am
    public final void f() throws RemoteException {
        h hVar;
        this.f31534b.f31539a.a();
        hVar = n.f31537b;
        hVar.c("onCompleteInstallForAppUpdate", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.am
    public final void g() throws RemoteException {
        h hVar;
        this.f31534b.f31539a.a();
        hVar = n.f31537b;
        hVar.c("onGetSplitsForAppUpdate", new Object[0]);
    }
}
