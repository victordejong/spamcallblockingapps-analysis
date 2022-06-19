package com.google.android.play.core.internal;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.google.android.play.core.internal.ap */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/ap.class */
public abstract class AbstractC15025ap implements Closeable {
    /* renamed from: a */
    public abstract long mo9582a();

    /* renamed from: a */
    public abstract InputStream mo9580a(long j, long j2) throws IOException;

    /* renamed from: b */
    public final InputStream m9583b() throws IOException {
        InputStream mo9580a;
        synchronized (this) {
            mo9580a = mo9580a(0L, mo9582a());
        }
        return mo9580a;
    }
}
