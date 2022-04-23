package com.mopub.mobileads;

import android.os.Handler;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\b\u0016\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, d2 = {"Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;", "Lcom/mopub/mobileads/RepeatingHandlerRunnable;", "videoViewController", "Lcom/mopub/mobileads/VastVideoViewController;", "handler", "Landroid/os/Handler;", "(Lcom/mopub/mobileads/VastVideoViewController;Landroid/os/Handler;)V", "doWork", "", "mopub-sdk-base_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoViewCountdownRunnable.class */
public class VastVideoViewCountdownRunnable extends RepeatingHandlerRunnable {

    /* renamed from: c  reason: collision with root package name */
    private final VastVideoViewController f34330c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VastVideoViewCountdownRunnable(VastVideoViewController videoViewController, Handler handler) {
        super(handler);
        p.c(videoViewController, "videoViewController");
        p.c(handler, "handler");
        this.f34330c = videoViewController;
    }

    @Override // com.mopub.mobileads.RepeatingHandlerRunnable
    public void doWork() {
        VastVideoViewController.updateCountdown$default(this.f34330c, false, 1, null);
    }
}
