package p193e.p194a.p1011l.p1033v2.p1037i.p1040c;

import com.truecaller.premium.C4334R;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1023n2.C16993f;
import s1.z.c.l;
/* renamed from: e.a.l.v2.i.c.a */
/* loaded from: classes12-dex2jar.jar:e/a/l/v2/i/c/a.class */
public final class C17290a {

    /* renamed from: a */
    public final String f48509a;

    /* renamed from: b */
    public final String f48510b;

    /* renamed from: c */
    public final String f48511c;

    /* renamed from: d */
    public final String f48512d;

    /* renamed from: e */
    public final String f48513e;

    /* renamed from: f */
    public final String f48514f;

    /* renamed from: g */
    public final boolean f48515g;

    /* renamed from: h */
    public final Integer f48516h;

    /* renamed from: i */
    public final int f48517i;

    /* renamed from: j */
    public final int f48518j;

    /* renamed from: k */
    public final int f48519k;

    /* renamed from: l */
    public final int f48520l;

    /* renamed from: m */
    public final C16993f f48521m;

    public C17290a(String str, String str2, String str3, String str4, String str5, String str6, boolean z, Integer num, int i, int i2, int i3, int i4, C16993f c16993f, int i5) {
        str4 = (i5 & 8) != 0 ? null : str4;
        str5 = (i5 & 16) != 0 ? null : str5;
        z = (i5 & 64) != 0 ? true : z;
        num = (i5 & 128) != 0 ? null : num;
        i = (i5 & 256) != 0 ? C4334R.C4335drawable.background_subscription_offer_button_selector : i;
        i2 = (i5 & 512) != 0 ? C4334R.C4335drawable.background_inner_subscription_offer_button_selector : i2;
        i3 = (i5 & 1024) != 0 ? C4334R.C4335drawable.background_subscription_offer_button_subtext_selector : i3;
        i4 = (i5 & 2048) != 0 ? C4334R.color.subscription_offer_button_subtext_default : i4;
        l.e(str, "offerDuration");
        l.e(str2, "offerPrice");
        l.e(str3, "offerPricePerMonth");
        l.e(str6, "actionText");
        l.e(c16993f, "subscription");
        this.f48509a = str;
        this.f48510b = str2;
        this.f48511c = str3;
        this.f48512d = str4;
        this.f48513e = str5;
        this.f48514f = str6;
        this.f48515g = z;
        this.f48516h = num;
        this.f48517i = i;
        this.f48518j = i2;
        this.f48519k = i3;
        this.f48520l = i4;
        this.f48521m = c16993f;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17290a)) {
                return false;
            }
            C17290a c17290a = (C17290a) obj;
            return l.a(this.f48509a, c17290a.f48509a) && l.a(this.f48510b, c17290a.f48510b) && l.a(this.f48511c, c17290a.f48511c) && l.a(this.f48512d, c17290a.f48512d) && l.a(this.f48513e, c17290a.f48513e) && l.a(this.f48514f, c17290a.f48514f) && this.f48515g == c17290a.f48515g && l.a(this.f48516h, c17290a.f48516h) && this.f48517i == c17290a.f48517i && this.f48518j == c17290a.f48518j && this.f48519k == c17290a.f48519k && this.f48520l == c17290a.f48520l && l.a(this.f48521m, c17290a.f48521m);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f48509a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f48510b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f48511c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f48512d;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f48513e;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.f48514f;
        int hashCode6 = str6 != null ? str6.hashCode() : 0;
        boolean z = this.f48515g;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        Integer num = this.f48516h;
        int hashCode7 = num != null ? num.hashCode() : 0;
        int i3 = this.f48517i;
        int i4 = this.f48518j;
        int i5 = this.f48519k;
        int i6 = this.f48520l;
        C16993f c16993f = this.f48521m;
        if (c16993f != null) {
            i = c16993f.hashCode();
        }
        return (((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i2) * 31) + hashCode7) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SubscriptionOffer(offerDuration=");
        m8728C.append(this.f48509a);
        m8728C.append(", offerPrice=");
        m8728C.append(this.f48510b);
        m8728C.append(", offerPricePerMonth=");
        m8728C.append(this.f48511c);
        m8728C.append(", offerHeading=");
        m8728C.append(this.f48512d);
        m8728C.append(", substituteText=");
        m8728C.append(this.f48513e);
        m8728C.append(", actionText=");
        m8728C.append(this.f48514f);
        m8728C.append(", isAvailable=");
        m8728C.append(this.f48515g);
        m8728C.append(", offerPriceFontColor=");
        m8728C.append(this.f48516h);
        m8728C.append(", outerBackground=");
        m8728C.append(this.f48517i);
        m8728C.append(", innerBackground=");
        m8728C.append(this.f48518j);
        m8728C.append(", subtextBackground=");
        m8728C.append(this.f48519k);
        m8728C.append(", subtextFontColor=");
        m8728C.append(this.f48520l);
        m8728C.append(", subscription=");
        m8728C.append(this.f48521m);
        m8728C.append(")");
        return m8728C.toString();
    }
}
