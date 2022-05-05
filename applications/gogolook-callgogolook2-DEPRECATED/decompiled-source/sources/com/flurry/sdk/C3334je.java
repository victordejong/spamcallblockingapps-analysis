package com.flurry.sdk;

import android.app.Activity;
import java.lang.ref.WeakReference;
/* renamed from: com.flurry.sdk.je */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/je.class */
public final class C3334je extends AbstractC3343jk {

    /* renamed from: a */
    public WeakReference<Activity> f5689a = new WeakReference<>(null);

    /* renamed from: b */
    public EnumC3335a f5690b;

    /* renamed from: com.flurry.sdk.je$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/je$a.class */
    public enum EnumC3335a {
        kCreated,
        kDestroyed,
        kPaused,
        kResumed,
        kStarted,
        kStopped,
        kSaveState
    }

    public C3334je() {
        super("com.flurry.android.sdk.ActivityLifecycleEvent");
    }
}
