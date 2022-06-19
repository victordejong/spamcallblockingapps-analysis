package androidx.work.impl.workers;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.AbstractC3145k;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.C3068j;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTagDao;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/DiagnosticsWorker.class */
public class DiagnosticsWorker extends Worker {

    /* renamed from: a */
    private static final String f11506a = AbstractC3145k.m39275a("DiagnosticsWrkr");

    public DiagnosticsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    /* renamed from: a */
    private static String m39279a(WorkNameDao workNameDao, WorkTagDao workTagDao, SystemIdInfoDao systemIdInfoDao, List<WorkSpec> list) {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format("\n Id \t Class Name\t %s\t State\t Unique Name\t Tags\t", Build.VERSION.SDK_INT >= 23 ? "Job Id" : "Alarm Id"));
        for (WorkSpec workSpec : list) {
            Integer num = null;
            SystemIdInfo systemIdInfo = systemIdInfoDao.getSystemIdInfo(workSpec.f11397id);
            if (systemIdInfo != null) {
                num = Integer.valueOf(systemIdInfo.systemId);
            }
            sb.append(m39278a(workSpec, TextUtils.join(",", workNameDao.getNamesForWorkSpecId(workSpec.f11397id)), num, TextUtils.join(",", workTagDao.getTagsForWorkSpecId(workSpec.f11397id))));
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static String m39278a(WorkSpec workSpec, String str, Integer num, String str2) {
        return String.format("\n%s\t %s\t %s\t %s\t %s\t %s\t", workSpec.f11397id, workSpec.workerClassName, num, workSpec.state.name(), str, str2);
    }

    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC2980a doWork() {
        WorkDatabase workDatabase = C3068j.m39359b(getApplicationContext()).f11355c;
        WorkSpecDao mo39474j = workDatabase.mo39474j();
        WorkNameDao mo39470n = workDatabase.mo39470n();
        WorkTagDao mo39472l = workDatabase.mo39472l();
        SystemIdInfoDao mo39471m = workDatabase.mo39471m();
        List<WorkSpec> recentlyCompletedWork = mo39474j.getRecentlyCompletedWork(System.currentTimeMillis() - TimeUnit.DAYS.toMillis(1L));
        List<WorkSpec> runningWork = mo39474j.getRunningWork();
        List<WorkSpec> allEligibleWorkSpecsForScheduling = mo39474j.getAllEligibleWorkSpecsForScheduling(200);
        if (recentlyCompletedWork != null && !recentlyCompletedWork.isEmpty()) {
            AbstractC3145k.m39277a();
            AbstractC3145k.m39277a();
            m39279a(mo39470n, mo39472l, mo39471m, recentlyCompletedWork);
        }
        if (runningWork != null && !runningWork.isEmpty()) {
            AbstractC3145k.m39277a();
            AbstractC3145k.m39277a();
            m39279a(mo39470n, mo39472l, mo39471m, runningWork);
        }
        if (allEligibleWorkSpecsForScheduling != null && !allEligibleWorkSpecsForScheduling.isEmpty()) {
            AbstractC3145k.m39277a();
            AbstractC3145k.m39277a();
            m39279a(mo39470n, mo39472l, mo39471m, allEligibleWorkSpecsForScheduling);
        }
        return new ListenableWorker.AbstractC2980a.C2983c();
    }
}
