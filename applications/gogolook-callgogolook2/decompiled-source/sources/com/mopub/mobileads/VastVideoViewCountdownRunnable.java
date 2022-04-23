package com.mopub.mobileads;

import android.os.Handler;
import androidx.annotation.NonNull;
import com.mopub.common.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewCountdownRunnable.class */
public class VastVideoViewCountdownRunnable extends RepeatingHandlerRunnable {
    @NonNull

    /* renamed from: d */
    public final VastVideoViewController f8795d;

    public VastVideoViewCountdownRunnable(@NonNull VastVideoViewController vastVideoViewController, @NonNull Handler handler) {
        super(handler);
        Preconditions.checkNotNull(handler);
        Preconditions.checkNotNull(vastVideoViewController);
        this.f8795d = vastVideoViewController;
    }

    @Override // com.mopub.mobileads.RepeatingHandlerRunnable
    public void doWork() {
        this.f8795d.m30400p();
        if (this.f8795d.m30406m()) {
            this.f8795d.m30410k();
        }
    }
}
