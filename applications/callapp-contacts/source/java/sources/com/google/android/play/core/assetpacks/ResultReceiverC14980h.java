package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.assetpacks.h */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/h.class */
final class ResultReceiverC14980h extends ResultReceiver {

    /* renamed from: a */
    final /* synthetic */ C15192p f54668a;

    /* renamed from: b */
    final /* synthetic */ C14961ch f54669b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ResultReceiverC14980h(C14961ch c14961ch, Handler handler, C15192p c15192p) {
        super(handler);
        this.f54669b = c14961ch;
        this.f54668a = c15192p;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        C14905af c14905af;
        if (i == 1) {
            this.f54668a.m9323a((C15192p) (-1));
            c14905af = this.f54669b.f54618i;
            c14905af.f54390a = null;
        } else if (i != 2) {
            this.f54668a.m9322b(new AssetPackException(-100));
        } else {
            this.f54668a.m9323a((C15192p) 0);
        }
    }
}
