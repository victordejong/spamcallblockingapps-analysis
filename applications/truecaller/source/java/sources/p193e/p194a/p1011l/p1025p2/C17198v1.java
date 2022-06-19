package p193e.p194a.p1011l.p1025p2;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.mopub.network.ImpressionData;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0015\b\u0086\b\u0018��2\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u000f\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u0004R\u001c\u0010\u0015\u001a\u00020\u00108\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0018\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0016\u0010\r\u001a\u0004\b\u0017\u0010\u0004R\u001c\u0010\u001e\u001a\u00020\u00198\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001c\u0010!\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001f\u0010\r\u001a\u0004\b \u0010\u0004R\u001c\u0010$\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\"\u0010\r\u001a\u0004\b#\u0010\u0004R\u001c\u0010'\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b%\u0010\r\u001a\u0004\b&\u0010\u0004R\u001c\u0010*\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b(\u0010\r\u001a\u0004\b)\u0010\u0004R\u001c\u0010-\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b+\u0010\r\u001a\u0004\b,\u0010\u0004¨\u0006."}, d2 = {"Le/a/l/p2/v1;", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "getItemId", "itemId", "Le/a/l/p2/u1;", "i", "Le/a/l/p2/u1;", "getNotes", "()Le/a/l/p2/u1;", "notes", "e", "getCountry", ImpressionData.COUNTRY, "", C22021b.f61237c, "J", "getAmount", "()J", AnalyticsConstants.AMOUNT, AbstractC2405c.f7629a, "getContact", AnalyticsConstants.CONTACT, "g", "getName", AnalyticsConstants.NAME, "h", "getState", "state", "f", "getEmail", AnalyticsConstants.EMAIL, "d", "getCurrency", ImpressionData.CURRENCY, "premium_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.p2.v1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/v1.class */
public final class C17198v1 {
    @b("itemId")

    /* renamed from: a */
    private final String f48252a;
    @b(AnalyticsConstants.AMOUNT)

    /* renamed from: b */
    private final long f48253b;
    @b(AnalyticsConstants.CONTACT)

    /* renamed from: c */
    private final String f48254c;
    @b(ImpressionData.CURRENCY)

    /* renamed from: d */
    private final String f48255d;
    @b(ImpressionData.COUNTRY)

    /* renamed from: e */
    private final String f48256e;
    @b(AnalyticsConstants.EMAIL)

    /* renamed from: f */
    private final String f48257f;
    @b(AnalyticsConstants.NAME)

    /* renamed from: g */
    private final String f48258g;
    @b("state")

    /* renamed from: h */
    private final String f48259h;
    @b("notes")

    /* renamed from: i */
    private final C17195u1 f48260i;

    public C17198v1(String str, long j, String str2, String str3, String str4, String str5, String str6, String str7, C17195u1 c17195u1, int i) {
        String str8 = (i & 128) != 0 ? "" : null;
        l.e(str, "itemId");
        l.e(str2, AnalyticsConstants.CONTACT);
        l.e(str3, ImpressionData.CURRENCY);
        l.e(str4, ImpressionData.COUNTRY);
        l.e(str5, AnalyticsConstants.EMAIL);
        l.e(str6, AnalyticsConstants.NAME);
        l.e(str8, "state");
        l.e(c17195u1, "notes");
        this.f48252a = str;
        this.f48253b = j;
        this.f48254c = str2;
        this.f48255d = str3;
        this.f48256e = str4;
        this.f48257f = str5;
        this.f48258g = str6;
        this.f48259h = str8;
        this.f48260i = c17195u1;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17198v1)) {
                return false;
            }
            C17198v1 c17198v1 = (C17198v1) obj;
            return l.a(this.f48252a, c17198v1.f48252a) && this.f48253b == c17198v1.f48253b && l.a(this.f48254c, c17198v1.f48254c) && l.a(this.f48255d, c17198v1.f48255d) && l.a(this.f48256e, c17198v1.f48256e) && l.a(this.f48257f, c17198v1.f48257f) && l.a(this.f48258g, c17198v1.f48258g) && l.a(this.f48259h, c17198v1.f48259h) && l.a(this.f48260i, c17198v1.f48260i);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f48252a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f48253b);
        String str2 = this.f48254c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f48255d;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f48256e;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f48257f;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.f48258g;
        int hashCode6 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.f48259h;
        int hashCode7 = str7 != null ? str7.hashCode() : 0;
        C17195u1 c17195u1 = this.f48260i;
        if (c17195u1 != null) {
            i = c17195u1.hashCode();
        }
        return (((((((((((((((hashCode * 31) + m34274a) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("WebOrderRequest(itemId=");
        m8728C.append(this.f48252a);
        m8728C.append(", amount=");
        m8728C.append(this.f48253b);
        m8728C.append(", contact=");
        m8728C.append(this.f48254c);
        m8728C.append(", currency=");
        m8728C.append(this.f48255d);
        m8728C.append(", country=");
        m8728C.append(this.f48256e);
        m8728C.append(", email=");
        m8728C.append(this.f48257f);
        m8728C.append(", name=");
        m8728C.append(this.f48258g);
        m8728C.append(", state=");
        m8728C.append(this.f48259h);
        m8728C.append(", notes=");
        m8728C.append(this.f48260i);
        m8728C.append(")");
        return m8728C.toString();
    }
}
