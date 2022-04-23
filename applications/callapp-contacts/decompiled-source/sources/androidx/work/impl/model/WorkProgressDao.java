package androidx.work.impl.model;

import androidx.work.d;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkProgressDao.class */
public interface WorkProgressDao {
    void delete(String str);

    void deleteAll();

    d getProgressForWorkSpecId(String str);

    List<d> getProgressForWorkSpecIds(List<String> list);

    void insert(WorkProgress workProgress);
}
