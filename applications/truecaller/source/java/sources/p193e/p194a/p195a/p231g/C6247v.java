package p193e.p194a.p195a.p231g;

import com.truecaller.messaging.data.types.Conversation;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.g.v */
/* loaded from: classes6-dex2jar.jar:e/a/a/g/v.class */
public final class C6247v {

    /* renamed from: a */
    public final List<Conversation> f21006a;

    /* renamed from: b */
    public final long f21007b;

    /* JADX WARN: Multi-variable type inference failed */
    public C6247v(List<? extends Conversation> list, long j) {
        l.e(list, "conversations");
        this.f21006a = list;
        this.f21007b = j;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C6247v)) {
                return false;
            }
            C6247v c6247v = (C6247v) obj;
            return l.a(this.f21006a, c6247v.f21006a) && this.f21007b == c6247v.f21007b;
        }
        return true;
    }

    public int hashCode() {
        List<Conversation> list = this.f21006a;
        return ((list != null ? list.hashCode() : 0) * 31) + C4876d.m34274a(this.f21007b);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PromotionalThreadsState(conversations=");
        m8728C.append(this.f21006a);
        m8728C.append(", latestUnreadDate=");
        return C22128a.m8693K2(m8728C, this.f21007b, ")");
    }
}
