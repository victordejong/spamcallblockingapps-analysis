package com.google.android.play.core.missingsplits;

import android.app.Application;
@Deprecated
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/missingsplits/MissingSplitsDetectingApplication.class */
public class MissingSplitsDetectingApplication extends Application {

    /* renamed from: a */
    private boolean f54814a = false;

    @Override // android.app.Application
    public final void onCreate() {
        if (!this.f54814a) {
            this.f54814a = true;
            if (C15092b.m9475a(this).mo9470a()) {
                return;
            }
            super.onCreate();
            return;
        }
        throw new IllegalStateException("The onCreate method must be invoked at most once.");
    }
}
