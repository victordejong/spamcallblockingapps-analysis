package com.google.android.play.core.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/a/b.class */
final class b extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ c f31026a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ b(c cVar) {
        this.f31026a = cVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f31026a.a(context, intent);
    }
}
