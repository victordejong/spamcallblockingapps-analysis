package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.Job;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15122p;
@InternalCoroutinesApi
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\bg\u0018��2\u00020\u0001J\f\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004H'¨\u0006\u0005"}, m815d2 = {"Lkotlinx/coroutines/ParentJob;", "Lkotlinx/coroutines/Job;", "getChildJobCancellationCause", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/ParentJob.class */
public interface ParentJob extends Job {

    @Metadata(m817bv = {1, 0, 3}, m814k = 3, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/ParentJob$DefaultImpls.class */
    public static final class DefaultImpls {
        public static <R> R fold(ParentJob parentJob, R r, AbstractC15122p<? super R, ? super AbstractC15049g.AbstractC15052b, ? extends R> pVar) {
            return (R) Job.DefaultImpls.fold(parentJob, r, pVar);
        }

        public static <E extends AbstractC15049g.AbstractC15052b> E get(ParentJob parentJob, AbstractC15049g.AbstractC15054c<E> cVar) {
            return (E) Job.DefaultImpls.get(parentJob, cVar);
        }

        public static AbstractC15049g minusKey(ParentJob parentJob, AbstractC15049g.AbstractC15054c<?> cVar) {
            return Job.DefaultImpls.minusKey(parentJob, cVar);
        }

        public static Job plus(ParentJob parentJob, Job job) {
            return Job.DefaultImpls.plus((Job) parentJob, job);
        }

        public static AbstractC15049g plus(ParentJob parentJob, AbstractC15049g gVar) {
            return Job.DefaultImpls.plus(parentJob, gVar);
        }
    }

    @InternalCoroutinesApi
    CancellationException getChildJobCancellationCause();
}
