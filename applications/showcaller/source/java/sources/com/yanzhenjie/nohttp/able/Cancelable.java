package com.yanzhenjie.nohttp.able;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/able/Cancelable.class */
public interface Cancelable {
    void cancel();

    @Deprecated
    boolean isCanceled();

    boolean isCancelled();
}
