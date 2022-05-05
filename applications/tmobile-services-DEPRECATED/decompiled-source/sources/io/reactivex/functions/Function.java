package io.reactivex.functions;

import io.reactivex.annotations.NonNull;
/* loaded from: classes-dex2jar.jar:io/reactivex/functions/Function.class */
public interface Function<T, R> {
    R apply(@NonNull T t) throws Exception;
}
