package com.google.android.exoplayer2.upstream;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException.class */
public final class Loader$UnexpectedLoaderException extends IOException {
    public Loader$UnexpectedLoaderException(Throwable th) {
        super("Unexpected " + th.getClass().getSimpleName() + ": " + th.getMessage(), th);
    }
}
