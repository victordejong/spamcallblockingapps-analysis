package com.callapp.contacts.service.jobs;

import android.content.Intent;
import androidx.core.app.SafeJobIntentService;
import com.callapp.contacts.activity.missedcall.MissedCallManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.receiver.SmsSentReceiver;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.workers.MissedCallSummaryDailyWorker;
import com.callapp.contacts.workers.NotAnswerCallSummaryDailyWorker;
import kotlin.jvm.internal.C18524p;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/jobs/ScreenUnlockServiceV1.class */
public class ScreenUnlockServiceV1 extends SafeJobIntentService {
    @Override // androidx.core.app.JobIntentService
    /* renamed from: a */
    public final void mo27756a(Intent intent) {
        SmsSentReceiver.m27885b();
        MissedCallManager.m29817e();
        MissedCallSummaryDailyWorker.Companion companion = MissedCallSummaryDailyWorker.f29589a;
        Boolean bool = Prefs.f26206J.get();
        C18524p.m3843b(bool, "Prefs.hasPendingMissedCallDailySummary.get()");
        if (bool.booleanValue()) {
            Prefs.f26206J.set(Boolean.FALSE);
            companion.m26155a();
        }
        NotAnswerCallSummaryDailyWorker.Companion companion2 = NotAnswerCallSummaryDailyWorker.f29619a;
        CLog.m27611a(NotAnswerCallSummaryDailyWorker.class, "showPendingNotAnsweredSummary " + Prefs.f26207K.get());
        Boolean bool2 = Prefs.f26207K.get();
        C18524p.m3843b(bool2, "Prefs.hasPendingNotAnswerDailySummary.get()");
        if (bool2.booleanValue()) {
            Prefs.f26207K.set(Boolean.FALSE);
            companion2.m26135a();
        }
    }
}
