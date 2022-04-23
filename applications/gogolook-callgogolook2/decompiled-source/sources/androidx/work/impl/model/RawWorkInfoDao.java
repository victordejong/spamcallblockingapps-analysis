package androidx.work.impl.model;

import androidx.annotation.NonNull;
import androidx.lifecycle.LiveData;
import androidx.room.Dao;
import androidx.room.RawQuery;
import androidx.sqlite.p008db.SupportSQLiteQuery;
import androidx.work.impl.model.WorkSpec;
import java.util.List;
@Dao
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/RawWorkInfoDao.class */
public interface RawWorkInfoDao {
    @NonNull
    @RawQuery
    List<WorkSpec.WorkInfoPojo> getWorkInfoPojos(@NonNull SupportSQLiteQuery supportSQLiteQuery);

    @NonNull
    @RawQuery
    LiveData<List<WorkSpec.WorkInfoPojo>> getWorkInfoPojosLiveData(@NonNull SupportSQLiteQuery supportSQLiteQuery);
}
