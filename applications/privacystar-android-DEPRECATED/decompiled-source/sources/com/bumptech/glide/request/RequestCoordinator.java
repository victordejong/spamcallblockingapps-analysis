package com.bumptech.glide.request;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/RequestCoordinator.class */
public interface RequestCoordinator {
    boolean canNotifyCleared(Request request);

    boolean canNotifyStatusChanged(Request request);

    boolean canSetImage(Request request);

    boolean isAnyResourceSet();

    void onRequestFailed(Request request);

    void onRequestSuccess(Request request);
}
