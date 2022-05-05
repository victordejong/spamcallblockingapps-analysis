package com.birbit.android.jobqueue.callback;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.birbit.android.jobqueue.Job;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/callback/JobManagerCallback.class */
public interface JobManagerCallback {
    public static final int RESULT_CANCEL_CANCELLED_VIA_SHOULD_RE_RUN = 5;
    public static final int RESULT_CANCEL_CANCELLED_WHILE_RUNNING = 3;
    public static final int RESULT_CANCEL_REACHED_RETRY_LIMIT = 2;
    public static final int RESULT_CANCEL_SINGLE_INSTANCE_WHILE_RUNNING = 6;
    public static final int RESULT_FAIL_WILL_RETRY = 4;
    public static final int RESULT_SUCCEED = 1;

    void onAfterJobRun(@NonNull Job job, int i);

    void onDone(@NonNull Job job);

    void onJobAdded(@NonNull Job job);

    void onJobCancelled(@NonNull Job job, boolean z, @Nullable Throwable th);

    void onJobRun(@NonNull Job job, int i);
}
