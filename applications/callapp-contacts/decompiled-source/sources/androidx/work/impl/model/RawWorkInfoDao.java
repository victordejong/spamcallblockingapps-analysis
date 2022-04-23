package androidx.work.impl.model;

import androidx.lifecycle.LiveData;
import androidx.sqlite.db.d;
import androidx.work.impl.model.WorkSpec;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/RawWorkInfoDao.class */
public interface RawWorkInfoDao {
    List<WorkSpec.WorkInfoPojo> getWorkInfoPojos(d dVar);

    LiveData<List<WorkSpec.WorkInfoPojo>> getWorkInfoPojosLiveData(d dVar);
}
