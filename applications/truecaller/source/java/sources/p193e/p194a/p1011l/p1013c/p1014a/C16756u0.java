package p193e.p194a.p1011l.p1013c.p1014a;

import com.huawei.hms.opendevice.AbstractC2405c;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018��2\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u000f\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u0004R\u001c\u0010\u0011\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0010\u0010\r\u001a\u0004\b\f\u0010\u0004R\u001c\u0010\u0013\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0012\u0010\r\u001a\u0004\b\u0012\u0010\u0004R\u001c\u0010\u0014\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\r\u001a\u0004\b\u0010\u0010\u0004¨\u0006\u0015"}, d2 = {"Le/a/l/c/a/u0;", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", C22021b.f61237c, "Ljava/lang/String;", "d", "timeSavedEveryWeekGlobally", "a", "moreSpamCallsAutoBlocked", AbstractC2405c.f7629a, "moreTelemarketersAutoBlocked", "lessNeighborSpoofingCalls", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.c.a.u0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/u0.class */
public final class C16756u0 {
    @b("moreSpamCallsAutoBlocked")

    /* renamed from: a */
    private final String f46976a;
    @b("timeSavedEveryWeekGlobally")

    /* renamed from: b */
    private final String f46977b;
    @b("moreTelemarketersAutoBlocked")

    /* renamed from: c */
    private final String f46978c;
    @b("lessNeighborSpoofingCalls")

    /* renamed from: d */
    private final String f46979d;

    /* renamed from: a */
    public final String m17065a() {
        return this.f46979d;
    }

    /* renamed from: b */
    public final String m17064b() {
        return this.f46976a;
    }

    /* renamed from: c */
    public final String m17063c() {
        return this.f46978c;
    }

    /* renamed from: d */
    public final String m17062d() {
        return this.f46977b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16756u0)) {
                return false;
            }
            C16756u0 c16756u0 = (C16756u0) obj;
            return l.a(this.f46976a, c16756u0.f46976a) && l.a(this.f46977b, c16756u0.f46977b) && l.a(this.f46978c, c16756u0.f46978c) && l.a(this.f46979d, c16756u0.f46979d);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f46976a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f46977b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f46978c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f46979d;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PremiumSpamStats(moreSpamCallsAutoBlocked=");
        m8728C.append(this.f46976a);
        m8728C.append(", timeSavedEveryWeekGlobally=");
        m8728C.append(this.f46977b);
        m8728C.append(", moreTelemarketersAutoBlocked=");
        m8728C.append(this.f46978c);
        m8728C.append(", lessNeighborSpoofingCalls=");
        return C22128a.m8618h(m8728C, this.f46979d, ")");
    }
}
