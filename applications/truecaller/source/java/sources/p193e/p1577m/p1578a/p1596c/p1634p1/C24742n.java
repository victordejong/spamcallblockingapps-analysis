package p193e.p1577m.p1578a.p1596c.p1634p1;

import android.net.Uri;
import com.freshchat.consumer.sdk.BuildConfig;
import com.tenor.android.core.constant.StringConstant;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.c.p1.n */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/n.class */
public final class C24742n {

    /* renamed from: a */
    public final Uri f69328a;

    /* renamed from: b */
    public final int f69329b;

    /* renamed from: c */
    public final byte[] f69330c;

    /* renamed from: d */
    public final Map<String, String> f69331d;

    /* renamed from: e */
    public final long f69332e;

    /* renamed from: f */
    public final long f69333f;

    /* renamed from: g */
    public final long f69334g;

    /* renamed from: h */
    public final String f69335h;

    /* renamed from: i */
    public final int f69336i;

    public C24742n(Uri uri, int i, byte[] bArr, long j, long j2, long j3, String str, int i2, Map<String, String> map) {
        C26232y.m2310r(j >= 0);
        C26232y.m2310r(j2 >= 0);
        C26232y.m2310r(j3 <= 0 ? j3 == -1 : true);
        this.f69328a = uri;
        this.f69329b = i;
        this.f69330c = (bArr == null || bArr.length == 0) ? null : bArr;
        this.f69332e = j;
        this.f69333f = j2;
        this.f69334g = j3;
        this.f69335h = str;
        this.f69336i = i2;
        this.f69331d = Collections.unmodifiableMap(new HashMap(map));
    }

    public C24742n(Uri uri, long j, long j2, long j3, String str, int i) {
        this(uri, 1, null, j, j2, j3, str, i, Collections.emptyMap());
    }

    /* renamed from: a */
    public static String m4687a(int i) {
        if (i != 1) {
            if (i == 2) {
                return "POST";
            }
            if (i != 3) {
                throw new AssertionError(i);
            }
            return BuildConfig.SCM_BRANCH;
        }
        return "GET";
    }

    /* renamed from: b */
    public boolean m4686b(int i) {
        return (this.f69336i & i) == i;
    }

    /* renamed from: c */
    public C24742n m4685c(long j, long j2) {
        return (j == 0 && this.f69334g == j2) ? this : new C24742n(this.f69328a, this.f69329b, this.f69330c, this.f69332e + j, this.f69333f + j, j2, this.f69335h, this.f69336i, this.f69331d);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DataSpec[");
        m8728C.append(m4687a(this.f69329b));
        m8728C.append(StringConstant.SPACE);
        m8728C.append(this.f69328a);
        m8728C.append(", ");
        m8728C.append(Arrays.toString(this.f69330c));
        m8728C.append(", ");
        m8728C.append(this.f69332e);
        m8728C.append(", ");
        m8728C.append(this.f69333f);
        m8728C.append(", ");
        m8728C.append(this.f69334g);
        m8728C.append(", ");
        m8728C.append(this.f69335h);
        m8728C.append(", ");
        return C22128a.m8697J2(m8728C, this.f69336i, "]");
    }
}
