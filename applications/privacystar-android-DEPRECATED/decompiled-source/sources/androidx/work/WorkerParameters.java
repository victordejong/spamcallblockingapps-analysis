package androidx.work;

import android.net.Network;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/work/WorkerParameters.class */
public final class WorkerParameters {
    @NonNull
    private Executor mBackgroundExecutor;
    @NonNull
    private UUID mId;
    @NonNull
    private Data mInputData;
    private int mRunAttemptCount;
    @NonNull
    private RuntimeExtras mRuntimeExtras;
    @NonNull
    private Set<String> mTags;
    @NonNull
    private TaskExecutor mWorkTaskExecutor;
    @NonNull
    private WorkerFactory mWorkerFactory;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes-dex2jar.jar:androidx/work/WorkerParameters$RuntimeExtras.class */
    public static class RuntimeExtras {
        @RequiresApi(28)
        public Network network;
        @NonNull
        public List<String> triggeredContentAuthorities = Collections.emptyList();
        @NonNull
        public List<Uri> triggeredContentUris = Collections.emptyList();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public WorkerParameters(@NonNull UUID uuid, @NonNull Data data, @NonNull Collection<String> collection, @NonNull RuntimeExtras runtimeExtras, int i, @NonNull Executor executor, @NonNull TaskExecutor taskExecutor, @NonNull WorkerFactory workerFactory) {
        this.mId = uuid;
        this.mInputData = data;
        this.mTags = new HashSet(collection);
        this.mRuntimeExtras = runtimeExtras;
        this.mRunAttemptCount = i;
        this.mBackgroundExecutor = executor;
        this.mWorkTaskExecutor = taskExecutor;
        this.mWorkerFactory = workerFactory;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Executor getBackgroundExecutor() {
        return this.mBackgroundExecutor;
    }

    @NonNull
    public UUID getId() {
        return this.mId;
    }

    @NonNull
    public Data getInputData() {
        return this.mInputData;
    }

    @RequiresApi(28)
    @Nullable
    public Network getNetwork() {
        return this.mRuntimeExtras.network;
    }

    public int getRunAttemptCount() {
        return this.mRunAttemptCount;
    }

    @NonNull
    public Set<String> getTags() {
        return this.mTags;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public TaskExecutor getTaskExecutor() {
        return this.mWorkTaskExecutor;
    }

    @NonNull
    @RequiresApi(24)
    public List<String> getTriggeredContentAuthorities() {
        return this.mRuntimeExtras.triggeredContentAuthorities;
    }

    @NonNull
    @RequiresApi(24)
    public List<Uri> getTriggeredContentUris() {
        return this.mRuntimeExtras.triggeredContentUris;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public WorkerFactory getWorkerFactory() {
        return this.mWorkerFactory;
    }
}
