package com.squareup.okhttp;

import java.io.Closeable;
import java.io.InputStream;
import okio.BufferedSource;
/* renamed from: com.squareup.okhttp.s */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/s.class */
public abstract class AbstractC2962s implements Closeable {
    /* renamed from: a */
    public final InputStream m714a() {
        return mo712x().inputStream();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        mo712x().close();
    }

    /* renamed from: p */
    public abstract long mo713p();

    /* renamed from: x */
    public abstract BufferedSource mo712x();
}
