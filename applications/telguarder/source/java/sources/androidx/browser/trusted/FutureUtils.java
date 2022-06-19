package androidx.browser.trusted;

import androidx.concurrent.futures.ResolvableFuture;
import com.google.common.util.concurrent.ListenableFuture;
/* loaded from: classes-dex2jar.jar:androidx/browser/trusted/FutureUtils.class */
class FutureUtils {
    private FutureUtils() {
    }

    public static <T> ListenableFuture<T> immediateFailedFuture(Throwable th) {
        ResolvableFuture create = ResolvableFuture.create();
        create.setException(th);
        return create;
    }
}
