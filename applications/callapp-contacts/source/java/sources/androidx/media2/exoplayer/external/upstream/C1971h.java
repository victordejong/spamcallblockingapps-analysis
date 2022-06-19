package androidx.media2.exoplayer.external.upstream;

import android.net.Uri;
import androidx.media2.exoplayer.external.util.C1993a;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* renamed from: androidx.media2.exoplayer.external.upstream.h */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/h.class */
public final class C1971h {

    /* renamed from: a */
    public final Uri f7952a;

    /* renamed from: b */
    public final int f7953b;

    /* renamed from: c */
    public final byte[] f7954c;

    /* renamed from: d */
    public final Map<String, String> f7955d;

    /* renamed from: e */
    public final long f7956e;

    /* renamed from: f */
    public final long f7957f;

    /* renamed from: g */
    public final long f7958g;

    /* renamed from: h */
    public final String f7959h;

    /* renamed from: i */
    public final int f7960i;

    public C1971h(Uri uri) {
        this(uri, 0);
    }

    public C1971h(Uri uri, int i) {
        this(uri, 0L, -1L, null, i);
    }

    public C1971h(Uri uri, int i, byte[] bArr, long j, long j2, long j3, String str, int i2) {
        this(uri, i, bArr, j, j2, j3, str, i2, Collections.emptyMap());
    }

    public C1971h(Uri uri, int i, byte[] bArr, long j, long j2, long j3, String str, int i2, Map<String, String> map) {
        C1993a.m41688a(j >= 0);
        C1993a.m41688a(j2 >= 0);
        C1993a.m41688a(j3 <= 0 ? j3 == -1 : true);
        this.f7952a = uri;
        this.f7953b = i;
        this.f7954c = (bArr == null || bArr.length == 0) ? null : bArr;
        this.f7956e = j;
        this.f7957f = j2;
        this.f7958g = j3;
        this.f7959h = str;
        this.f7960i = i2;
        this.f7955d = Collections.unmodifiableMap(new HashMap(map));
    }

    public C1971h(Uri uri, long j, long j2, long j3, String str, int i) {
        this(uri, null, j, j2, j3, str, i);
    }

    public C1971h(Uri uri, long j, long j2, String str) {
        this(uri, j, j, j2, str, 0);
    }

    public C1971h(Uri uri, long j, long j2, String str, int i) {
        this(uri, j, j, j2, str, i);
    }

    public C1971h(Uri uri, byte[] bArr, long j, long j2, long j3, String str, int i) {
        this(uri, bArr != null ? 2 : 1, bArr, j, j2, j3, str, i);
    }

    /* renamed from: a */
    private C1971h m41736a(long j, long j2) {
        return (j == 0 && this.f7958g == j2) ? this : new C1971h(this.f7952a, this.f7953b, this.f7954c, this.f7956e + j, this.f7957f + j, j2, this.f7959h, this.f7960i, this.f7955d);
    }

    /* renamed from: b */
    public static String m41735b(int i) {
        if (i != 1) {
            if (i == 2) {
                return "POST";
            }
            if (i != 3) {
                throw new AssertionError(i);
            }
            return "HEAD";
        }
        return "GET";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* renamed from: a */
    public final C1971h m41737a(long j) {
        long j2 = this.f7958g;
        ?? r11 = true;
        if (j2 != -1) {
            r11 = j2 - j;
        }
        return m41736a(j, r11 == true ? 1L : 0L);
    }

    /* renamed from: a */
    public final boolean m41738a(int i) {
        return (this.f7960i & i) == i;
    }

    public final String toString() {
        String m41735b = m41735b(this.f7953b);
        String valueOf = String.valueOf(this.f7952a);
        String arrays = Arrays.toString(this.f7954c);
        long j = this.f7956e;
        long j2 = this.f7957f;
        long j3 = this.f7958g;
        String str = this.f7959h;
        int i = this.f7960i;
        StringBuilder sb = new StringBuilder(String.valueOf(m41735b).length() + 94 + String.valueOf(valueOf).length() + String.valueOf(arrays).length() + String.valueOf(str).length());
        sb.append("DataSpec[");
        sb.append(m41735b);
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
