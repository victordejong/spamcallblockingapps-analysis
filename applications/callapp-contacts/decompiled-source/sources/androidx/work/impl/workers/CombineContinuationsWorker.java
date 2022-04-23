package androidx.work.impl.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/CombineContinuationsWorker.class */
public class CombineContinuationsWorker extends Worker {
    public CombineContinuationsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    @Override // androidx.work.Worker
    public ListenableWorker.a doWork() {
        return new ListenableWorker.a.c(getInputData());
    }
}
