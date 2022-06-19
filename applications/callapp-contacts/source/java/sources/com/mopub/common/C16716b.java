package com.mopub.common;

import android.os.Handler;
import android.os.Looper;
/* renamed from: com.mopub.common.b */
/* loaded from: classes4-dex2jar.jar:com/mopub/common/b.class */
public final class C16716b implements SdkInitializationListener {

    /* renamed from: a */
    private SdkInitializationListener f58852a;

    /* renamed from: b */
    private int f58853b;

    public C16716b(SdkInitializationListener sdkInitializationListener, int i) {
        Preconditions.checkNotNull(sdkInitializationListener);
        this.f58852a = sdkInitializationListener;
        this.f58853b = i;
    }

    @Override // com.mopub.common.SdkInitializationListener
    public final void onInitializationFinished() {
        int i = this.f58853b - 1;
        this.f58853b = i;
        if (i <= 0) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.mopub.common.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (C16716b.this.f58852a != null) {
                        C16716b.this.f58852a.onInitializationFinished();
                        C16716b.this.f58852a = null;
                    }
                }
            });
        }
    }
}
