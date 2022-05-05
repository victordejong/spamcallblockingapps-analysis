package io.reactivex.android;

import android.os.Looper;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:io/reactivex/android/MainThreadDisposable.class */
public abstract class MainThreadDisposable implements Disposable {

    /* renamed from: f */
    private final AtomicBoolean f15103f = new AtomicBoolean();

    /* renamed from: a */
    protected abstract void m4456a();

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        if (!this.f15103f.compareAndSet(false, true)) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            m4456a();
        } else {
            AndroidSchedulers.m4448c().mo3499d(new Runnable() { // from class: io.reactivex.android.MainThreadDisposable.1
                @Override // java.lang.Runnable
                public void run() {
                    MainThreadDisposable.this.m4456a();
                }
            });
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f15103f.get();
    }
}
