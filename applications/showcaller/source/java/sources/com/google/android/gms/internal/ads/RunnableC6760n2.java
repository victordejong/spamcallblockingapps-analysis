package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
/* renamed from: com.google.android.gms.internal.ads.n2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/n2.class */
public final class RunnableC6760n2 extends BroadcastReceiver implements Runnable {

    /* renamed from: d */
    private final AbstractC6797o2 f26953d;

    /* renamed from: e */
    private final Handler f26954e;

    /* renamed from: f */
    final /* synthetic */ C6834p2 f26955f;

    public RunnableC6760n2(C6834p2 c6834p2, Handler handler, AbstractC6797o2 abstractC6797o2) {
        this.f26955f = c6834p2;
        this.f26954e = handler;
        this.f26953d = abstractC6797o2;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
            this.f26954e.post(this);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
    }
}
