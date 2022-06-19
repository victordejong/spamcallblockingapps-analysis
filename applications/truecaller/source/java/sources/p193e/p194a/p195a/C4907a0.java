package p193e.p194a.p195a;

import android.net.Uri;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.a0 */
/* loaded from: classes10-dex2jar.jar:e/a/a/a0.class */
public final class C4907a0 {

    /* renamed from: a */
    public final Uri f16650a;

    /* renamed from: b */
    public final String f16651b;

    /* renamed from: c */
    public final String f16652c;

    /* renamed from: d */
    public final Integer f16653d;

    /* renamed from: e */
    public final String f16654e;

    /* renamed from: f */
    public final String f16655f;

    /* renamed from: g */
    public final Integer f16656g;

    /* renamed from: h */
    public final Uri f16657h;

    /* renamed from: i */
    public final String f16658i;

    /* renamed from: j */
    public final String f16659j;

    /* renamed from: k */
    public final Double f16660k;

    /* renamed from: l */
    public final Double f16661l;

    public C4907a0(Uri uri, String str, String str2, Integer num, String str3, String str4, Integer num2, Uri uri2, String str5, String str6, Double d, Double d2, int i) {
        str = (i & 2) != 0 ? null : str;
        str2 = (i & 4) != 0 ? null : str2;
        num = (i & 8) != 0 ? -1 : num;
        str3 = (i & 16) != 0 ? null : str3;
        str4 = (i & 32) != 0 ? null : str4;
        num2 = (i & 64) != 0 ? -1 : num2;
        uri2 = (i & 128) != 0 ? null : uri2;
        str5 = (i & 256) != 0 ? null : str5;
        str6 = (i & 512) != 0 ? null : str6;
        d = (i & 1024) != 0 ? null : d;
        d2 = (i & 2048) != 0 ? null : d2;
        l.e(uri, "uri");
        this.f16650a = uri;
        this.f16651b = str;
        this.f16652c = str2;
        this.f16653d = num;
        this.f16654e = str3;
        this.f16655f = str4;
        this.f16656g = num2;
        this.f16657h = uri2;
        this.f16658i = str5;
        this.f16659j = str6;
        this.f16660k = d;
        this.f16661l = d2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C4907a0)) {
                return false;
            }
            C4907a0 c4907a0 = (C4907a0) obj;
            return l.a(this.f16650a, c4907a0.f16650a) && l.a(this.f16651b, c4907a0.f16651b) && l.a(this.f16652c, c4907a0.f16652c) && l.a(this.f16653d, c4907a0.f16653d) && l.a(this.f16654e, c4907a0.f16654e) && l.a(this.f16655f, c4907a0.f16655f) && l.a(this.f16656g, c4907a0.f16656g) && l.a(this.f16657h, c4907a0.f16657h) && l.a(this.f16658i, c4907a0.f16658i) && l.a(this.f16659j, c4907a0.f16659j) && l.a(this.f16660k, c4907a0.f16660k) && l.a(this.f16661l, c4907a0.f16661l);
        }
        return true;
    }

    public int hashCode() {
        Uri uri = this.f16650a;
        int i = 0;
        int hashCode = uri != null ? uri.hashCode() : 0;
        String str = this.f16651b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f16652c;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        Integer num = this.f16653d;
        int hashCode4 = num != null ? num.hashCode() : 0;
        String str3 = this.f16654e;
        int hashCode5 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f16655f;
        int hashCode6 = str4 != null ? str4.hashCode() : 0;
        Integer num2 = this.f16656g;
        int hashCode7 = num2 != null ? num2.hashCode() : 0;
        Uri uri2 = this.f16657h;
        int hashCode8 = uri2 != null ? uri2.hashCode() : 0;
        String str5 = this.f16658i;
        int hashCode9 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.f16659j;
        int hashCode10 = str6 != null ? str6.hashCode() : 0;
        Double d = this.f16660k;
        int hashCode11 = d != null ? d.hashCode() : 0;
        Double d2 = this.f16661l;
        if (d2 != null) {
            i = d2.hashCode();
        }
        return (((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MediaAttachRequest(uri=");
        m8728C.append(this.f16650a);
        m8728C.append(", mimeType=");
        m8728C.append(this.f16651b);
        m8728C.append(", sourceUrl=");
        m8728C.append(this.f16652c);
        m8728C.append(", previewPosition=");
        m8728C.append(this.f16653d);
        m8728C.append(", fileName=");
        m8728C.append(this.f16654e);
        m8728C.append(", contactName=");
        m8728C.append(this.f16655f);
        m8728C.append(", contactsCount=");
        m8728C.append(this.f16656g);
        m8728C.append(", thumbnail=");
        m8728C.append(this.f16657h);
        m8728C.append(", description=");
        m8728C.append(this.f16658i);
        m8728C.append(", address=");
        m8728C.append(this.f16659j);
        m8728C.append(", latitude=");
        m8728C.append(this.f16660k);
        m8728C.append(", longitude=");
        m8728C.append(this.f16661l);
        m8728C.append(")");
        return m8728C.toString();
    }
}
