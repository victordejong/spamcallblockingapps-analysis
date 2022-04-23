package com.google.android.datatransport.cct;

import com.google.android.datatransport.b;
import com.google.android.datatransport.runtime.f;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a.class */
public final class a implements f {

    /* renamed from: a  reason: collision with root package name */
    static final String f20314a;

    /* renamed from: b  reason: collision with root package name */
    static final String f20315b;

    /* renamed from: c  reason: collision with root package name */
    public static final a f20316c;

    /* renamed from: d  reason: collision with root package name */
    public static final a f20317d;
    private static final String g;
    private static final Set<b> h = Collections.unmodifiableSet(new HashSet(Arrays.asList(b.a("proto"), b.a("json"))));
    final String e;
    final String f;

    static {
        String a2 = e.a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f20314a = a2;
        String a3 = e.a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        f20315b = a3;
        String a4 = e.a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        g = a4;
        f20316c = new a(a2, null);
        f20317d = new a(a3, a4);
    }

    public a(String str, String str2) {
        this.e = str;
        this.f = str2;
    }

    public static a a(byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
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
                    return new a(str2, str4);
                }
                throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
            }
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        throw new IllegalArgumentException("Version marker missing from extras");
    }

    @Override // com.google.android.datatransport.runtime.e
    public final String a() {
        return "cct";
    }

    @Override // com.google.android.datatransport.runtime.e
    public final byte[] b() {
        String str = this.f;
        if (str == null && this.e == null) {
            return null;
        }
        String str2 = this.e;
        String str3 = str;
        if (str == null) {
            str3 = "";
        }
        return String.format("%s%s%s%s", "1$", str2, "\\", str3).getBytes(Charset.forName("UTF-8"));
    }

    @Override // com.google.android.datatransport.runtime.f
    public final Set<b> c() {
        return h;
    }
}
