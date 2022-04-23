package com.mopub.common;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/b.class */
final class b implements SdkInitializationListener {

    /* renamed from: a  reason: collision with root package name */
    private SdkInitializationListener f33908a;

    /* renamed from: b  reason: collision with root package name */
    private int f33909b;

    public b(SdkInitializationListener sdkInitializationListener, int i) {
        Preconditions.checkNotNull(sdkInitializationListener);
        this.f33908a = sdkInitializationListener;
        this.f33909b = i;
    }

    @Override // com.mopub.common.SdkInitializationListener
    public final void onInitializationFinished() {
        int i = this.f33909b - 1;
        this.f33909b = i;
        if (i <= 0) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.mopub.common.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (b.this.f33908a != null) {
                        b.this.f33908a.onInitializationFinished();
                        b.this.f33908a = null;
                    }
                }
            });
        }
    }
}
