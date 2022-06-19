package p186o1;
/* renamed from: o1.m */
/* loaded from: classes-dex2jar.jar:o1/m.class */
public enum EnumC3836m {
    ENQUEUED,
    RUNNING,
    SUCCEEDED,
    FAILED,
    BLOCKED,
    CANCELLED;

    /* renamed from: a */
    public boolean m1768a() {
        return this == SUCCEEDED || this == FAILED || this == CANCELLED;
    }
}
