package com.huawei.hmf.tasks;
/* loaded from: classes3-dex2jar.jar:com/huawei/hmf/tasks/ExecuteResult.class */
public interface ExecuteResult<TResult> {
    void cancel();

    void onComplete(Task<TResult> task);
}
