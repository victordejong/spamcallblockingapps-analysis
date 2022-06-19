package p1727n3.p1834m0;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.m0.x */
/* loaded from: classes-dex2jar.jar:n3/m0/x.class */
public final class C26855x {

    /* renamed from: a */
    public UUID f75109a;

    /* renamed from: b */
    public EnumC26856a f75110b;

    /* renamed from: c */
    public C26829f f75111c;

    /* renamed from: d */
    public Set<String> f75112d;

    /* renamed from: e */
    public C26829f f75113e;

    /* renamed from: f */
    public int f75114f;

    /* renamed from: n3.m0.x$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/x$a.class */
    public enum EnumC26856a {
        ENQUEUED,
        RUNNING,
        SUCCEEDED,
        FAILED,
        BLOCKED,
        CANCELLED;

        /* renamed from: a */
        public boolean m1288a() {
            return this == SUCCEEDED || this == FAILED || this == CANCELLED;
        }
    }

    public C26855x(UUID uuid, EnumC26856a enumC26856a, C26829f c26829f, List<String> list, C26829f c26829f2, int i) {
        this.f75109a = uuid;
        this.f75110b = enumC26856a;
        this.f75111c = c26829f;
        this.f75112d = new HashSet(list);
        this.f75113e = c26829f2;
        this.f75114f = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C26855x.class != obj.getClass()) {
            return false;
        }
        C26855x c26855x = (C26855x) obj;
        if (this.f75114f != c26855x.f75114f || !this.f75109a.equals(c26855x.f75109a) || this.f75110b != c26855x.f75110b || !this.f75111c.equals(c26855x.f75111c) || !this.f75112d.equals(c26855x.f75112d)) {
            return false;
        }
        return this.f75113e.equals(c26855x.f75113e);
    }

    public int hashCode() {
        int hashCode = this.f75109a.hashCode();
        int hashCode2 = this.f75110b.hashCode();
        int hashCode3 = this.f75111c.hashCode();
        return ((this.f75113e.hashCode() + ((this.f75112d.hashCode() + ((hashCode3 + ((hashCode2 + (hashCode * 31)) * 31)) * 31)) * 31)) * 31) + this.f75114f;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("WorkInfo{mId='");
        m8728C.append(this.f75109a);
        m8728C.append('\'');
        m8728C.append(", mState=");
        m8728C.append(this.f75110b);
        m8728C.append(", mOutputData=");
        m8728C.append(this.f75111c);
        m8728C.append(", mTags=");
        m8728C.append(this.f75112d);
        m8728C.append(", mProgress=");
        m8728C.append(this.f75113e);
        m8728C.append('}');
        return m8728C.toString();
    }
}
