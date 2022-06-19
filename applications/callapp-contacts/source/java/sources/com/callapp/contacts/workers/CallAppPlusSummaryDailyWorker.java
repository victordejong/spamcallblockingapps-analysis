package com.callapp.contacts.workers;

import android.content.Context;
import android.content.Intent;
import androidx.work.AbstractC3150n;
import androidx.work.C3148m;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.C3068j;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusDaySummaryActivity;
import com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusSummaryItem;
import com.callapp.contacts.manager.contacts.ContactPlusUtils;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, m4298d2 = {"Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/CallAppPlusSummaryDailyWorker.class */
public final class CallAppPlusSummaryDailyWorker extends Worker {

    /* renamed from: a */
    public static final Companion f29579a = new Companion(null);

    /* renamed from: b */
    private static final String f29580b = "YESTERDAY_CALLAPP_PLUS_LIST";

    /* renamed from: c */
    private static final String f29581c = "job_callapp_plus_daily_tag";

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\nR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0006¨\u0006\f"}, m4298d2 = {"Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "YESTERDAY_CALLAPP_PLUS_LIST", "getYESTERDAY_CALLAPP_PLUS_LIST", "openCallAppPlusSummary", "", "scheduleJob", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/CallAppPlusSummaryDailyWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final void m26169a() {
            Calendar calendar = Calendar.getInstance();
            calendar.set(11, 19);
            Calendar now = Calendar.getInstance();
            if (!now.before(calendar)) {
                calendar.add(5, 1);
            }
            C18524p.m3843b(calendar, "calendar");
            long timeInMillis = calendar.getTimeInMillis();
            C18524p.m3843b(now, "now");
            long timeInMillis2 = now.getTimeInMillis();
            try {
                AbstractC3150n mo39264a = C3068j.m39359b(CallAppApplication.get()).mo39264a(getTAG());
                C18524p.m3843b(mo39264a, "WorkManager.getInstance(…).cancelAllWorkByTag(TAG)");
                mo39264a.mo39272a().get();
            } catch (Exception e) {
                CLog.m27609a(CallAppPlusSummaryDailyWorker.class, e);
            }
            C3148m c = new C3148m.C3149a(CallAppPlusSummaryDailyWorker.class).m39256a(getTAG()).m39259a(timeInMillis - timeInMillis2, TimeUnit.MILLISECONDS).m39254c();
            C18524p.m3843b(c, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
            C3068j.m39359b(CallAppApplication.get()).m39265a(c);
        }

        public final String getTAG() {
            return CallAppPlusSummaryDailyWorker.f29581c;
        }

        public final String getYESTERDAY_CALLAPP_PLUS_LIST() {
            return CallAppPlusSummaryDailyWorker.f29580b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallAppPlusSummaryDailyWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        C18524p.m3840d(appContext, "appContext");
        C18524p.m3840d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.AbstractC2980a doWork() {
        try {
            CLog.m27611a(CallAppPlusSummaryDailyWorker.class, "CallAppPlusSummaryDailyWorker onRunDailyJob");
            Companion companion = f29579a;
            Boolean bool = Prefs.f26203G.get();
            C18524p.m3843b(bool, "Prefs.callAppPlusDailySummaryEnabled.get()");
            if (bool.booleanValue()) {
                List<CallAppPlusSummaryItem> last24ContactPlusItemsData = ContactPlusUtils.getLast24ContactPlusItemsData();
                if (CollectionUtils.m26068b(last24ContactPlusItemsData)) {
                    Intent intent = new Intent(CallAppApplication.get(), CallAppPlusDaySummaryActivity.class);
                    intent.setFlags(268435456);
                    String yesterday_callapp_plus_list = companion.getYESTERDAY_CALLAPP_PLUS_LIST();
                    if (last24ContactPlusItemsData == null) {
                        throw new NullPointerException("null cannot be cast to non-null type java.util.ArrayList<out android.os.Parcelable>");
                    }
                    intent.putParcelableArrayListExtra(yesterday_callapp_plus_list, (ArrayList) last24ContactPlusItemsData);
                    Activities.m27685a(CallAppApplication.get(), intent);
                }
            }
            ListenableWorker.AbstractC2980a.C2983c c2983c = new ListenableWorker.AbstractC2980a.C2983c();
            C18524p.m3843b(c2983c, "Result.success()");
            companion.m26169a();
            return c2983c;
        } catch (Throwable th) {
            f29579a.m26169a();
            throw th;
        }
    }
}
