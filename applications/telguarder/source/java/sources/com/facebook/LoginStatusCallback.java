package com.facebook;
/* loaded from: classes-dex2jar.jar:com/facebook/LoginStatusCallback.class */
public interface LoginStatusCallback {
    void onCompleted(AccessToken accessToken);

    void onError(Exception exc);

    void onFailure();
}
