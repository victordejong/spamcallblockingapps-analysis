package com.callapp.contacts.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.j;
import androidx.work.m;
import androidx.work.t;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.sync.service.RealSyncService;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/workers/RescheduleSyncWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/RescheduleSyncWorker.class */
public final class RescheduleSyncWorker extends Worker {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f17078a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private static final String f17079b = "job_reschedule_sync_tag";

    /* renamed from: c  reason: collision with root package name */
    private static final String f17080c = "date_";

    /* renamed from: d  reason: collision with root package name */
    private static final int f17081d = 16;

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/workers/RescheduleSyncWorker$Companion;", "", "()V", "DATE_TAG", "", "NEXT_SYNC_IN_MINUTES", "", "TAG", "scheduleJob", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/RescheduleSyncWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void a() {
            long j;
            Calendar calendar = Calendar.getInstance();
            calendar.add(12, RescheduleSyncWorker.f17081d);
            p.b(calendar, "calendar");
            long timeInMillis = calendar.getTimeInMillis();
            try {
                for (t workInfo : j.b(CallAppApplication.get()).b(RescheduleSyncWorker.f17079b).get()) {
                    p.b(workInfo, "workInfo");
                    if (workInfo.f6236b == t.a.ENQUEUED) {
                        Iterator<String> it2 = workInfo.f6237c.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            String tag = it2.next();
                            p.b(tag, "tag");
                            if (kotlin.h.p.a(tag, RescheduleSyncWorker.f17080c, false)) {
                                String h = StringUtils.h(tag, "date_");
                                if (h != null) {
                                    j = Long.parseLong(h);
                                }
                            }
                        }
                        j = 0;
                        if (j != 0 && !new Date(j).after(new Date(timeInMillis))) {
                            CLog.a(RescheduleSyncWorker.class, "Reschedule Sync is already enqueued for: " + new Date(j));
                            return;
                        }
                        j.b(CallAppApplication.get()).a(workInfo.f6235a);
                        CLog.a(RescheduleSyncWorker.class, "Cancelling Reschedule Syncs scheduled to run at: " + new Date(j));
                    }
                }
            } catch (Exception e) {
                CLog.a(RescheduleSyncWorker.class, e);
            }
            Calendar instance = Calendar.getInstance();
            p.b(instance, "Calendar.getInstance()");
            long timeInMillis2 = instance.getTimeInMillis();
            CLog.a(RescheduleSyncWorker.class, "Enqueuing Reschedule Sync");
            m.a a2 = new m.a(RescheduleSyncWorker.class).a(RescheduleSyncWorker.f17079b);
            m c2 = a2.a(RescheduleSyncWorker.f17080c + String.valueOf(timeInMillis)).a(timeInMillis - timeInMillis2, TimeUnit.MILLISECONDS).c();
            p.b(c2, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
            j.b(CallAppApplication.get()).a(c2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RescheduleSyncWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        p.d(appContext, "appContext");
        p.d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.a doWork() {
        RealSyncService.b(false);
        ListenableWorker.a.c cVar = new ListenableWorker.a.c();
        p.b(cVar, "Result.success()");
        return cVar;
    }
}
