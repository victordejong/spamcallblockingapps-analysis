package com.facebook.referrals;

import android.app.Activity;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/facebook/referrals/StartActivityDelegate.class */
interface StartActivityDelegate {
    Activity getActivityContext();

    void startActivityForResult(Intent intent, int i);
}
