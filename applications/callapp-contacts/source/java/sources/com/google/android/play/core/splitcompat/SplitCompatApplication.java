package com.google.android.play.core.splitcompat;

import android.app.Application;
import android.content.Context;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/SplitCompatApplication.class */
public class SplitCompatApplication extends Application {
    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        C15105a.m9460a(this);
    }
}
