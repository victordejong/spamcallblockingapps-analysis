package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.Deferred;
import p459j.p460a.p541n0.C13032a;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15122p;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0003\n��\bf\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00028��H&¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH&¨\u0006\n"}, m815d2 = {"Lkotlinx/coroutines/CompletableDeferred;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/Deferred;", "complete", "", C13032a.f29462d, "(Ljava/lang/Object;)Z", "completeExceptionally", "exception", "", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CompletableDeferred.class */
public interface CompletableDeferred<T> extends Deferred<T> {

    @Metadata(m817bv = {1, 0, 3}, m814k = 3, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CompletableDeferred$DefaultImpls.class */
    public static final class DefaultImpls {
        public static <T, R> R fold(CompletableDeferred<T> completableDeferred, R r, AbstractC15122p<? super R, ? super AbstractC15049g.AbstractC15052b, ? extends R> pVar) {
            return (R) Deferred.DefaultImpls.fold(completableDeferred, r, pVar);
        }

        public static <T, E extends AbstractC15049g.AbstractC15052b> E get(CompletableDeferred<T> completableDeferred, AbstractC15049g.AbstractC15054c<E> cVar) {
            return (E) Deferred.DefaultImpls.get(completableDeferred, cVar);
        }

        public static <T> AbstractC15049g minusKey(CompletableDeferred<T> completableDeferred, AbstractC15049g.AbstractC15054c<?> cVar) {
            return Deferred.DefaultImpls.minusKey(completableDeferred, cVar);
        }

        public static <T> Job plus(CompletableDeferred<T> completableDeferred, Job job) {
            return Deferred.DefaultImpls.plus((Deferred) completableDeferred, job);
        }

        public static <T> AbstractC15049g plus(CompletableDeferred<T> completableDeferred, AbstractC15049g gVar) {
            return Deferred.DefaultImpls.plus(completableDeferred, gVar);
        }
    }

    boolean complete(T t);

    boolean completeExceptionally(Throwable th);
}
