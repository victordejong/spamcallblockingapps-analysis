package com.facebook.bolts;
/* loaded from: classes3-dex2jar.jar:com/facebook/bolts/ExecutorException.class */
public class ExecutorException extends RuntimeException {
    public ExecutorException(Exception exc) {
        super("An exception was thrown by an Executor", exc);
    }
}
