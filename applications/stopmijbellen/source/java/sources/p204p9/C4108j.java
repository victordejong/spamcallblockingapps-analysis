package p204p9;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;
import p214q9.C4171c;
/* renamed from: p9.j */
/* loaded from: classes2-dex2jar.jar:p9/j.class */
public final class C4108j {

    /* renamed from: e */
    public static final C4108j f12917e;

    /* renamed from: f */
    public static final C4108j f12918f = new C4108j(new C4109a(false));

    /* renamed from: a */
    public final boolean f12919a;

    /* renamed from: b */
    public final boolean f12920b;
    @Nullable

    /* renamed from: c */
    public final String[] f12921c;
    @Nullable

    /* renamed from: d */
    public final String[] f12922d;

    /* renamed from: p9.j$a */
    /* loaded from: classes2-dex2jar.jar:p9/j$a.class */
    public static final class C4109a {

        /* renamed from: a */
        public boolean f12923a;
        @Nullable

        /* renamed from: b */
        public String[] f12924b;
        @Nullable

        /* renamed from: c */
        public String[] f12925c;

        /* renamed from: d */
        public boolean f12926d;

        public C4109a(C4108j c4108j) {
            this.f12923a = c4108j.f12919a;
            this.f12924b = c4108j.f12921c;
            this.f12925c = c4108j.f12922d;
            this.f12926d = c4108j.f12920b;
        }

        public C4109a(boolean z) {
            this.f12923a = z;
        }

        /* renamed from: a */
        public C4109a m1414a(String... strArr) {
            if (this.f12923a) {
                if (strArr.length == 0) {
                    throw new IllegalArgumentException("At least one cipher suite is required");
                }
                this.f12924b = (String[]) strArr.clone();
                return this;
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        /* renamed from: b */
        public C4109a m1413b(C4104h... c4104hArr) {
            if (this.f12923a) {
                String[] strArr = new String[c4104hArr.length];
                for (int i = 0; i < c4104hArr.length; i++) {
                    strArr[i] = c4104hArr[i].f12908a;
                }
                m1414a(strArr);
                return this;
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        /* renamed from: c */
        public C4109a m1412c(boolean z) {
            if (this.f12923a) {
                this.f12926d = z;
                return this;
            }
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }

        /* renamed from: d */
        public C4109a m1411d(String... strArr) {
            if (this.f12923a) {
                if (strArr.length == 0) {
                    throw new IllegalArgumentException("At least one TLS version is required");
                }
                this.f12925c = (String[]) strArr.clone();
                return this;
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }

        /* renamed from: e */
        public C4109a m1410e(EnumC4101f0... enumC4101f0Arr) {
            if (this.f12923a) {
                String[] strArr = new String[enumC4101f0Arr.length];
                for (int i = 0; i < enumC4101f0Arr.length; i++) {
                    strArr[i] = enumC4101f0Arr[i].f12884a;
                }
                m1411d(strArr);
                return this;
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }
    }

    static {
        C4104h c4104h = C4104h.f12903q;
        C4104h c4104h2 = C4104h.f12904r;
        C4104h c4104h3 = C4104h.f12905s;
        C4104h c4104h4 = C4104h.f12906t;
        C4104h c4104h5 = C4104h.f12907u;
        C4104h c4104h6 = C4104h.f12897k;
        C4104h c4104h7 = C4104h.f12899m;
        C4104h c4104h8 = C4104h.f12898l;
        C4104h c4104h9 = C4104h.f12900n;
        C4104h c4104h10 = C4104h.f12902p;
        C4104h c4104h11 = C4104h.f12901o;
        C4104h[] c4104hArr = {c4104h, c4104h2, c4104h3, c4104h4, c4104h5, c4104h6, c4104h7, c4104h8, c4104h9, c4104h10, c4104h11, C4104h.f12895i, C4104h.f12896j, C4104h.f12893g, C4104h.f12894h, C4104h.f12891e, C4104h.f12892f, C4104h.f12890d};
        C4109a c4109a = new C4109a(true);
        c4109a.m1413b(c4104h, c4104h2, c4104h3, c4104h4, c4104h5, c4104h6, c4104h7, c4104h8, c4104h9, c4104h10, c4104h11);
        EnumC4101f0 enumC4101f0 = EnumC4101f0.TLS_1_3;
        EnumC4101f0 enumC4101f02 = EnumC4101f0.TLS_1_2;
        c4109a.m1410e(enumC4101f0, enumC4101f02);
        c4109a.m1412c(true);
        C4109a c4109a2 = new C4109a(true);
        c4109a2.m1413b(c4104hArr);
        EnumC4101f0 enumC4101f03 = EnumC4101f0.TLS_1_1;
        EnumC4101f0 enumC4101f04 = EnumC4101f0.TLS_1_0;
        c4109a2.m1410e(enumC4101f0, enumC4101f02, enumC4101f03, enumC4101f04);
        c4109a2.m1412c(true);
        f12917e = new C4108j(c4109a2);
        C4109a c4109a3 = new C4109a(true);
        c4109a3.m1413b(c4104hArr);
        c4109a3.m1410e(enumC4101f04);
        c4109a3.m1412c(true);
    }

    public C4108j(C4109a c4109a) {
        this.f12919a = c4109a.f12923a;
        this.f12921c = c4109a.f12924b;
        this.f12922d = c4109a.f12925c;
        this.f12920b = c4109a.f12926d;
    }

    /* renamed from: a */
    public boolean m1415a(SSLSocket sSLSocket) {
        if (!this.f12919a) {
            return false;
        }
        String[] strArr = this.f12922d;
        if (strArr != null && !C4171c.m1317s(C4171c.f13149f, strArr, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        String[] strArr2 = this.f12921c;
        return strArr2 == null || C4171c.m1317s(C4104h.f12888b, strArr2, sSLSocket.getEnabledCipherSuites());
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C4108j)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        C4108j c4108j = (C4108j) obj;
        boolean z = this.f12919a;
        if (z != c4108j.f12919a) {
            return false;
        }
        if (!z) {
            return true;
        }
        return Arrays.equals(this.f12921c, c4108j.f12921c) && Arrays.equals(this.f12922d, c4108j.f12922d) && this.f12920b == c4108j.f12920b;
    }

    public int hashCode() {
        return this.f12919a ? ((((527 + Arrays.hashCode(this.f12921c)) * 31) + Arrays.hashCode(this.f12922d)) * 31) + (!this.f12920b ? 1 : 0) : 17;
    }

    public String toString() {
        String str;
        List list;
        if (!this.f12919a) {
            return "ConnectionSpec()";
        }
        String[] strArr = this.f12921c;
        String str2 = "[all enabled]";
        if (strArr != null) {
            if (strArr != null) {
                ArrayList arrayList = new ArrayList(strArr.length);
                for (String str3 : strArr) {
                    arrayList.add(C4104h.m1418a(str3));
                }
                list = Collections.unmodifiableList(arrayList);
            } else {
                list = null;
            }
            str = list.toString();
        } else {
            str = "[all enabled]";
        }
        String[] strArr2 = this.f12922d;
        if (strArr2 != null) {
            List list2 = null;
            if (strArr2 != null) {
                ArrayList arrayList2 = new ArrayList(strArr2.length);
                for (String str4 : strArr2) {
                    arrayList2.add(EnumC4101f0.m1421a(str4));
                }
                list2 = Collections.unmodifiableList(arrayList2);
            }
            str2 = list2.toString();
        }
        return "ConnectionSpec(cipherSuites=" + str + ", tlsVersions=" + str2 + ", supportsTlsExtensions=" + this.f12920b + ")";
    }
}
