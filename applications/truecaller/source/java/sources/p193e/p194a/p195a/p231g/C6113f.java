package p193e.p194a.p195a.p231g;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.a.g.f */
/* loaded from: classes6-dex2jar.jar:e/a/a/g/f.class */
public final class C6113f {

    /* renamed from: a */
    public final int f20302a;

    /* renamed from: b */
    public final int f20303b;

    /* renamed from: c */
    public final int f20304c;

    public C6113f() {
        this(0, 0, 0);
    }

    public C6113f(int i, int i2, int i3) {
        this.f20302a = i;
        this.f20303b = i2;
        this.f20304c = i3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C6113f)) {
                return false;
            }
            C6113f c6113f = (C6113f) obj;
            return this.f20302a == c6113f.f20302a && this.f20303b == c6113f.f20303b && this.f20304c == c6113f.f20304c;
        }
        return true;
    }

    public int hashCode() {
        return (((this.f20302a * 31) + this.f20303b) * 31) + this.f20304c;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ConversationStats(scheduledMessagesCount=");
        m8728C.append(this.f20302a);
        m8728C.append(", historyEventsCount=");
        m8728C.append(this.f20303b);
        m8728C.append(", loadEventsMode=");
        return C22128a.m8697J2(m8728C, this.f20304c, ")");
    }
}
