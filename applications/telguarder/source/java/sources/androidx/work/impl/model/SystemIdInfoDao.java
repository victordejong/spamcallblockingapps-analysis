package androidx.work.impl.model;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/SystemIdInfoDao.class */
public interface SystemIdInfoDao {
    SystemIdInfo getSystemIdInfo(String str);

    void insertSystemIdInfo(SystemIdInfo systemIdInfo);

    void removeSystemIdInfo(String str);
}
