package androidx.work.impl.model;

import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/DependencyDao.class */
public interface DependencyDao {
    List<String> getDependentWorkIds(String str);

    List<String> getPrerequisites(String str);

    boolean hasCompletedAllPrerequisites(String str);

    boolean hasDependents(String str);

    void insertDependency(Dependency dependency);
}
