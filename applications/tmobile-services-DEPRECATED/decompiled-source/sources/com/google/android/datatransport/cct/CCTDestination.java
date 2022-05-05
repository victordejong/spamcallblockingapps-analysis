package com.google.android.datatransport.cct;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.stetho.common.Utf8Charset;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.runtime.EncodedDestination;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/CCTDestination.class */
public final class CCTDestination implements EncodedDestination {

    /* renamed from: c */
    static final String f6514c = zzd.m15474a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");

    /* renamed from: d */
    static final String f6515d = zzd.m15474a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");

    /* renamed from: e */
    private static final String f6516e = zzd.m15474a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");

    /* renamed from: f */
    private static final Set<Encoding> f6517f = Collections.unmodifiableSet(new HashSet(Arrays.asList(Encoding.m15560b("proto"), Encoding.m15560b("json"))));

    /* renamed from: g */
    public static final CCTDestination f6518g = new CCTDestination(f6515d, f6516e);
    @NonNull

    /* renamed from: a */
    private final String f6519a;
    @Nullable

    /* renamed from: b */
    private final String f6520b;

    public CCTDestination(@NonNull String str, @Nullable String str2) {
        this.f6519a = str;
        this.f6520b = str2;
    }

    @NonNull
    /* renamed from: c */
    public static CCTDestination m15553c(@NonNull byte[] bArr) {
        String str = new String(bArr, Charset.forName(Utf8Charset.NAME));
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
                    return new CCTDestination(str2, str4);
                }
                throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
            }
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        throw new IllegalArgumentException("Version marker missing from extras");
    }

    @Override // com.google.android.datatransport.runtime.EncodedDestination
    /* renamed from: a */
    public Set<Encoding> mo15470a() {
        return f6517f;
    }

    @Nullable
    /* renamed from: b */
    public byte[] m15554b() {
        if (this.f6520b == null && this.f6519a == null) {
            return null;
        }
        String str = this.f6519a;
        String str2 = this.f6520b;
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        return String.format("%s%s%s%s", "1$", str, "\\", str3).getBytes(Charset.forName(Utf8Charset.NAME));
    }

    @Nullable
    /* renamed from: d */
    public String m15552d() {
        return this.f6520b;
    }

    @NonNull
    /* renamed from: e */
    public String m15551e() {
        return this.f6519a;
    }

    @Override // com.google.android.datatransport.runtime.Destination
    @Nullable
    public byte[] getExtras() {
        return m15554b();
    }

    @Override // com.google.android.datatransport.runtime.Destination
    @NonNull
    public String getName() {
        return "cct";
    }
}
