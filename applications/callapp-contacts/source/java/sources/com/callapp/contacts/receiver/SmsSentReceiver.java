package com.callapp.contacts.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.core.app.JobIntentService;
import com.callapp.contacts.CallAppApplication;
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
import io.objectbox.C17944a;
import io.objectbox.C17978g;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/SmsSentReceiver.class */
public class SmsSentReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static HandlerThread f27386a;

    /* renamed from: b */
    private static Handler f27387b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/SmsSentReceiver$SmsSentTask.class */
    static class SmsSentTask extends Task {

        /* renamed from: a */
        private final BroadcastReceiver.PendingResult f27389a;

        /* renamed from: b */
        private final Intent f27390b;

        public SmsSentTask(BroadcastReceiver.PendingResult pendingResult, Intent intent) {
            this.f27389a = pendingResult;
            this.f27390b = intent;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            try {
                JobIntentService.m44627a(CallAppApplication.get(), SmsReceivedServiceV1.class, -311218, this.f27390b);
            } finally {
                this.f27389a.finish();
            }
        }
    }

    /* renamed from: a */
    public static void m27886a() {
        HandlerThread handlerThread = new HandlerThread(SmsSentReceiver.class.toString());
        f27386a = handlerThread;
        handlerThread.start();
        AndroidUtils.m27631a(f27386a.getLooper());
        f27387b = new Handler(f27386a.getLooper());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.callapp.contacts.receiver.SMS_SENT");
        intentFilter.setPriority(2147483646);
        CallAppApplication.get().registerReceiver(new SmsSentReceiver(), intentFilter, null, f27387b);
    }

    /* renamed from: b */
    public static void m27885b() {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(SingleSmsData.class);
        final List m4628c = m4727d.m4700e().m4614a((C17978g) SingleSmsData_.f26798id, 0).m4618a().m4628c();
        if (CollectionUtils.m26076a(m4628c)) {
            return;
        }
        m4727d.m4701d();
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.receiver.SmsSentReceiver.1
            @Override // java.lang.Runnable
            public final void run() {
                MultipleIncomingSmsOverlayView m28523a = OverlayManager.get().m28523a(MultipleIncomingSmsOverlayView.class);
                if (m28523a == null) {
                    m28523a = new MultipleIncomingSmsOverlayView(CallAppApplication.get());
                    m28523a.onCreate();
                    AnalyticsManager.get().mo28444a(Constants.SMS, "creating SMS overlay", (String) null, m4628c.size(), new String[0]);
                } else {
                    AnalyticsManager.get().mo28444a(Constants.SMS, "Adding page to existing SMS overlay", (String) null, m4628c.size(), new String[0]);
                }
                m28523a.setVisibility(0);
                for (SingleSmsData singleSmsData : m4628c) {
                    ((MultipleIncomingSmsOverlayView) m28523a).addPage(singleSmsData);
                }
            }
        });
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!PhoneManager.get().isInDriveMode()) {
            new SmsSentTask(goAsync(), intent).execute();
        }
    }
}
