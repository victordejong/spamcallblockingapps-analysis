package com.google.android.play.core.missingsplits;

import android.app.Application;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/missingsplits/MissingSplitsDetectingApplication.class */
public class MissingSplitsDetectingApplication extends Application {

    /* renamed from: d */
    private boolean f38093d = false;

    @Deprecated
    /* renamed from: a */
    public void m3409a() {
    }

    @Override // android.app.Application
    public final void onCreate() {
        if (!this.f38093d) {
            this.f38093d = true;
            if (C8531b.m3406a(this).mo3400a()) {
                return;
            }
            super.onCreate();
            m3409a();
            return;
        }
        throw new IllegalStateException("The onCreate method must be invoked at most once.");
    }
}
