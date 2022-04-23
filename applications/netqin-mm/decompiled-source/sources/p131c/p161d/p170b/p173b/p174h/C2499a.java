package p131c.p161d.p170b.p173b.p174h;

import com.android.volley.Request;
import com.mopub.common.AdType;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
import p131c.p161d.p170b.p173b.C2493b;
import p131c.p161d.p170b.p173b.p176i.AbstractC2560f;
/* renamed from: c.d.b.b.h.a */
/* loaded from: classes-dex2jar.jar:c/d/b/b/h/a.class */
public final class C2499a implements AbstractC2560f {

    /* renamed from: c */
    public static final String f9479c = C2505e.m29637a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");

    /* renamed from: d */
    public static final String f9480d = C2505e.m29637a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");

    /* renamed from: e */
    public static final String f9481e = C2505e.m29637a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");

    /* renamed from: f */
    public static final Set<C2493b> f9482f = Collections.unmodifiableSet(new HashSet(Arrays.asList(C2493b.m29661a("proto"), C2493b.m29661a(AdType.STATIC_NATIVE))));

    /* renamed from: g */
    public static final C2499a f9483g = new C2499a(f9480d, f9481e);

    /* renamed from: a */
    public final String f9484a;

    /* renamed from: b */
    public final String f9485b;

    static {
        new C2499a(f9479c, null);
    }

    public C2499a(String str, String str2) {
        this.f9484a = str;
        this.f9485b = str2;
    }

    /* renamed from: a */
    public static C2499a m29655a(byte[] bArr) {
        String str = new String(bArr, Charset.forName(Request.DEFAULT_PARAMS_ENCODING));
        if (str.startsWith("1$")) {
            String[] split = str.substring(2).split(Pattern.quote("\\"), 2);
            if (split.length == 2) {
                String str2 = split[0];
                if (!str2.isEmpty()) {
                    String str3 = split[1];
                    String str4 = str3;
                    if (str3.isEmpty()) {
                        str4 = null;
                    }
                    return new C2499a(str2, str4);
                }
                throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
            }
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        throw new IllegalArgumentException("Version marker missing from extras");
    }

    @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2560f
    /* renamed from: a */
    public Set<C2493b> mo29549a() {
        return f9482f;
    }

    /* renamed from: b */
    public byte[] m29654b() {
        if (this.f9485b == null && this.f9484a == null) {
            return null;
        }
        String str = this.f9484a;
        String str2 = this.f9485b;
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        return String.format("%s%s%s%s", "1$", str, "\\", str3).getBytes(Charset.forName(Request.DEFAULT_PARAMS_ENCODING));
    }

    /* renamed from: c */
    public String m29653c() {
        return this.f9485b;
    }

    /* renamed from: d */
    public String m29652d() {
        return this.f9484a;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2559e
    public byte[] getExtras() {
        return m29654b();
    }

    @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2559e
    public String getName() {
        return "cct";
    }
}
