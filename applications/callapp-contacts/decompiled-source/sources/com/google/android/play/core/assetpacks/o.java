package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import com.google.android.play.core.tasks.p;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/o.class */
final class o extends k<Void> {

    /* renamed from: c  reason: collision with root package name */
    final int f31294c;

    /* renamed from: d  reason: collision with root package name */
    final String f31295d;
    final int e;
    final /* synthetic */ p f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(p pVar, p<Void> pVar2, int i, String str, int i2) {
        super(pVar, pVar2);
        this.f = pVar;
        this.f31294c = i;
        this.f31295d = str;
        this.e = i2;
    }

    @Override // com.google.android.play.core.assetpacks.k, com.google.android.play.core.internal.bz
    public final void a(Bundle bundle) {
        this.f.e.a();
        p.f31296a.b("onError(%d), retrying notifyModuleCompleted...", Integer.valueOf(bundle.getInt("error_code")));
        int i = this.e;
        if (i > 0) {
            this.f.a(this.f31294c, this.f31295d, i - 1);
        }
    }
}
