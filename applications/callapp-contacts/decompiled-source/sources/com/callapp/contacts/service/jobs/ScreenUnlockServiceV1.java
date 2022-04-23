package com.callapp.contacts.service.jobs;

import android.content.Intent;
import androidx.core.app.SafeJobIntentService;
import com.callapp.contacts.activity.missedcall.MissedCallManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.receiver.SmsSentReceiver;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.workers.MissedCallSummaryDailyWorker;
import com.callapp.contacts.workers.NotAnswerCallSummaryDailyWorker;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/jobs/ScreenUnlockServiceV1.class */
public class ScreenUnlockServiceV1 extends SafeJobIntentService {
    @Override // androidx.core.app.JobIntentService
    public final void a(Intent intent) {
        SmsSentReceiver.b();
        MissedCallManager.e();
        MissedCallSummaryDailyWorker.Companion companion = MissedCallSummaryDailyWorker.f17041a;
        Boolean bool = Prefs.J.get();
        p.b(bool, "Prefs.hasPendingMissedCallDailySummary.get()");
        if (bool.booleanValue()) {
            Prefs.J.set(Boolean.FALSE);
            companion.a();
        }
        NotAnswerCallSummaryDailyWorker.Companion companion2 = NotAnswerCallSummaryDailyWorker.f17062a;
        CLog.a(NotAnswerCallSummaryDailyWorker.class, "showPendingNotAnsweredSummary " + Prefs.K.get());
        Boolean bool2 = Prefs.K.get();
        p.b(bool2, "Prefs.hasPendingNotAnswerDailySummary.get()");
        if (bool2.booleanValue()) {
            Prefs.K.set(Boolean.FALSE);
            companion2.a();
        }
    }
}
