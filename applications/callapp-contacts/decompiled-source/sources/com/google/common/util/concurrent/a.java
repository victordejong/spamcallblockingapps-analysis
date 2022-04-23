package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* loaded from: classes4-dex2jar.jar:com/google/common/util/concurrent/a.class */
public interface a<V> extends Future<V> {
    void a(Runnable runnable, Executor executor);
}
