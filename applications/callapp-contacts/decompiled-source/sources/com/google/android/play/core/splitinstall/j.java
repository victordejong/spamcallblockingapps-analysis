package com.google.android.play.core.splitinstall;

import android.os.RemoteException;
import com.google.android.play.core.internal.ak;
import com.google.android.play.core.internal.h;
import com.google.android.play.core.internal.i;
import com.google.android.play.core.tasks.p;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/j.class */
public final class j extends i {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f31530a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ p f31531b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ n f31532c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(n nVar, p pVar, int i, p pVar2) {
        super(pVar);
        this.f31532c = nVar;
        this.f31530a = i;
        this.f31531b = pVar2;
    }

    @Override // com.google.android.play.core.internal.i
    public final void a() {
        h hVar;
        String str;
        try {
            ak akVar = this.f31532c.f31539a.e;
            str = this.f31532c.f31540d;
            akVar.a(str, this.f31530a, new k(this.f31532c, this.f31531b));
        } catch (RemoteException e) {
            hVar = n.f31537b;
            hVar.a(e, "getSessionState(%d)", Integer.valueOf(this.f31530a));
            this.f31531b.b(new RuntimeException(e));
        }
    }
}
