package p193e.p1577m.p1578a.p1580b.p1581i;

import com.tenor.android.core.constant.StringConstant;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1580b.C23987b;
import p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24149l;
/* renamed from: e.m.a.b.i.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/i/c.class */
public final class C23996c implements AbstractC24149l {

    /* renamed from: d */
    public static final String f66472d;

    /* renamed from: e */
    public static final String f66473e;

    /* renamed from: g */
    public static final C23996c f66475g;

    /* renamed from: a */
    public final String f66476a;

    /* renamed from: b */
    public final String f66477b;

    /* renamed from: c */
    public static final String f66471c = C26232y.m2352g1("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");

    /* renamed from: f */
    public static final Set<C23987b> f66474f = Collections.unmodifiableSet(new HashSet(Arrays.asList(new C23987b("proto"), new C23987b("json"))));

    static {
        String m2352g1 = C26232y.m2352g1("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        f66472d = m2352g1;
        String m2352g12 = C26232y.m2352g1("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f66473e = m2352g12;
        f66475g = new C23996c(m2352g1, m2352g12);
    }

    public C23996c(String str, String str2) {
        this.f66476a = str;
        this.f66477b = str2;
    }

    /* renamed from: b */
    public static C23996c m5630b(byte[] bArr) {
        String str = new String(bArr, Charset.forName(StringConstant.UTF8));
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
            return new C23996c(str2, str4);
        }
        throw new IllegalArgumentException("Version marker missing from extras");
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24149l
    /* renamed from: a */
    public Set<C23987b> mo5546a() {
        return f66474f;
    }

    /* renamed from: c */
    public byte[] m5629c() {
        byte[] bArr;
        String str = this.f66477b;
        if (str == null && this.f66476a == null) {
            bArr = null;
        } else {
            String str2 = this.f66476a;
            String str3 = str;
            if (str == null) {
                str3 = "";
            }
            bArr = String.format("%s%s%s%s", "1$", str2, "\\", str3).getBytes(Charset.forName(StringConstant.UTF8));
        }
        return bArr;
    }
}
