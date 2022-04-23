package com.google.android.play.core.splitinstall;

import android.app.Activity;
import android.content.IntentSender;
import com.google.android.play.core.common.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/aj.class */
final class aj implements a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Activity f31502a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(Activity activity) {
        this.f31502a = activity;
    }

    @Override // com.google.android.play.core.common.a
    public final void a(IntentSender intentSender, int i) throws IntentSender.SendIntentException {
        this.f31502a.startIntentSenderForResult(intentSender, i, null, 0, 0, 0);
    }
}
