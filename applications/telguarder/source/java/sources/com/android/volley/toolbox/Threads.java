package com.android.volley.toolbox;

import android.os.Looper;
/* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/Threads.class */
final class Threads {
    private Threads() {
    }

    public static void throwIfNotOnMainThread() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        throw new IllegalStateException("Must be invoked from the main thread.");
    }
}
