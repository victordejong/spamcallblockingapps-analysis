package p229s2;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
import p029c4.C0821e;
import p218r2.C4184b;
import p250u2.AbstractC4461d;
/* renamed from: s2.a */
/* loaded from: classes-dex2jar.jar:s2/a.class */
public final class C4279a implements AbstractC4461d {

    /* renamed from: c */
    public static final String f13420c = C0821e.m7332m("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");

    /* renamed from: d */
    public static final Set<C4184b> f13421d = Collections.unmodifiableSet(new HashSet(Arrays.asList(new C4184b("proto"), new C4184b("json"))));

    /* renamed from: e */
    public static final C4279a f13422e = new C4279a(C0821e.m7332m("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg"), C0821e.m7332m("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK"));

    /* renamed from: a */
    public final String f13423a;

    /* renamed from: b */
    public final String f13424b;

    public C4279a(String str, String str2) {
        this.f13423a = str;
        this.f13424b = str2;
    }

    /* renamed from: a */
    public static C4279a m1119a(byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (str.startsWith("1$")) {
            String[] split = str.substring(2).split(Pattern.quote("\\"), 2);
            if (split.length != 2) {
                throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
            }
            String str2 = split[0];
            if (str2.isEmpty()) {
                throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
            }
            String str3 = split[1];
            String str4 = str3;
            if (str3.isEmpty()) {
                str4 = null;
            }
            return new C4279a(str2, str4);
        }
        throw new IllegalArgumentException("Version marker missing from extras");
    }

    /* renamed from: b */
    public byte[] m1118b() {
        byte[] bArr;
        String str = this.f13424b;
        if (str == null && this.f13423a == null) {
            bArr = null;
        } else {
            String str2 = this.f13423a;
            String str3 = str;
            if (str == null) {
                str3 = "";
            }
            bArr = String.format("%s%s%s%s", "1$", str2, "\\", str3).getBytes(Charset.forName("UTF-8"));
        }
        return bArr;
    }
}
