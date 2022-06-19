package com.google.android.play.core.splitcompat;

import android.app.Application;
import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/splitcompat/SplitCompatApplication.class */
public class SplitCompatApplication extends Application {
    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        C8536a.m3391g(this);
    }
}
