package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.C14979k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001f\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002¢\u0006\u0002\u0010\u0004\u001a\u001e\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u001a.\u0010\u0007\u001a\u00020\b\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00020\nH\u0007ø\u0001��¢\u0006\u0002\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, m815d2 = {"CompletableDeferred", "Lkotlinx/coroutines/CompletableDeferred;", ExifInterface.GPS_DIRECTION_TRUE, C13032a.f29462d, "(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;", "parent", "Lkotlinx/coroutines/Job;", "completeWith", "", "result", "Lkotlin/Result;", "(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Object;)Z", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CompletableDeferredKt.class */
public final class CompletableDeferredKt {
    public static final <T> CompletableDeferred<T> CompletableDeferred(T t) {
        CompletableDeferredImpl completableDeferredImpl = new CompletableDeferredImpl(null);
        completableDeferredImpl.complete(t);
        return completableDeferredImpl;
    }

    public static final <T> CompletableDeferred<T> CompletableDeferred(Job job) {
        return new CompletableDeferredImpl(job);
    }

    public static /* synthetic */ CompletableDeferred CompletableDeferred$default(Job job, int i, Object obj) {
        if ((i & 1) != 0) {
            job = null;
        }
        return CompletableDeferred(job);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ExperimentalCoroutinesApi
    public static final <T> boolean completeWith(CompletableDeferred<T> completableDeferred, Object obj) {
        Throwable b = C14979k.m656b(obj);
        return b == null ? completableDeferred.complete(obj) : completableDeferred.completeExceptionally(b);
    }
}
