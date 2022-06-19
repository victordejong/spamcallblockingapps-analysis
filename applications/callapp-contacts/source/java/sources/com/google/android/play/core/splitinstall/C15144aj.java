package com.google.android.play.core.splitinstall;

import android.app.Activity;
import android.content.IntentSender;
import com.google.android.play.core.common.AbstractC15000a;
/* renamed from: com.google.android.play.core.splitinstall.aj */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/aj.class */
final class C15144aj implements AbstractC15000a {

    /* renamed from: a */
    final /* synthetic */ Activity f54937a;

    public C15144aj(Activity activity) {
        this.f54937a = activity;
    }

    @Override // com.google.android.play.core.common.AbstractC15000a
    /* renamed from: a */
    public final void mo9389a(IntentSender intentSender, int i) throws IntentSender.SendIntentException {
        this.f54937a.startIntentSenderForResult(intentSender, i, null, 0, 0, 0);
    }
}
