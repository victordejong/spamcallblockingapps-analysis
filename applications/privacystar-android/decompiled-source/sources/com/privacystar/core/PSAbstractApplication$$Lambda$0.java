package com.privacystar.core;

import io.realm.CompactOnLaunchCallback;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/PSAbstractApplication$$Lambda$0.class */
public final /* synthetic */ class PSAbstractApplication$$Lambda$0 implements CompactOnLaunchCallback {
    static final CompactOnLaunchCallback $instance = new PSAbstractApplication$$Lambda$0();

    private PSAbstractApplication$$Lambda$0() {
    }

    @Override // io.realm.CompactOnLaunchCallback
    public boolean shouldCompact(long j, long j2) {
        return PSAbstractApplication.lambda$new$1$PSAbstractApplication(j, j2);
    }
}
