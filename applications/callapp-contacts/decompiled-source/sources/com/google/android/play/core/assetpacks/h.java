package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.google.android.play.core.tasks.p;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/h.class */
final class h extends ResultReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ p f31280a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ch f31281b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    h(ch chVar, Handler handler, p pVar) {
        super(handler);
        this.f31281b = chVar;
        this.f31280a = pVar;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        af afVar;
        if (i == 1) {
            this.f31280a.a((p) (-1));
            afVar = this.f31281b.i;
            afVar.f31097a = null;
        } else if (i != 2) {
            this.f31280a.b(new AssetPackException(-100));
        } else {
            this.f31280a.a((p) 0);
        }
    }
}
