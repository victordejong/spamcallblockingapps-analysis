package p193e.p194a.p1334w.p1336b.p1337c;

import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018��2\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u000e\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\f\u0010\u0004¨\u0006\u000f"}, d2 = {"Le/a/w/b/c/c;", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", AnalyticsConstants.PHONE, "referral_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.w.b.c.c */
/* loaded from: classes12-dex2jar.jar:e/a/w/b/c/c.class */
public final class C21182c {
    @b(AnalyticsConstants.PHONE)

    /* renamed from: a */
    private final String f59361a;

    /* renamed from: a */
    public final String m10164a() {
        return this.f59361a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C21182c) && l.a(this.f59361a, ((C21182c) obj).f59361a);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f59361a;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8618h(C22128a.m8728C("ReferralInviteResponse(phone="), this.f59361a, ")");
    }
}
