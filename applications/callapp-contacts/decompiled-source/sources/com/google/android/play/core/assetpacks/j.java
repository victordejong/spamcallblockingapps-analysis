package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.bx;
import com.google.android.play.core.internal.i;
import com.google.android.play.core.tasks.p;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/j.class */
public final class j extends i {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ p f31286a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ p f31287b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(p pVar, p pVar2, p pVar3) {
        super(pVar2);
        this.f31287b = pVar;
        this.f31286a = pVar3;
    }

    @Override // com.google.android.play.core.internal.i
    public final void a() {
        String str;
        Bundle e;
        try {
            bx bxVar = (bx) this.f31287b.f.e;
            str = this.f31287b.f31298c;
            e = p.e();
            bxVar.b(str, e, new n(this.f31287b, this.f31286a));
        } catch (RemoteException e2) {
            p.f31296a.a(e2, "keepAlive", new Object[0]);
        }
    }
}
