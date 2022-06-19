package com.facebook.login;

import android.app.Activity;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/facebook/login/StartActivityDelegate.class */
interface StartActivityDelegate {
    Activity getActivityContext();

    void startActivityForResult(Intent intent, int i);
}
