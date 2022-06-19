package com.google.android.play.core.internal;

import java.io.Closeable;
import java.io.InputStream;
/* renamed from: com.google.android.play.core.internal.f0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/f0.class */
public abstract class AbstractC8486f0 implements Closeable {
    /* renamed from: a */
    public abstract long mo3516a();

    /* renamed from: e */
    public abstract InputStream mo3515e(long j, long j2);

    /* renamed from: f */
    public final InputStream m3519f() {
        InputStream mo3515e;
        synchronized (this) {
            mo3515e = mo3515e(0L, mo3516a());
        }
        return mo3515e;
    }
}
