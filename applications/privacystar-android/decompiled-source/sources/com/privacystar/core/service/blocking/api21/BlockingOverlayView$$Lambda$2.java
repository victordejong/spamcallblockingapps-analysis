package com.privacystar.core.service.blocking.api21;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/blocking/api21/BlockingOverlayView$$Lambda$2.class */
final /* synthetic */ class BlockingOverlayView$$Lambda$2 implements Runnable {
    static final Runnable $instance = new BlockingOverlayView$$Lambda$2();

    private BlockingOverlayView$$Lambda$2() {
    }

    @Override // java.lang.Runnable
    public void run() {
        BlockingOverlayView.answerCallLollipop();
    }
}
