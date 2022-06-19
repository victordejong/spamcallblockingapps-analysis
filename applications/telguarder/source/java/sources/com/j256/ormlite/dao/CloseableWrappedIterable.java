package com.j256.ormlite.dao;

import java.io.Closeable;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/dao/CloseableWrappedIterable.class */
public interface CloseableWrappedIterable<T> extends CloseableIterable<T>, Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;
}
