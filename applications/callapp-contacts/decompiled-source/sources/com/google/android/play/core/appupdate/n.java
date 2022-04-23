package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.bs;
import com.google.android.play.core.internal.h;
import com.google.android.play.core.internal.i;
import com.google.android.play.core.tasks.p;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/n.class */
final class n extends i {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ p f31048a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f31049b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ r f31050c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(r rVar, p pVar, p pVar2, String str) {
        super(pVar);
        this.f31050c = rVar;
        this.f31048a = pVar2;
        this.f31049b = str;
    }

    @Override // com.google.android.play.core.internal.i
    public final void a() {
        h hVar;
        String str;
        Bundle d2;
        try {
            bs bsVar = this.f31050c.f31057b.e;
            str = this.f31050c.f31058d;
            d2 = r.d();
            bsVar.b(str, d2, new p(this.f31050c, this.f31048a));
        } catch (RemoteException e) {
            hVar = r.f31055a;
            hVar.a(e, "completeUpdate(%s)", this.f31049b);
            this.f31048a.b(new RuntimeException(e));
        }
    }
}
