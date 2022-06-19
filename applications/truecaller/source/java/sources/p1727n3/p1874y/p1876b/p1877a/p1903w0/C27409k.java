package p1727n3.p1874y.p1876b.p1877a.p1903w0;

import android.net.Uri;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.freshchat.consumer.sdk.BuildConfig;
import com.tenor.android.core.constant.StringConstant;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.b.a.w0.k */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/w0/k.class */
public final class C27409k {

    /* renamed from: a */
    public final Uri f77127a;

    /* renamed from: b */
    public final int f77128b;

    /* renamed from: c */
    public final byte[] f77129c;

    /* renamed from: d */
    public final Map<String, String> f77130d;

    /* renamed from: e */
    public final long f77131e;

    /* renamed from: f */
    public final long f77132f;

    /* renamed from: g */
    public final long f77133g;

    /* renamed from: h */
    public final String f77134h;

    /* renamed from: i */
    public final int f77135i;

    public C27409k(Uri uri, int i, byte[] bArr, long j, long j2, long j3, String str, int i2, Map<String, String> map) {
        MediaSessionCompat.m43211p(j >= 0);
        MediaSessionCompat.m43211p(j2 >= 0);
        MediaSessionCompat.m43211p(j3 <= 0 ? j3 == -1 : true);
        this.f77127a = uri;
        this.f77128b = i;
        this.f77129c = (bArr == null || bArr.length == 0) ? null : bArr;
        this.f77131e = j;
        this.f77132f = j2;
        this.f77133g = j3;
        this.f77134h = str;
        this.f77135i = i2;
        this.f77130d = Collections.unmodifiableMap(new HashMap(map));
    }

    public C27409k(Uri uri, long j, long j2, long j3, String str, int i) {
        this(uri, 1, null, j, j2, j3, str, i, Collections.emptyMap());
    }

    public C27409k(Uri uri, long j, long j2, String str, int i) {
        this(uri, j, j, j2, str, i);
    }

    /* renamed from: a */
    public static String m382a(int i) {
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

    public String toString() {
        String m382a = m382a(this.f77128b);
        String valueOf = String.valueOf(this.f77127a);
        String arrays = Arrays.toString(this.f77129c);
        long j = this.f77131e;
        long j2 = this.f77132f;
        long j3 = this.f77133g;
        String str = this.f77134h;
        int i = this.f77135i;
        StringBuilder m8736A = C22128a.m8736A(C22128a.m8623f2(str, C22128a.m8623f2(arrays, valueOf.length() + m382a.length() + 94)), "DataSpec[", m382a, StringConstant.SPACE, valueOf);
        C22128a.m8669S0(m8736A, ", ", arrays, ", ");
        m8736A.append(j);
        C22128a.m8675Q0(m8736A, ", ", j2, ", ");
        m8736A.append(j3);
        m8736A.append(", ");
        m8736A.append(str);
        m8736A.append(", ");
        m8736A.append(i);
        m8736A.append("]");
        return m8736A.toString();
    }
}
