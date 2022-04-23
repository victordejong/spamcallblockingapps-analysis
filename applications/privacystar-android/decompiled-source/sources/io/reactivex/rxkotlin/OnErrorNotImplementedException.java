package io.reactivex.rxkotlin;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 1}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m254d2 = {"Lio/reactivex/rxkotlin/OnErrorNotImplementedException;", "Ljava/lang/RuntimeException;", "e", "", "(Ljava/lang/Throwable;)V", "rxkotlin_main"}, m253k = 1, m252mv = {1, 1, 6})
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/OnErrorNotImplementedException.class */
public final class OnErrorNotImplementedException extends RuntimeException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnErrorNotImplementedException(@NotNull Throwable e) {
        super(e);
        Intrinsics.checkParameterIsNotNull(e, "e");
    }
}
