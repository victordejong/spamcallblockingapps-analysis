package com.privacystar.core.util;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/CallLogUtil$$Lambda$1.class */
public final /* synthetic */ class CallLogUtil$$Lambda$1 implements Runnable {
    static final Runnable $instance = new CallLogUtil$$Lambda$1();

    private CallLogUtil$$Lambda$1() {
    }

    @Override // java.lang.Runnable
    public void run() {
        CallLogUtil.checkQueueImpl();
    }
}
