package androidx.work.impl.model;

import androidx.lifecycle.LiveData;
import androidx.sqlite.p082db.AbstractC2794d;
import androidx.work.impl.model.WorkSpec;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/RawWorkInfoDao.class */
public interface RawWorkInfoDao {
    List<WorkSpec.WorkInfoPojo> getWorkInfoPojos(AbstractC2794d abstractC2794d);

    LiveData<List<WorkSpec.WorkInfoPojo>> getWorkInfoPojosLiveData(AbstractC2794d abstractC2794d);
}
