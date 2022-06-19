package androidx.work.impl.utils;

import androidx.arch.core.util.Function;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.Observer;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/LiveDataUtils.class */
public class LiveDataUtils {

    /* renamed from: androidx.work.impl.utils.LiveDataUtils$1 */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/LiveDataUtils$1.class */
    public static final class C07131 implements Observer<In> {
        Out mCurrentOutput = null;
        final /* synthetic */ Object val$lock;
        final /* synthetic */ Function val$mappingMethod;
        final /* synthetic */ MediatorLiveData val$outputLiveData;
        final /* synthetic */ TaskExecutor val$workTaskExecutor;

        C07131(TaskExecutor taskExecutor, Object obj, Function function, MediatorLiveData mediatorLiveData) {
            this.val$workTaskExecutor = taskExecutor;
            this.val$lock = obj;
            this.val$mappingMethod = function;
            this.val$outputLiveData = mediatorLiveData;
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(final In in) {
            this.val$workTaskExecutor.executeOnBackgroundThread(new Runnable() { // from class: androidx.work.impl.utils.LiveDataUtils.1.1
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Object, Out] */
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (C07131.this.val$lock) {
                        ?? apply = C07131.this.val$mappingMethod.apply(in);
                        if (C07131.this.mCurrentOutput == 0 && apply != 0) {
                            C07131.this.mCurrentOutput = apply;
                            C07131.this.val$outputLiveData.postValue(apply);
                        } else if (C07131.this.mCurrentOutput != 0 && !C07131.this.mCurrentOutput.equals(apply)) {
                            C07131.this.mCurrentOutput = apply;
                            C07131.this.val$outputLiveData.postValue(apply);
                        }
                    }
                }
            });
        }
    }

    private LiveDataUtils() {
    }

    public static <In, Out> LiveData<Out> dedupedMappedLiveDataFor(LiveData<In> liveData, Function<In, Out> function, TaskExecutor taskExecutor) {
        Object obj = new Object();
        MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new C07131(taskExecutor, obj, function, mediatorLiveData));
        return mediatorLiveData;
    }
}
