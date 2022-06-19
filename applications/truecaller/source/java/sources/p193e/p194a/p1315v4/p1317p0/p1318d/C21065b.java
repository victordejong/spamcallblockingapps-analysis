package p193e.p194a.p1315v4.p1317p0.p1318d;

import java.util.List;
import java.util.Map;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17562h1;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.v4.p0.d.b */
/* loaded from: classes12-dex2jar.jar:e/a/v4/p0/d/b.class */
public final class C21065b implements AbstractC19549v {

    /* renamed from: a */
    public final String f59076a;

    /* renamed from: b */
    public final String f59077b;

    /* renamed from: c */
    public final String f59078c;

    /* renamed from: d */
    public final String f59079d;

    /* renamed from: e */
    public final String f59080e;

    /* renamed from: f */
    public final String f59081f;

    /* renamed from: g */
    public final String f59082g;

    /* renamed from: h */
    public final String f59083h;

    /* renamed from: i */
    public final List<String> f59084i;

    /* renamed from: j */
    public final Map<CharSequence, CharSequence> f59085j;

    /* JADX WARN: Multi-variable type inference failed */
    public C21065b(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, List<String> list, Map<CharSequence, ? extends CharSequence> map) {
        l.e(str, "sessionId");
        l.e(str2, "platform");
        l.e(str3, "integrationType");
        l.e(str4, "sdkVersion");
        l.e(str5, "sdkVariant");
        l.e(str6, "sdkVariantVersion");
        l.e(str7, "requestedOAuthState");
        l.e(str8, "clientId");
        l.e(list, "requestedScopes");
        l.e(map, "customizations");
        this.f59076a = str;
        this.f59077b = str2;
        this.f59078c = str3;
        this.f59079d = str4;
        this.f59080e = str5;
        this.f59081f = str6;
        this.f59082g = str7;
        this.f59083h = str8;
        this.f59084i = list;
        this.f59085j = map;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Schema schema = C17562h1.f49400m;
        C17562h1.C17564b c17564b = new C17562h1.C17564b(null);
        String str = this.f59076a;
        c17564b.validate(c17564b.fields()[2], str);
        c17564b.f49416a = str;
        c17564b.fieldSetFlags()[2] = true;
        String str2 = this.f59077b;
        c17564b.validate(c17564b.fields()[3], str2);
        c17564b.f49417b = str2;
        c17564b.fieldSetFlags()[3] = true;
        String str3 = this.f59078c;
        c17564b.validate(c17564b.fields()[7], str3);
        c17564b.f49421f = str3;
        c17564b.fieldSetFlags()[7] = true;
        String str4 = this.f59079d;
        c17564b.validate(c17564b.fields()[5], str4);
        c17564b.f49419d = str4;
        c17564b.fieldSetFlags()[5] = true;
        String str5 = this.f59080e;
        c17564b.validate(c17564b.fields()[4], str5);
        c17564b.f49418c = str5;
        c17564b.fieldSetFlags()[4] = true;
        String str6 = this.f59081f;
        c17564b.validate(c17564b.fields()[6], str6);
        c17564b.f49420e = str6;
        c17564b.fieldSetFlags()[6] = true;
        String str7 = this.f59082g;
        c17564b.validate(c17564b.fields()[10], str7);
        c17564b.f49424i = str7;
        c17564b.fieldSetFlags()[10] = true;
        String str8 = this.f59083h;
        c17564b.validate(c17564b.fields()[8], str8);
        c17564b.f49422g = str8;
        c17564b.fieldSetFlags()[8] = true;
        List<String> list = this.f59084i;
        c17564b.validate(c17564b.fields()[9], list);
        c17564b.f49423h = list;
        c17564b.fieldSetFlags()[9] = true;
        Map<CharSequence, CharSequence> map = this.f59085j;
        c17564b.validate(c17564b.fields()[11], map);
        c17564b.f49425j = map;
        c17564b.fieldSetFlags()[11] = true;
        C17562h1 build = c17564b.build();
        l.d(build, "AppOAuthConsentScreenReq…ons)\n            .build()");
        return new AbstractC19580x.C19584d(build);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C21065b)) {
                return false;
            }
            C21065b c21065b = (C21065b) obj;
            return l.a(this.f59076a, c21065b.f59076a) && l.a(this.f59077b, c21065b.f59077b) && l.a(this.f59078c, c21065b.f59078c) && l.a(this.f59079d, c21065b.f59079d) && l.a(this.f59080e, c21065b.f59080e) && l.a(this.f59081f, c21065b.f59081f) && l.a(this.f59082g, c21065b.f59082g) && l.a(this.f59083h, c21065b.f59083h) && l.a(this.f59084i, c21065b.f59084i) && l.a(this.f59085j, c21065b.f59085j);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f59076a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f59077b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f59078c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f59079d;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f59080e;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.f59081f;
        int hashCode6 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.f59082g;
        int hashCode7 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.f59083h;
        int hashCode8 = str8 != null ? str8.hashCode() : 0;
        List<String> list = this.f59084i;
        int hashCode9 = list != null ? list.hashCode() : 0;
        Map<CharSequence, CharSequence> map = this.f59085j;
        if (map != null) {
            i = map.hashCode();
        }
        return (((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ConsentScreenRequestedEvent(sessionId=");
        m8728C.append(this.f59076a);
        m8728C.append(", platform=");
        m8728C.append(this.f59077b);
        m8728C.append(", integrationType=");
        m8728C.append(this.f59078c);
        m8728C.append(", sdkVersion=");
        m8728C.append(this.f59079d);
        m8728C.append(", sdkVariant=");
        m8728C.append(this.f59080e);
        m8728C.append(", sdkVariantVersion=");
        m8728C.append(this.f59081f);
        m8728C.append(", requestedOAuthState=");
        m8728C.append(this.f59082g);
        m8728C.append(", clientId=");
        m8728C.append(this.f59083h);
        m8728C.append(", requestedScopes=");
        m8728C.append(this.f59084i);
        m8728C.append(", customizations=");
        m8728C.append(this.f59085j);
        m8728C.append(")");
        return m8728C.toString();
    }
}
