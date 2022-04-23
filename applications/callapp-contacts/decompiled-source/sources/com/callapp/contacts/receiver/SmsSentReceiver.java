package com.callapp.contacts.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.core.app.JobIntentService;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView;
import com.callapp.contacts.activity.contact.details.overlay.MultipleIncomingSmsOverlayView;
import com.callapp.contacts.manager.OverlayManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.SingleSmsData;
import com.callapp.contacts.model.objectbox.SingleSmsData_;
import com.callapp.contacts.service.jobs.SmsReceivedServiceV1;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.framework.util.CollectionUtils;
import io.objectbox.a;
import io.objectbox.g;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/SmsSentReceiver.class */
public class SmsSentReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static HandlerThread f15645a;

    /* renamed from: b  reason: collision with root package name */
    private static Handler f15646b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/SmsSentReceiver$SmsSentTask.class */
    static class SmsSentTask extends Task {

        /* renamed from: a  reason: collision with root package name */
        private final BroadcastReceiver.PendingResult f15648a;

        /* renamed from: b  reason: collision with root package name */
        private final Intent f15649b;

        public SmsSentTask(BroadcastReceiver.PendingResult pendingResult, Intent intent) {
            this.f15648a = pendingResult;
            this.f15649b = intent;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            try {
                JobIntentService.a(CallAppApplication.get(), SmsReceivedServiceV1.class, -311218, this.f15649b);
            } finally {
                this.f15648a.finish();
            }
        }
    }

    public static void a() {
        HandlerThread handlerThread = new HandlerThread(SmsSentReceiver.class.toString());
        f15645a = handlerThread;
        handlerThread.start();
        AndroidUtils.a(f15645a.getLooper());
        f15646b = new Handler(f15645a.getLooper());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.callapp.contacts.receiver.SMS_SENT");
        intentFilter.setPriority(2147483646);
        CallAppApplication.get().registerReceiver(new SmsSentReceiver(), intentFilter, null, f15646b);
    }

    public static void b() {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(SingleSmsData.class);
        final List c2 = d2.e().a((g) SingleSmsData_.id, 0).a().c();
        if (!CollectionUtils.a(c2)) {
            d2.d();
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.receiver.SmsSentReceiver.1
                @Override // java.lang.Runnable
                public final void run() {
                    ContactDetailsOverlayView a2 = OverlayManager.get().a(MultipleIncomingSmsOverlayView.class);
                    if (a2 == null) {
                        a2 = new MultipleIncomingSmsOverlayView(CallAppApplication.get());
                        a2.onCreate();
                        AnalyticsManager.get().a(Constants.SMS, "creating SMS overlay", (String) null, c2.size(), new String[0]);
                    } else {
                        AnalyticsManager.get().a(Constants.SMS, "Adding page to existing SMS overlay", (String) null, c2.size(), new String[0]);
                    }
                    a2.setVisibility(0);
                    for (SingleSmsData singleSmsData : c2) {
                        ((MultipleIncomingSmsOverlayView) a2).addPage(singleSmsData);
                    }
                }
            });
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!PhoneManager.get().isInDriveMode()) {
            new SmsSentTask(goAsync(), intent).execute();
        }
    }
}
