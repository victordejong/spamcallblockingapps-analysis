package androidx.media2.exoplayer.external.upstream;

import android.net.Uri;
import androidx.media2.exoplayer.external.util.a;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final Uri f4064a;

    /* renamed from: b  reason: collision with root package name */
    public final int f4065b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f4066c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, String> f4067d;
    public final long e;
    public final long f;
    public final long g;
    public final String h;
    public final int i;

    public h(Uri uri) {
        this(uri, 0);
    }

    public h(Uri uri, int i) {
        this(uri, 0L, -1L, null, i);
    }

    public h(Uri uri, int i, byte[] bArr, long j, long j2, long j3, String str, int i2) {
        this(uri, i, bArr, j, j2, j3, str, i2, Collections.emptyMap());
    }

    public h(Uri uri, int i, byte[] bArr, long j, long j2, long j3, String str, int i2, Map<String, String> map) {
        a.a(j >= 0);
        a.a(j2 >= 0);
        a.a(j3 <= 0 ? j3 == -1 : true);
        this.f4064a = uri;
        this.f4065b = i;
        this.f4066c = (bArr == null || bArr.length == 0) ? null : bArr;
        this.e = j;
        this.f = j2;
        this.g = j3;
        this.h = str;
        this.i = i2;
        this.f4067d = Collections.unmodifiableMap(new HashMap(map));
    }

    public h(Uri uri, long j, long j2, long j3, String str, int i) {
        this(uri, null, j, j2, j3, str, i);
    }

    public h(Uri uri, long j, long j2, String str) {
        this(uri, j, j, j2, str, 0);
    }

    public h(Uri uri, long j, long j2, String str, int i) {
        this(uri, j, j, j2, str, i);
    }

    public h(Uri uri, byte[] bArr, long j, long j2, long j3, String str, int i) {
        this(uri, bArr != null ? 2 : 1, bArr, j, j2, j3, str, i);
    }

    private h a(long j, long j2) {
        return (j == 0 && this.g == j2) ? this : new h(this.f4064a, this.f4065b, this.f4066c, this.e + j, this.f + j, j2, this.h, this.i, this.f4067d);
    }

    public static String b(int i) {
        if (i == 1) {
            return "GET";
        }
        if (i == 2) {
            return "POST";
        }
        if (i == 3) {
            return "HEAD";
        }
        throw new AssertionError(i);
    }

    public final h a(long j) {
        long j2 = this.g;
        long j3 = -1;
        if (j2 != -1) {
            j3 = j2 - j;
        }
        return a(j, j3);
    }

    public final boolean a(int i) {
        return (this.i & i) == i;
    }

    public final String toString() {
        String b2 = b(this.f4065b);
        String valueOf = String.valueOf(this.f4064a);
        String arrays = Arrays.toString(this.f4066c);
        long j = this.e;
        long j2 = this.f;
        long j3 = this.g;
        String str = this.h;
        int i = this.i;
        StringBuilder sb = new StringBuilder(String.valueOf(b2).length() + 94 + String.valueOf(valueOf).length() + String.valueOf(arrays).length() + String.valueOf(str).length());
        sb.append("DataSpec[");
        sb.append(b2);
        sb.append(StringUtils.SPACE);
        sb.append(valueOf);
        sb.append(", ");
        sb.append(arrays);
        sb.append(", ");
        sb.append(j);
        sb.append(", ");
        sb.append(j2);
        sb.append(", ");
        sb.append(j3);
        sb.append(", ");
        sb.append(str);
        sb.append(", ");
        sb.append(i);
        sb.append("]");
        return sb.toString();
    }
}
