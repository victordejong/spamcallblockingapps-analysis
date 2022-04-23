package androidx.work.impl.model;

import androidx.lifecycle.LiveData;
import androidx.work.d;
import androidx.work.impl.model.WorkSpec;
import androidx.work.t;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkSpecDao.class */
public interface WorkSpecDao {
    void delete(String str);

    List<WorkSpec> getAllEligibleWorkSpecsForScheduling(int i);

    List<String> getAllUnfinishedWork();

    List<String> getAllWorkSpecIds();

    LiveData<List<String>> getAllWorkSpecIdsLiveData();

    List<WorkSpec> getEligibleWorkForScheduling(int i);

    List<d> getInputsFromPrerequisites(String str);

    List<WorkSpec> getRecentlyCompletedWork(long j);

    List<WorkSpec> getRunningWork();

    LiveData<Long> getScheduleRequestedAtLiveData(String str);

    List<WorkSpec> getScheduledWork();

    t.a getState(String str);

    List<String> getUnfinishedWorkWithName(String str);

    List<String> getUnfinishedWorkWithTag(String str);

    WorkSpec getWorkSpec(String str);

    List<WorkSpec.IdAndState> getWorkSpecIdAndStatesForName(String str);

    WorkSpec[] getWorkSpecs(List<String> list);

    WorkSpec.WorkInfoPojo getWorkStatusPojoForId(String str);

    List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForIds(List<String> list);

    List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForName(String str);

    List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForTag(String str);

    LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForIds(List<String> list);

    LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForName(String str);

    LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForTag(String str);

    int incrementWorkSpecRunAttemptCount(String str);

    void insertWorkSpec(WorkSpec workSpec);

    int markWorkSpecScheduled(String str, long j);

    void pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast();

    int resetScheduledState();

    int resetWorkSpecRunAttemptCount(String str);

    void setOutput(String str, d dVar);

    void setPeriodStartTime(String str, long j);

    int setState(t.a aVar, String... strArr);
}
