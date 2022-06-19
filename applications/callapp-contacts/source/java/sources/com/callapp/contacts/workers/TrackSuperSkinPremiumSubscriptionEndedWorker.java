package com.callapp.contacts.workers;

import android.content.Context;
import androidx.work.C3148m;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.C3068j;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import java.util.Calendar;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, m4298d2 = {"Lcom/callapp/contacts/workers/TrackSuperSkinPremiumSubscriptionEndedWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/TrackSuperSkinPremiumSubscriptionEndedWorker.class */
public final class TrackSuperSkinPremiumSubscriptionEndedWorker extends Worker {

    /* renamed from: a */
    public static final Companion f29643a = new Companion(null);

    /* renamed from: b */
    private static final String f29644b = "job_track_superskin_premium_subscription_ended_tag";

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, m4298d2 = {"Lcom/callapp/contacts/workers/TrackSuperSkinPremiumSubscriptionEndedWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "scheduleJob", "", "daysToWait", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/TrackSuperSkinPremiumSubscriptionEndedWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final void m26115a(int i) {
            Calendar calendar = Calendar.getInstance();
            calendar.add(5, i);
            Calendar calendar2 = Calendar.getInstance();
            C18524p.m3843b(calendar2, "Calendar.getInstance()");
            long timeInMillis = calendar2.getTimeInMillis();
            C18524p.m3843b(calendar, "calendar");
            C3148m c = new C3148m.C3149a(TrackSuperSkinPremiumSubscriptionEndedWorker.class).m39256a(getTAG()).m39259a(calendar.getTimeInMillis() - timeInMillis, TimeUnit.MILLISECONDS).m39254c();
            C18524p.m3843b(c, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
            C3068j.m39359b(CallAppApplication.get()).m39265a(c);
        }

        public final String getTAG() {
            return TrackSuperSkinPremiumSubscriptionEndedWorker.f29644b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrackSuperSkinPremiumSubscriptionEndedWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        C18524p.m3840d(appContext, "appContext");
        C18524p.m3840d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.AbstractC2980a doWork() {
        Boolean bool = Prefs.f26339cJ.get();
        C18524p.m3843b(bool, "Prefs.isPremium.get()");
        if (bool.booleanValue()) {
            AnalyticsManager.get().mo28446a(Constants.PURCHASE, "SuperSkin ended premium", "", 0.0d);
        } else {
            AnalyticsManager.get().mo28446a(Constants.PURCHASE, "SuperSkin ended not premium", "", 0.0d);
        }
        ListenableWorker.AbstractC2980a.C2983c c2983c = new ListenableWorker.AbstractC2980a.C2983c();
        C18524p.m3843b(c2983c, "Result.success()");
        return c2983c;
    }
}
