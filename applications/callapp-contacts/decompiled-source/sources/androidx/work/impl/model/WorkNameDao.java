package androidx.work.impl.model;

import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkNameDao.class */
public interface WorkNameDao {
    List<String> getNamesForWorkSpecId(String str);

    List<String> getWorkSpecIdsWithName(String str);

    void insert(WorkName workName);
}
