package io.reactivex.internal.schedulers;

import io.reactivex.disposables.Disposable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/DisposeOnCancel.class */
final class DisposeOnCancel implements Future<Object> {

    /* renamed from: f */
    final Disposable f19242f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DisposeOnCancel(Disposable disposable) {
        this.f19242f = disposable;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        this.f19242f.dispose();
        return false;
    }

    @Override // java.util.concurrent.Future
    public Object get() throws InterruptedException, ExecutionException {
        return null;
    }

    @Override // java.util.concurrent.Future
    public Object get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return null;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return false;
    }
}
