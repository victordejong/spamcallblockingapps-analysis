package androidx.work.impl.model;

import android.arch.persistence.room.Dao;
import android.arch.persistence.room.Insert;
import android.arch.persistence.room.Query;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
@Dao
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/SystemIdInfoDao.class */
public interface SystemIdInfoDao {
    @Query("SELECT * FROM SystemIdInfo WHERE work_spec_id=:workSpecId")
    @Nullable
    SystemIdInfo getSystemIdInfo(@NonNull String str);

    @Insert(onConflict = 1)
    void insertSystemIdInfo(@NonNull SystemIdInfo systemIdInfo);

    @Query("DELETE FROM SystemIdInfo where work_spec_id=:workSpecId")
    void removeSystemIdInfo(@NonNull String str);
}
