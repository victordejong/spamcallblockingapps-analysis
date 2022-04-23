package com.callapp.contacts.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.j;
import androidx.work.m;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import java.util.Calendar;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/workers/TrackSuperSkinPremiumSubscriptionEndedWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/TrackSuperSkinPremiumSubscriptionEndedWorker.class */
public final class TrackSuperSkinPremiumSubscriptionEndedWorker extends Worker {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f17086a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private static final String f17087b = "job_track_superskin_premium_subscription_ended_tag";

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"Lcom/callapp/contacts/workers/TrackSuperSkinPremiumSubscriptionEndedWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "scheduleJob", "", "daysToWait", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/TrackSuperSkinPremiumSubscriptionEndedWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(int i) {
            Calendar calendar = Calendar.getInstance();
            calendar.add(5, i);
            Calendar instance = Calendar.getInstance();
            p.b(instance, "Calendar.getInstance()");
            long timeInMillis = instance.getTimeInMillis();
            p.b(calendar, "calendar");
            m c2 = new m.a(TrackSuperSkinPremiumSubscriptionEndedWorker.class).a(getTAG()).a(calendar.getTimeInMillis() - timeInMillis, TimeUnit.MILLISECONDS).c();
            p.b(c2, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
            j.b(CallAppApplication.get()).a(c2);
        }

        public final String getTAG() {
            return TrackSuperSkinPremiumSubscriptionEndedWorker.f17087b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrackSuperSkinPremiumSubscriptionEndedWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        p.d(appContext, "appContext");
        p.d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.a doWork() {
        Boolean bool = Prefs.cJ.get();
        p.b(bool, "Prefs.isPremium.get()");
        if (bool.booleanValue()) {
            AnalyticsManager.get().a(Constants.PURCHASE, "SuperSkin ended premium", "", 0.0d);
        } else {
            AnalyticsManager.get().a(Constants.PURCHASE, "SuperSkin ended not premium", "", 0.0d);
        }
        ListenableWorker.a.c cVar = new ListenableWorker.a.c();
        p.b(cVar, "Result.success()");
        return cVar;
    }
}
