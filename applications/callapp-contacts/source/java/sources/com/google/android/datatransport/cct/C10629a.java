package com.google.android.datatransport.cct;

import com.google.android.datatransport.C10627b;
import com.google.android.datatransport.runtime.AbstractC10728f;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
/* renamed from: com.google.android.datatransport.cct.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a.class */
public final class C10629a implements AbstractC10728f {

    /* renamed from: a */
    static final String f34394a;

    /* renamed from: b */
    static final String f34395b;

    /* renamed from: c */
    public static final C10629a f34396c;

    /* renamed from: d */
    public static final C10629a f34397d;

    /* renamed from: g */
    private static final String f34398g;

    /* renamed from: h */
    private static final Set<C10627b> f34399h = Collections.unmodifiableSet(new HashSet(Arrays.asList(C10627b.m22610a("proto"), C10627b.m22610a("json"))));

    /* renamed from: e */
    final String f34400e;

    /* renamed from: f */
    final String f34401f;

    static {
        String m22523a = C10675e.m22523a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f34394a = m22523a;
        String m22523a2 = C10675e.m22523a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        f34395b = m22523a2;
        String m22523a3 = C10675e.m22523a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f34398g = m22523a3;
        f34396c = new C10629a(m22523a, null);
        f34397d = new C10629a(m22523a2, m22523a3);
    }

    public C10629a(String str, String str2) {
        this.f34400e = str;
        this.f34401f = str2;
    }

    /* renamed from: a */
    public static C10629a m22606a(byte[] bArr) {
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
            return new C10629a(str2, str4);
        }
        throw new IllegalArgumentException("Version marker missing from extras");
    }

    @Override // com.google.android.datatransport.runtime.AbstractC10726e
    /* renamed from: a */
    public final String mo22490a() {
        return "cct";
    }

    @Override // com.google.android.datatransport.runtime.AbstractC10726e
    /* renamed from: b */
    public final byte[] mo22489b() {
        String str = this.f34401f;
        if (str == null && this.f34400e == null) {
            return null;
        }
        String str2 = this.f34400e;
        String str3 = str;
        if (str == null) {
            str3 = "";
        }
        return String.format("%s%s%s%s", "1$", str2, "\\", str3).getBytes(Charset.forName("UTF-8"));
    }

    @Override // com.google.android.datatransport.runtime.AbstractC10728f
    /* renamed from: c */
    public final Set<C10627b> mo22486c() {
        return f34399h;
    }
}
