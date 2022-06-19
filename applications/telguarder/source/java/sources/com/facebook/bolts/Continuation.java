package com.facebook.bolts;
/* loaded from: classes-dex2jar.jar:com/facebook/bolts/Continuation.class */
public interface Continuation<TTaskResult, TContinuationResult> {
    TContinuationResult then(Task<TTaskResult> task) throws Exception;
}
