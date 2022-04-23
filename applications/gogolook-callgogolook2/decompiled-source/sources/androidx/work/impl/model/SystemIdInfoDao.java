package androidx.work.impl.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
@Dao
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/SystemIdInfoDao.class */
public interface SystemIdInfoDao {
    @Nullable
    @Query("SELECT * FROM SystemIdInfo WHERE work_spec_id=:workSpecId")
    SystemIdInfo getSystemIdInfo(@NonNull String str);

    @Insert(onConflict = 1)
    void insertSystemIdInfo(@NonNull SystemIdInfo systemIdInfo);

    @Query("DELETE FROM SystemIdInfo where work_spec_id=:workSpecId")
    void removeSystemIdInfo(@NonNull String str);
}
