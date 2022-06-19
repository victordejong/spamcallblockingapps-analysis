package p193e.p194a.p195a.p244k.p245a;

import com.razorpay.AnalyticsConstants;
import com.truecaller.api.services.messenger.p138v1.models.Peer;
import com.truecaller.api.services.messenger.p138v1.models.UserInfo;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.v1 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/v1.class */
public final class C6638v1 {

    /* renamed from: a */
    public final UserInfo f21914a;

    /* renamed from: b */
    public final Peer.User f21915b;

    public C6638v1(UserInfo userInfo, Peer.User user) {
        l.e(userInfo, "userInfo");
        l.e(user, AnalyticsConstants.SENDER);
        this.f21914a = userInfo;
        this.f21915b = user;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C6638v1)) {
                return false;
            }
            C6638v1 c6638v1 = (C6638v1) obj;
            return l.a(this.f21914a, c6638v1.f21914a) && l.a(this.f21915b, c6638v1.f21915b);
        }
        return true;
    }

    public int hashCode() {
        UserInfo userInfo = this.f21914a;
        int i = 0;
        int hashCode = userInfo != null ? userInfo.hashCode() : 0;
        Peer.User user = this.f21915b;
        if (user != null) {
            i = user.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SenderInfo(userInfo=");
        m8728C.append(this.f21914a);
        m8728C.append(", sender=");
        m8728C.append(this.f21915b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
