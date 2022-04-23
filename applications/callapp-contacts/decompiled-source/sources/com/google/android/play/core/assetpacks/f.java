package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.bx;
import com.google.android.play.core.internal.i;
import com.google.android.play.core.tasks.p;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/f.class */
public final class f extends i {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f31273a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f31274b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ p f31275c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ int f31276d;
    final /* synthetic */ p e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(p pVar, p pVar2, int i, String str, p pVar3, int i2) {
        super(pVar2);
        this.e = pVar;
        this.f31273a = i;
        this.f31274b = str;
        this.f31275c = pVar3;
        this.f31276d = i2;
    }

    @Override // com.google.android.play.core.internal.i
    public final void a() {
        String str;
        Bundle c2;
        Bundle e;
        try {
            bx bxVar = (bx) this.e.e.e;
            str = this.e.f31298c;
            c2 = p.c(this.f31273a, this.f31274b);
            e = p.e();
            bxVar.b(str, c2, e, new o(this.e, this.f31275c, this.f31273a, this.f31274b, this.f31276d));
        } catch (RemoteException e2) {
            p.f31296a.a(e2, "notifyModuleCompleted", new Object[0]);
        }
    }
}
