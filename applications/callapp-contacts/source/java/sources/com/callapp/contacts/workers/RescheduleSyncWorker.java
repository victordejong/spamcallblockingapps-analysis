package com.callapp.contacts.workers;

import android.content.Context;
import androidx.work.C3148m;
import androidx.work.C3163t;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.C3068j;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.sync.service.RealSyncService;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, m4298d2 = {"Lcom/callapp/contacts/workers/RescheduleSyncWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/RescheduleSyncWorker.class */
public final class RescheduleSyncWorker extends Worker {

    /* renamed from: a */
    public static final Companion f29635a = new Companion(null);

    /* renamed from: b */
    private static final String f29636b = "job_reschedule_sync_tag";

    /* renamed from: c */
    private static final String f29637c = "date_";

    /* renamed from: d */
    private static final int f29638d = 16;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��¨\u0006\n"}, m4298d2 = {"Lcom/callapp/contacts/workers/RescheduleSyncWorker$Companion;", "", "()V", "DATE_TAG", "", "NEXT_SYNC_IN_MINUTES", "", "TAG", "scheduleJob", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/RescheduleSyncWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Type inference failed for: r0v89, types: [long] */
        /* renamed from: a */
        public static void m26121a() {
            char c;
            Calendar calendar = Calendar.getInstance();
            calendar.add(12, RescheduleSyncWorker.f29638d);
            C18524p.m3843b(calendar, "calendar");
            long timeInMillis = calendar.getTimeInMillis();
            try {
                for (C3163t workInfo : C3068j.m39359b(CallAppApplication.get()).mo39261b(RescheduleSyncWorker.f29636b).get()) {
                    C18524p.m3843b(workInfo, "workInfo");
                    if (workInfo.f11514b == C3163t.EnumC3164a.ENQUEUED) {
                        Iterator<String> it2 = workInfo.f11515c.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            String tag = it2.next();
                            C18524p.m3843b(tag, "tag");
                            if (C18425p.m3957a(tag, RescheduleSyncWorker.f29637c, false)) {
                                String m26023h = StringUtils.m26023h(tag, "date_");
                                if (m26023h != null) {
                                    c = Long.parseLong(m26023h);
                                }
                            }
                        }
                        c = 0;
                        if (c != 0 && !new Date(c).after(new Date(timeInMillis))) {
                            CLog.m27611a(RescheduleSyncWorker.class, "Reschedule Sync is already enqueued for: " + new Date(c));
                            return;
                        }
                        C3068j.m39359b(CallAppApplication.get()).mo39262a(workInfo.f11513a);
                        CLog.m27611a(RescheduleSyncWorker.class, "Cancelling Reschedule Syncs scheduled to run at: " + new Date(c));
                    }
                }
            } catch (Exception e) {
                CLog.m27609a(RescheduleSyncWorker.class, e);
            }
            Calendar calendar2 = Calendar.getInstance();
            C18524p.m3843b(calendar2, "Calendar.getInstance()");
            long timeInMillis2 = calendar2.getTimeInMillis();
            CLog.m27611a(RescheduleSyncWorker.class, "Enqueuing Reschedule Sync");
            C3148m c2 = new C3148m.C3149a(RescheduleSyncWorker.class).m39256a(RescheduleSyncWorker.f29636b).m39256a(RescheduleSyncWorker.f29637c + String.valueOf(timeInMillis)).m39259a(timeInMillis - timeInMillis2, TimeUnit.MILLISECONDS).m39254c();
            C18524p.m3843b(c2, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
            C3068j.m39359b(CallAppApplication.get()).m39265a(c2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RescheduleSyncWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        C18524p.m3840d(appContext, "appContext");
        C18524p.m3840d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.AbstractC2980a doWork() {
        RealSyncService.m27754b(false);
        ListenableWorker.AbstractC2980a.C2983c c2983c = new ListenableWorker.AbstractC2980a.C2983c();
        C18524p.m3843b(c2983c, "Result.success()");
        return c2983c;
    }
}
