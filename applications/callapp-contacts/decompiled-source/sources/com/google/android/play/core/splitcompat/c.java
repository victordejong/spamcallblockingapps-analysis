package com.google.android.play.core.splitcompat;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/c.class */
final class c implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, "SplitCompatBackgroundThread");
    }
}
