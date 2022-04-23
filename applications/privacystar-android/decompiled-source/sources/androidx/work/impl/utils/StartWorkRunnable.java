package androidx.work.impl.utils;

import android.support.annotation.RestrictTo;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkManagerImpl;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/StartWorkRunnable.class */
public class StartWorkRunnable implements Runnable {
    private WorkerParameters.RuntimeExtras mRuntimeExtras;
    private WorkManagerImpl mWorkManagerImpl;
    private String mWorkSpecId;

    public StartWorkRunnable(WorkManagerImpl workManagerImpl, String str, WorkerParameters.RuntimeExtras runtimeExtras) {
        this.mWorkManagerImpl = workManagerImpl;
        this.mWorkSpecId = str;
        this.mRuntimeExtras = runtimeExtras;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.mWorkManagerImpl.getProcessor().startWork(this.mWorkSpecId, this.mRuntimeExtras);
    }
}
