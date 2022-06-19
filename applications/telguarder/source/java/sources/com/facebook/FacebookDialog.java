package com.facebook;
/* loaded from: classes-dex2jar.jar:com/facebook/FacebookDialog.class */
public interface FacebookDialog<CONTENT, RESULT> {
    boolean canShow(CONTENT content);

    void registerCallback(CallbackManager callbackManager, FacebookCallback<RESULT> facebookCallback);

    void registerCallback(CallbackManager callbackManager, FacebookCallback<RESULT> facebookCallback, int i);

    void show(CONTENT content);
}
