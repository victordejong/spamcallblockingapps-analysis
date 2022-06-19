package com.huawei.hmf.tasks;
/* loaded from: classes3-dex2jar.jar:com/huawei/hmf/tasks/Continuation.class */
public interface Continuation<TResult, TContinuationResult> {
    TContinuationResult then(Task<TResult> task) throws Exception;
}
