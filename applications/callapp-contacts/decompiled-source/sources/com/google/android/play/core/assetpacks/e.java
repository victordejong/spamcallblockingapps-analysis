package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.bx;
import com.google.android.play.core.internal.i;
import com.google.android.play.core.tasks.p;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/e.class */
final class e extends i {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f31269a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f31270b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f31271c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ int f31272d;
    final /* synthetic */ p e;
    final /* synthetic */ p f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(p pVar, p pVar2, int i, String str, String str2, int i2, p pVar3) {
        super(pVar2);
        this.f = pVar;
        this.f31269a = i;
        this.f31270b = str;
        this.f31271c = str2;
        this.f31272d = i2;
        this.e = pVar3;
    }

    @Override // com.google.android.play.core.internal.i
    public final void a() {
        String str;
        Bundle e;
        try {
            bx bxVar = (bx) this.f.e.e;
            str = this.f.f31298c;
            Bundle c2 = p.c(this.f31269a, this.f31270b, this.f31271c, this.f31272d);
            e = p.e();
            bxVar.a(str, c2, e, new k(this.f, this.e, (char[]) null));
        } catch (RemoteException e2) {
            p.f31296a.a(e2, "notifyChunkTransferred", new Object[0]);
        }
    }
}
