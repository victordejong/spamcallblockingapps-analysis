package p081h.p203i.p204a.p206b.p207i;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.AdType;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
import p081h.p203i.p204a.p206b.C6493b;
import p081h.p203i.p204a.p206b.p209j.AbstractC6569f;
/* renamed from: h.i.a.b.i.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/i/a.class */
public final class C6500a implements AbstractC6569f {

    /* renamed from: c */
    public static final String f16179c = C6506e.m22443a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");

    /* renamed from: d */
    public static final String f16180d = C6506e.m22443a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");

    /* renamed from: e */
    public static final String f16181e = C6506e.m22443a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");

    /* renamed from: f */
    public static final Set<C6493b> f16182f = Collections.unmodifiableSet(new HashSet(Arrays.asList(C6493b.m22467a("proto"), C6493b.m22467a(AdType.STATIC_NATIVE))));

    /* renamed from: g */
    public static final C6500a f16183g = new C6500a(f16180d, f16181e);
    @NonNull

    /* renamed from: a */
    public final String f16184a;
    @Nullable

    /* renamed from: b */
    public final String f16185b;

    static {
        new C6500a(f16179c, null);
    }

    public C6500a(@NonNull String str, @Nullable String str2) {
        this.f16184a = str;
        this.f16185b = str2;
    }

    @NonNull
    /* renamed from: a */
    public static C6500a m22461a(@NonNull byte[] bArr) {
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
                    return new C6500a(str2, str4);
                }
                throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
            }
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        throw new IllegalArgumentException("Version marker missing from extras");
    }

    @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6569f
    /* renamed from: a */
    public Set<C6493b> mo22339a() {
        return f16182f;
    }

    @Nullable
    /* renamed from: b */
    public byte[] m22460b() {
        if (this.f16185b == null && this.f16184a == null) {
            return null;
        }
        String str = this.f16184a;
        String str2 = this.f16185b;
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        return String.format("%s%s%s%s", "1$", str, "\\", str3).getBytes(Charset.forName("UTF-8"));
    }

    @Nullable
    /* renamed from: c */
    public String m22459c() {
        return this.f16185b;
    }

    @NonNull
    /* renamed from: d */
    public String m22458d() {
        return this.f16184a;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6568e
    @Nullable
    public byte[] getExtras() {
        return m22460b();
    }

    @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6568e
    @NonNull
    public String getName() {
        return "cct";
    }
}
