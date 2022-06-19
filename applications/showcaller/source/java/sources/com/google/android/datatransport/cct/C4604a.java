package com.google.android.datatransport.cct;

import com.google.android.datatransport.C4602b;
import com.google.android.datatransport.p232h.AbstractC4662f;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
/* renamed from: com.google.android.datatransport.cct.a */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a.class */
public final class C4604a implements AbstractC4662f {

    /* renamed from: a */
    static final String f14012a;

    /* renamed from: b */
    static final String f14013b;

    /* renamed from: c */
    private static final String f14014c;

    /* renamed from: d */
    private static final Set<C4602b> f14015d = Collections.unmodifiableSet(new HashSet(Arrays.asList(C4602b.m22183b("proto"), C4602b.m22183b("json"))));

    /* renamed from: e */
    public static final C4604a f14016e;

    /* renamed from: f */
    public static final C4604a f14017f;

    /* renamed from: g */
    private final String f14018g;

    /* renamed from: h */
    private final String f14019h;

    static {
        String m22159a = C4610e.m22159a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f14012a = m22159a;
        String m22159a2 = C4610e.m22159a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        f14013b = m22159a2;
        String m22159a3 = C4610e.m22159a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f14014c = m22159a3;
        f14016e = new C4604a(m22159a, null);
        f14017f = new C4604a(m22159a2, m22159a3);
    }

    public C4604a(String str, String str2) {
        this.f14018g = str;
        this.f14019h = str2;
    }

    /* renamed from: d */
    public static C4604a m22176d(byte[] bArr) {
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
            return new C4604a(str2, str4);
        }
        throw new IllegalArgumentException("Version marker missing from extras");
    }

    @Override // com.google.android.datatransport.p232h.AbstractC4662f
    /* renamed from: a */
    public Set<C4602b> mo22068a() {
        return f14015d;
    }

    @Override // com.google.android.datatransport.p232h.AbstractC4661e
    /* renamed from: b */
    public byte[] mo22069b() {
        return m22177c();
    }

    /* renamed from: c */
    public byte[] m22177c() {
        String str = this.f14019h;
        if (str == null && this.f14018g == null) {
            return null;
        }
        String str2 = this.f14018g;
        String str3 = str;
        if (str == null) {
            str3 = "";
        }
        return String.format("%s%s%s%s", "1$", str2, "\\", str3).getBytes(Charset.forName("UTF-8"));
    }

    /* renamed from: e */
    public String m22175e() {
        return this.f14019h;
    }

    /* renamed from: f */
    public String m22174f() {
        return this.f14018g;
    }

    @Override // com.google.android.datatransport.p232h.AbstractC4661e
    public String getName() {
        return "cct";
    }
}
