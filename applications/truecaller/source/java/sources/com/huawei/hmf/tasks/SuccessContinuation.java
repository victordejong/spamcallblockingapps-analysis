package com.huawei.hmf.tasks;
/* loaded from: classes3-dex2jar.jar:com/huawei/hmf/tasks/SuccessContinuation.class */
public interface SuccessContinuation<TResult, TContinuationResult> {
    Task<TContinuationResult> then(TResult tresult) throws Exception;
}
