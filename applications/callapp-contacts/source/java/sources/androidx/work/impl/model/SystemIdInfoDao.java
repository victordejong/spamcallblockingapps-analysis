package androidx.work.impl.model;

import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/SystemIdInfoDao.class */
public interface SystemIdInfoDao {
    SystemIdInfo getSystemIdInfo(String str);

    List<String> getWorkSpecIds();

    void insertSystemIdInfo(SystemIdInfo systemIdInfo);

    void removeSystemIdInfo(String str);
}
