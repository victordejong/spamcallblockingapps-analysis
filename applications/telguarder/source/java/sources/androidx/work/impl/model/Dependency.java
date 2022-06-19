package androidx.work.impl.model;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/Dependency.class */
public class Dependency {
    public final String prerequisiteId;
    public final String workSpecId;

    public Dependency(String str, String str2) {
        this.workSpecId = str;
        this.prerequisiteId = str2;
    }
}
