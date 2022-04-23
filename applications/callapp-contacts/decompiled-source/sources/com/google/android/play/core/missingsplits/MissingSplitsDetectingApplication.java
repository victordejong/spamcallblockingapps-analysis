package com.google.android.play.core.missingsplits;

import android.app.Application;
@Deprecated
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/missingsplits/MissingSplitsDetectingApplication.class */
public class MissingSplitsDetectingApplication extends Application {

    /* renamed from: a  reason: collision with root package name */
    private boolean f31400a = false;

    @Override // android.app.Application
    public final void onCreate() {
        if (!this.f31400a) {
            this.f31400a = true;
            if (!b.a(this).a()) {
                super.onCreate();
                return;
            }
            return;
        }
        throw new IllegalStateException("The onCreate method must be invoked at most once.");
    }
}
