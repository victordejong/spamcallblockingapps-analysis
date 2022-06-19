package androidx.work;

import java.util.Set;
import java.util.UUID;
/* renamed from: androidx.work.s */
/* loaded from: classes-dex2jar.jar:androidx/work/s.class */
public final class C1308s {

    /* renamed from: a */
    private UUID f4341a;

    /* renamed from: b */
    private EnumC1309a f4342b;

    /* renamed from: c */
    private C1133e f4343c;

    /* renamed from: d */
    private Set<String> f4344d;

    /* renamed from: e */
    private C1133e f4345e;

    /* renamed from: f */
    private int f4346f;

    /* renamed from: androidx.work.s$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/s$a.class */
    public enum EnumC1309a {
        ENQUEUED,
        RUNNING,
        SUCCEEDED,
        FAILED,
        BLOCKED,
        CANCELLED;

        /* renamed from: a */
        public boolean m17532a() {
            return this == SUCCEEDED || this == FAILED || this == CANCELLED;
        }
    }

    public boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else {
            z = false;
            if (obj != null) {
                z = false;
                if (getClass() == obj.getClass()) {
                    C1308s c1308s = (C1308s) obj;
                    z = false;
                    if (this.f4346f == c1308s.f4346f) {
                        z = false;
                        if (this.f4341a.equals(c1308s.f4341a)) {
                            z = false;
                            if (this.f4342b == c1308s.f4342b) {
                                z = false;
                                if (this.f4343c.equals(c1308s.f4343c)) {
                                    z = false;
                                    if (this.f4344d.equals(c1308s.f4344d)) {
                                        z = this.f4345e.equals(c1308s.f4345e);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return (((((((((this.f4341a.hashCode() * 31) + this.f4342b.hashCode()) * 31) + this.f4343c.hashCode()) * 31) + this.f4344d.hashCode()) * 31) + this.f4345e.hashCode()) * 31) + this.f4346f;
    }

    public String toString() {
        return "WorkInfo{mId='" + this.f4341a + "', mState=" + this.f4342b + ", mOutputData=" + this.f4343c + ", mTags=" + this.f4344d + ", mProgress=" + this.f4345e + '}';
    }
}
