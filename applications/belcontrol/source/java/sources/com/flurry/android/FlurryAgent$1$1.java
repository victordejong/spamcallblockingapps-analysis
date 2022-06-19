package com.flurry.android;

import com.flurry.android.FlurryAgent;
import com.flurry.sdk.lt;
/* loaded from: classes-dex2jar.jar:com/flurry/android/FlurryAgent$1$1.class */
public final class FlurryAgent$1$1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ lt f3173a;

    /* renamed from: b */
    public final /* synthetic */ FlurryAgent.1 f3174b;

    public FlurryAgent$1$1(FlurryAgent.1 r4, lt ltVar) {
        this.f3174b = r4;
        this.f3173a = ltVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        FlurryAgentListener flurryAgentListener;
        FlurryAgentListener flurryAgentListener2;
        if (FlurryAgent.C04013.f3166a[this.f3173a.c - 1] != 1) {
            return;
        }
        flurryAgentListener = FlurryAgent.f3158b;
        if (flurryAgentListener == null) {
            return;
        }
        flurryAgentListener2 = FlurryAgent.f3158b;
        flurryAgentListener2.onSessionStarted();
    }
}
