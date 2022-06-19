package com.facebook;
/* loaded from: classes-dex2jar.jar:com/facebook/FacebookCallback.class */
public interface FacebookCallback<RESULT> {
    void onCancel();

    void onError(FacebookException facebookException);

    void onSuccess(RESULT result);
}
