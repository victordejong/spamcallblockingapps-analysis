package kotlin.coroutines.experimental;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import org.jetbrains.annotations.NotNull;
@SinceKotlin(version = "1.1")
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\"\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n��\bg\u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u0002J\u0015\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00028��H&¢\u0006\u0002\u0010\nJ\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rH&R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000e"}, m254d2 = {"Lkotlin/coroutines/experimental/Continuation;", "T", "", "context", "Lkotlin/coroutines/experimental/CoroutineContext;", "getContext", "()Lkotlin/coroutines/experimental/CoroutineContext;", "resume", "", FirebaseAnalytics.Param.VALUE, "(Ljava/lang/Object;)V", "resumeWithException", "exception", "", "kotlin-stdlib_coroutinesExperimental"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/experimental/Continuation.class */
public interface Continuation<T> {
    @NotNull
    CoroutineContext getContext();

    void resume(T t);

    void resumeWithException(@NotNull Throwable th);
}
