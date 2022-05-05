package com.android.contacts.vcard;

import java.util.concurrent.RunnableFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/ProcessorBase.class */
public abstract class ProcessorBase implements RunnableFuture<Object> {
    public abstract boolean cancel(boolean z);

    @Override // java.util.concurrent.Future
    public final Object get() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    public abstract int getType();

    public abstract boolean isCancelled();

    public abstract boolean isDone();

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public abstract void run();
}
