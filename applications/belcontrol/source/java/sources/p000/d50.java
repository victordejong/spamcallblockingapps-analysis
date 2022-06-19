package p000;
/* renamed from: d50 */
/* loaded from: classes-dex2jar.jar:d50.class */
public enum d50 {
    ENQUEUED,
    RUNNING,
    SUCCEEDED,
    FAILED,
    BLOCKED,
    CANCELLED;

    /* renamed from: a */
    public boolean m2811a() {
        return this == SUCCEEDED || this == FAILED || this == CANCELLED;
    }
}
