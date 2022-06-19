package com.flexaspect.android.everycallcontrol.p003ui.activities;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.MainActivity$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/MainActivity$a.class */
public class MainActivity$a extends BroadcastReceiver {

    /* renamed from: a */
    public final /* synthetic */ MainActivity f2776a;

    public MainActivity$a(MainActivity mainActivity) {
        this.f2776a = mainActivity;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if (TextUtils.isEmpty(action) || !action.equals("com.kedlin.cch.intent.INTENT_ACTION_CHECK_ADV_ID")) {
            return;
        }
        this.f2776a.M();
    }
}
