package io.reactivex.internal.util;

import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/ConnectConsumer.class */
public final class ConnectConsumer implements Consumer<Disposable> {
    public Disposable disposable;

    public void accept(Disposable disposable) throws Exception {
        this.disposable = disposable;
    }
}
