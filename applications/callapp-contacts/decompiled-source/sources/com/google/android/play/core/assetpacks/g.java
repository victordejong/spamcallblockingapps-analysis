package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.bx;
import com.google.android.play.core.internal.i;
import com.google.android.play.core.tasks.p;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/g.class */
final class g extends i {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f31277a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ p f31278b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ p f31279c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(p pVar, p pVar2, int i, p pVar3) {
        super(pVar2);
        this.f31279c = pVar;
        this.f31277a = i;
        this.f31278b = pVar3;
    }

    @Override // com.google.android.play.core.internal.i
    public final void a() {
        String str;
        Bundle c2;
        Bundle e;
        try {
            bx bxVar = (bx) this.f31279c.e.e;
            str = this.f31279c.f31298c;
            c2 = p.c(this.f31277a);
            e = p.e();
            bxVar.c(str, c2, e, new k(this.f31279c, this.f31278b, (int[]) null));
        } catch (RemoteException e2) {
            p.f31296a.a(e2, "notifySessionFailed", new Object[0]);
        }
    }
}
