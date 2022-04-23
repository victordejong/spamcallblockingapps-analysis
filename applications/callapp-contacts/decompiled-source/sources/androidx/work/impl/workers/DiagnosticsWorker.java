package androidx.work.impl.workers;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.j;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTagDao;
import androidx.work.k;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/DiagnosticsWorker.class */
public class DiagnosticsWorker extends Worker {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6228a = k.a("DiagnosticsWrkr");

    public DiagnosticsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    private static String a(WorkNameDao workNameDao, WorkTagDao workTagDao, SystemIdInfoDao systemIdInfoDao, List<WorkSpec> list) {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format("\n Id \t Class Name\t %s\t State\t Unique Name\t Tags\t", Build.VERSION.SDK_INT >= 23 ? "Job Id" : "Alarm Id"));
        for (WorkSpec workSpec : list) {
            Integer num = null;
            SystemIdInfo systemIdInfo = systemIdInfoDao.getSystemIdInfo(workSpec.id);
            if (systemIdInfo != null) {
                num = Integer.valueOf(systemIdInfo.systemId);
            }
            sb.append(a(workSpec, TextUtils.join(",", workNameDao.getNamesForWorkSpecId(workSpec.id)), num, TextUtils.join(",", workTagDao.getTagsForWorkSpecId(workSpec.id))));
        }
        return sb.toString();
    }

    private static String a(WorkSpec workSpec, String str, Integer num, String str2) {
        return String.format("\n%s\t %s\t %s\t %s\t %s\t %s\t", workSpec.id, workSpec.workerClassName, num, workSpec.state.name(), str, str2);
    }

    @Override // androidx.work.Worker
    public ListenableWorker.a doWork() {
        WorkDatabase workDatabase = j.b(getApplicationContext()).f6118c;
        WorkSpecDao j = workDatabase.j();
        WorkNameDao n = workDatabase.n();
        WorkTagDao l = workDatabase.l();
        SystemIdInfoDao m = workDatabase.m();
        List<WorkSpec> recentlyCompletedWork = j.getRecentlyCompletedWork(System.currentTimeMillis() - TimeUnit.DAYS.toMillis(1L));
        List<WorkSpec> runningWork = j.getRunningWork();
        List<WorkSpec> allEligibleWorkSpecsForScheduling = j.getAllEligibleWorkSpecsForScheduling(200);
        if (recentlyCompletedWork != null && !recentlyCompletedWork.isEmpty()) {
            k.a();
            k.a();
            a(n, l, m, recentlyCompletedWork);
        }
        if (runningWork != null && !runningWork.isEmpty()) {
            k.a();
            k.a();
            a(n, l, m, runningWork);
        }
        if (allEligibleWorkSpecsForScheduling != null && !allEligibleWorkSpecsForScheduling.isEmpty()) {
            k.a();
            k.a();
            a(n, l, m, allEligibleWorkSpecsForScheduling);
        }
        return new ListenableWorker.a.c();
    }
}
