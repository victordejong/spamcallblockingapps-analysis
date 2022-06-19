package androidx.work.impl.model;

import androidx.work.C2992d;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkProgressDao.class */
public interface WorkProgressDao {
    void delete(String str);

    void deleteAll();

    C2992d getProgressForWorkSpecId(String str);

    List<C2992d> getProgressForWorkSpecIds(List<String> list);

    void insert(WorkProgress workProgress);
}
