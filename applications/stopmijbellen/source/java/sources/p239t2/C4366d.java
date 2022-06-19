package p239t2;

import android.support.p012v4.media.C0082b;
import java.util.List;
import java.util.Objects;
/* renamed from: t2.d */
/* loaded from: classes-dex2jar.jar:t2/d.class */
public final class C4366d extends AbstractC4377j {

    /* renamed from: a */
    public final List<AbstractC4382m> f13640a;

    public C4366d(List<AbstractC4382m> list) {
        Objects.requireNonNull(list, "Null logRequests");
        this.f13640a = list;
    }

    @Override // p239t2.AbstractC4377j
    /* renamed from: a */
    public List<AbstractC4382m> mo996a() {
        return this.f13640a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4377j)) {
            return false;
        }
        return this.f13640a.equals(((AbstractC4377j) obj).mo996a());
    }

    public int hashCode() {
        return this.f13640a.hashCode() ^ 1000003;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("BatchedLogRequest{logRequests=");
        m8752j.append(this.f13640a);
        m8752j.append("}");
        return m8752j.toString();
    }
}
