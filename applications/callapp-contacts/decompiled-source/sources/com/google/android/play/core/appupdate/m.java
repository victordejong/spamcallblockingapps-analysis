package com.google.android.play.core.appupdate;

import android.os.RemoteException;
import com.google.android.play.core.internal.bs;
import com.google.android.play.core.internal.h;
import com.google.android.play.core.internal.i;
import com.google.android.play.core.tasks.p;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/m.class */
final class m extends i {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f31045a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ p f31046b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ r f31047c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(r rVar, p pVar, String str, p pVar2) {
        super(pVar);
        this.f31047c = rVar;
        this.f31045a = str;
        this.f31046b = pVar2;
    }

    @Override // com.google.android.play.core.internal.i
    public final void a() {
        h hVar;
        String str;
        try {
            bs bsVar = this.f31047c.f31057b.e;
            str = this.f31047c.f31058d;
            bsVar.a(str, r.a(this.f31047c, this.f31045a), new q(this.f31047c, this.f31046b, this.f31045a));
        } catch (RemoteException e) {
            hVar = r.f31055a;
            hVar.a(e, "requestUpdateInfo(%s)", this.f31045a);
            this.f31046b.b(new RuntimeException(e));
        }
    }
}
