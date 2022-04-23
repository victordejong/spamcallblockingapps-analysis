package com.callapp.contacts.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.callapp.contacts.util.CLog;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/workers/MissedCallSummaryWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/MissedCallSummaryWorker.class */
public final class MissedCallSummaryWorker extends Worker {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f17050a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private static final String f17051b = "job_missed_call_summary_tag";

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/callapp/contacts/workers/MissedCallSummaryWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "scheduleJob", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/MissedCallSummaryWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String getTAG() {
            return MissedCallSummaryWorker.f17051b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MissedCallSummaryWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        p.d(appContext, "appContext");
        p.d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.a doWork() {
        CLog.a(MissedCallSummaryWorker.class, "MissedCallSummaryWorker doWork");
        MissedCallSummaryDailyWorker.f17041a.a();
        ListenableWorker.a.c cVar = new ListenableWorker.a.c();
        p.b(cVar, "Result.success()");
        return cVar;
    }
}
