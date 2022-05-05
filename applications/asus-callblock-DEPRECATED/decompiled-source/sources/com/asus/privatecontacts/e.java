package com.asus.privatecontacts;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.android.contacts.activities.TransactionSafeActivity;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.privatecontacts.PrivateScreenIntentReceiver;
import com.asus.privatecontacts.PrivateUserLeaveReceiver;
import com.asus.privatecontacts.b.f;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/e.class */
public abstract class e extends TransactionSafeActivity implements PrivateScreenIntentReceiver.a, PrivateUserLeaveReceiver.a {
    private static final String TAG = e.class.getSimpleName();
    private BroadcastReceiver mScreenIntentReceiver;
    private boolean mStayPrivate = false;
    private BroadcastReceiver mUserLeaveReceiver;

    public boolean getStayPrivate() {
        return this.mStayPrivate;
    }

    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        this.mScreenIntentReceiver = new PrivateScreenIntentReceiver(this);
        registerReceiver(this.mScreenIntentReceiver, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter("com.asus.privatecontacts.action.userleave");
        this.mUserLeaveReceiver = new PrivateUserLeaveReceiver(this);
        registerReceiver(this.mUserLeaveReceiver, intentFilter2);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.mScreenIntentReceiver);
        unregisterReceiver(this.mUserLeaveReceiver);
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // com.asus.privatecontacts.PrivateScreenIntentReceiver.a
    public void onScreenOff() {
        if (Build.VERSION.SDK_INT >= 21 ? f.a().f3008b == 0 : d.a()) {
            Log.d(TAG, "Screen turns off, finish private activity...");
            finish();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        if (i == 20 && f.b(this)) {
            Log.d(TAG, "Finish private contacts");
            finish();
        }
    }

    @Override // com.asus.privatecontacts.PrivateUserLeaveReceiver.a
    public void onUserLeave() {
        finish();
    }

    @Override // android.app.Activity
    protected void onUserLeaveHint() {
        if (!this.mStayPrivate) {
            ActivityManager.RunningTaskInfo runningTaskInfo = ((ActivityManager) getSystemService("activity")).getRunningTasks(100).get(0);
            Log.d(TAG, "this.getClass().getName(): " + getClass().getName());
            Log.d(TAG, "info.topActivity.getClassName(): " + runningTaskInfo.topActivity.getClassName());
            if (PhoneCapabilityTester.IsSystemApp() ? !runningTaskInfo.topActivity.getClassName().equals("com.android.systemui.recents.RecentsActivity") && !runningTaskInfo.topActivity.getClassName().equals(getClass().getName()) : !runningTaskInfo.topActivity.getClassName().equals(getClass().getName())) {
                Log.d(TAG, "Finishing all private contacts activities...");
                Intent intent = new Intent("com.asus.privatecontacts.action.userleave");
                intent.putExtra("key_user_leave", true);
                sendBroadcast(intent);
                finish();
            }
        }
        this.mStayPrivate = false;
        super.onUserLeaveHint();
    }

    public void setStayPrivate(boolean z) {
        this.mStayPrivate = z;
    }
}
