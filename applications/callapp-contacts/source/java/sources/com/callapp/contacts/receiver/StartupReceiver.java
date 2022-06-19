package com.callapp.contacts.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.core.app.JobIntentService;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.service.jobs.StartupServiceV1;
import com.callapp.contacts.util.AndroidUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/StartupReceiver.class */
public class StartupReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static HandlerThread f27391a;

    /* renamed from: b */
    private static Handler f27392b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/StartupReceiver$StartupTask.class */
    static class StartupTask extends Task {

        /* renamed from: a */
        private final BroadcastReceiver.PendingResult f27393a;

        /* renamed from: b */
        private final Intent f27394b;

        public StartupTask(BroadcastReceiver.PendingResult pendingResult, Intent intent) {
            this.f27393a = pendingResult;
            this.f27394b = intent;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            try {
                JobIntentService.m44627a(CallAppApplication.get(), StartupServiceV1.class, -311219, this.f27394b);
            } finally {
                this.f27393a.finish();
            }
        }
    }

    /* renamed from: a */
    public static void m27884a() {
        Prefs.f26542gA.set(Boolean.FALSE);
        Prefs.f26593gz.set(Boolean.FALSE);
        Prefs.f26543gB.set(Boolean.FALSE);
        Prefs.f26592gy.set(Boolean.FALSE);
        HandlerThread handlerThread = new HandlerThread(StartupReceiver.class.toString());
        f27391a = handlerThread;
        handlerThread.start();
        AndroidUtils.m27631a(f27391a.getLooper());
        f27392b = new Handler(f27391a.getLooper());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.QUICKBOOT_POWERON");
        intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
        intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        intentFilter.addCategory("android.intent.category.HOME");
        CallAppApplication.get().registerReceiver(new StartupReceiver(), intentFilter, null, f27392b);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        new StartupTask(goAsync(), intent).execute();
    }
}
