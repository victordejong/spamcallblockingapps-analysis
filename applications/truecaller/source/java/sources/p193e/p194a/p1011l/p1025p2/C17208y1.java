package p193e.p194a.p1011l.p1025p2;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.mopub.network.ImpressionData;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u001c\b\u0086\b\u0018��2\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u0011\u001a\u00020\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0014\u001a\u00020\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u000e\u001a\u0004\b\u0013\u0010\u0010R\u001c\u0010\u0017\u001a\u00020\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u000e\u001a\u0004\b\u0016\u0010\u0010R\u001c\u0010\u0019\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0018\u001a\u0004\b\r\u0010\u0004R\u001c\u0010\u001c\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u0018\u001a\u0004\b\u001b\u0010\u0004R\u001c\u0010\u001f\u001a\u00020\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u000e\u001a\u0004\b\u001e\u0010\u0010R\u001c\u0010\"\u001a\u00020\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b \u0010\u000e\u001a\u0004\b!\u0010\u0010R\u001c\u0010$\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b#\u0010\u0018\u001a\u0004\b#\u0010\u0004R\u001c\u0010'\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b%\u0010\u0018\u001a\u0004\b&\u0010\u0004¨\u0006("}, d2 = {"Le/a/l/p2/y1;", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "", AbstractC2405c.f7629a, "J", "a", "()J", AnalyticsConstants.AMOUNT, "e", "getAmountDue", "amountDue", "i", "getCreatedAt", "createdAt", "Ljava/lang/String;", "id", "g", "getStatus", UpdateKey.STATUS, "h", "getAttempts", "attempts", "d", "getAmountPaid", "amountPaid", C22021b.f61237c, "entity", "f", "getCurrency", ImpressionData.CURRENCY, "premium_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.p2.y1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/y1.class */
public final class C17208y1 {
    @b("id")

    /* renamed from: a */
    private final String f48319a;
    @b("entity")

    /* renamed from: b */
    private final String f48320b;
    @b(AnalyticsConstants.AMOUNT)

    /* renamed from: c */
    private final long f48321c;
    @b("amount_paid")

    /* renamed from: d */
    private final long f48322d;
    @b("amount_due")

    /* renamed from: e */
    private final long f48323e;
    @b(ImpressionData.CURRENCY)

    /* renamed from: f */
    private final String f48324f;
    @b(UpdateKey.STATUS)

    /* renamed from: g */
    private final String f48325g;
    @b("attempts")

    /* renamed from: h */
    private final long f48326h;
    @b("created_at")

    /* renamed from: i */
    private final long f48327i;

    /* renamed from: a */
    public final long m16373a() {
        return this.f48321c;
    }

    /* renamed from: b */
    public final String m16372b() {
        return this.f48320b;
    }

    /* renamed from: c */
    public final String m16371c() {
        return this.f48319a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17208y1)) {
                return false;
            }
            C17208y1 c17208y1 = (C17208y1) obj;
            return l.a(this.f48319a, c17208y1.f48319a) && l.a(this.f48320b, c17208y1.f48320b) && this.f48321c == c17208y1.f48321c && this.f48322d == c17208y1.f48322d && this.f48323e == c17208y1.f48323e && l.a(this.f48324f, c17208y1.f48324f) && l.a(this.f48325g, c17208y1.f48325g) && this.f48326h == c17208y1.f48326h && this.f48327i == c17208y1.f48327i;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f48319a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f48320b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f48321c);
        int m34274a2 = C4876d.m34274a(this.f48322d);
        int m34274a3 = C4876d.m34274a(this.f48323e);
        String str3 = this.f48324f;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f48325g;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((((((((((((hashCode * 31) + hashCode2) * 31) + m34274a) * 31) + m34274a2) * 31) + m34274a3) * 31) + hashCode3) * 31) + i) * 31) + C4876d.m34274a(this.f48326h)) * 31) + C4876d.m34274a(this.f48327i);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("WebPurchaseOrder(id=");
        m8728C.append(this.f48319a);
        m8728C.append(", entity=");
        m8728C.append(this.f48320b);
        m8728C.append(", amount=");
        m8728C.append(this.f48321c);
        m8728C.append(", amountPaid=");
        m8728C.append(this.f48322d);
        m8728C.append(", amountDue=");
        m8728C.append(this.f48323e);
        m8728C.append(", currency=");
        m8728C.append(this.f48324f);
        m8728C.append(", status=");
        m8728C.append(this.f48325g);
        m8728C.append(", attempts=");
        m8728C.append(this.f48326h);
        m8728C.append(", createdAt=");
        return C22128a.m8693K2(m8728C, this.f48327i, ")");
    }
}
