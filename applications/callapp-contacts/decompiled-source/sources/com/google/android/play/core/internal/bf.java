package com.google.android.play.core.internal;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bf.class */
public final class bf extends RuntimeException {
    public bf(String str) {
        super(str);
    }

    public bf(Throwable th) {
        super("Failed to initialize FileStorage", th);
    }
}
