package com.bumptech.glide.request;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/Request.class */
public interface Request {
    void begin();

    void clear();

    boolean isCleared();

    boolean isComplete();

    boolean isEquivalentTo(Request request);

    boolean isFailed();

    boolean isResourceSet();

    boolean isRunning();

    void recycle();
}
