package com.google.android.play.core.internal;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/ap.class */
public abstract class ap implements Closeable {
    public abstract long a();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract InputStream a(long j, long j2) throws IOException;

    public final InputStream b() throws IOException {
        InputStream a2;
        synchronized (this) {
            a2 = a(0L, a());
        }
        return a2;
    }
}
