package com.mopub.mobileads;

import android.os.Handler;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoViewCountdownRunnable.class */
public class VastVideoViewCountdownRunnable extends RepeatingHandlerRunnable {

    /* renamed from: d */
    public final VastVideoViewController f4957d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VastVideoViewCountdownRunnable(VastVideoViewController vastVideoViewController, Handler handler) {
        super(handler);
        qk1.m744c(vastVideoViewController, "videoViewController");
        qk1.m744c(handler, "handler");
        this.f4957d = vastVideoViewController;
    }

    @Override // com.mopub.mobileads.RepeatingHandlerRunnable
    public void doWork() {
        VastVideoViewController.updateCountdown$default(this.f4957d, false, 1, null);
    }
}
