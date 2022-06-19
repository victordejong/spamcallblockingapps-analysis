package com.google.android.play.core.appupdate;

import android.app.Activity;
import android.content.IntentSender;
import com.google.android.play.core.common.AbstractC15000a;
/* renamed from: com.google.android.play.core.appupdate.f */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/f.class */
final class C14878f implements AbstractC15000a {

    /* renamed from: a */
    final /* synthetic */ Activity f54305a;

    public C14878f(Activity activity) {
        this.f54305a = activity;
    }

    @Override // com.google.android.play.core.common.AbstractC15000a
    /* renamed from: a */
    public final void mo9389a(IntentSender intentSender, int i) throws IntentSender.SendIntentException {
        this.f54305a.startIntentSenderForResult(intentSender, i, null, 0, 0, 0, null);
    }
}
