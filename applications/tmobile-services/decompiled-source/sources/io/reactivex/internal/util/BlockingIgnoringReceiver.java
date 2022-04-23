package io.reactivex.internal.util;

import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/BlockingIgnoringReceiver.class */
public final class BlockingIgnoringReceiver extends CountDownLatch implements Consumer<Throwable>, Action {

    /* renamed from: f */
    public Throwable f19421f;

    public BlockingIgnoringReceiver() {
        super(1);
    }

    /* renamed from: a */
    public void accept(Throwable th) {
        this.f19421f = th;
        countDown();
    }

    @Override // io.reactivex.functions.Action
    public void run() {
        countDown();
    }
}
