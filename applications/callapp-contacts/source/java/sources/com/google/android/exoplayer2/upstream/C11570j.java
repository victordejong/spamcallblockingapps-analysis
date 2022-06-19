package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.util.C11593a;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.google.android.exoplayer2.upstream.j */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/j.class */
public final class C11570j {

    /* renamed from: a */
    public final Uri f38512a;

    /* renamed from: b */
    public final long f38513b;

    /* renamed from: c */
    public final int f38514c;

    /* renamed from: d */
    public final byte[] f38515d;

    /* renamed from: e */
    public final Map<String, String> f38516e;
    @Deprecated

    /* renamed from: f */
    public final long f38517f;

    /* renamed from: g */
    public final long f38518g;

    /* renamed from: h */
    public final long f38519h;

    /* renamed from: i */
    public final String f38520i;

    /* renamed from: j */
    public final int f38521j;

    /* renamed from: k */
    public final Object f38522k;

    /* renamed from: com.google.android.exoplayer2.upstream.j$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/j$a.class */
    public static final class C11572a {

        /* renamed from: a */
        public Uri f38523a;

        /* renamed from: b */
        public long f38524b;

        /* renamed from: c */
        public int f38525c;

        /* renamed from: d */
        public byte[] f38526d;

        /* renamed from: e */
        public Map<String, String> f38527e;

        /* renamed from: f */
        public long f38528f;

        /* renamed from: g */
        public long f38529g;

        /* renamed from: h */
        public String f38530h;

        /* renamed from: i */
        public int f38531i;

        /* renamed from: j */
        private Object f38532j;

        public C11572a() {
            this.f38525c = 1;
            this.f38527e = Collections.emptyMap();
            this.f38529g = -1L;
        }

        private C11572a(C11570j c11570j) {
            this.f38523a = c11570j.f38512a;
            this.f38524b = c11570j.f38513b;
            this.f38525c = c11570j.f38514c;
            this.f38526d = c11570j.f38515d;
            this.f38527e = c11570j.f38516e;
            this.f38528f = c11570j.f38518g;
            this.f38529g = c11570j.f38519h;
            this.f38530h = c11570j.f38520i;
            this.f38531i = c11570j.f38521j;
            this.f38532j = c11570j.f38522k;
        }

        /* renamed from: a */
        public final C11572a m20072a(String str) {
            this.f38523a = Uri.parse(str);
            return this;
        }

        /* renamed from: a */
        public final C11570j m20073a() {
            C11593a.m20023a(this.f38523a, "The uri must be set.");
            return new C11570j(this.f38523a, this.f38524b, this.f38525c, this.f38526d, this.f38527e, this.f38528f, this.f38529g, this.f38530h, this.f38531i, this.f38532j);
        }
    }

    public C11570j(Uri uri) {
        this(uri, 0L, -1L);
    }

    @Deprecated
    public C11570j(Uri uri, int i) {
        this(uri, 0L, -1L, null, i);
    }

    @Deprecated
    public C11570j(Uri uri, int i, byte[] bArr, long j, long j2, long j3, String str, int i2) {
        this(uri, i, bArr, j, j2, j3, str, i2, Collections.emptyMap());
    }

    @Deprecated
    public C11570j(Uri uri, int i, byte[] bArr, long j, long j2, long j3, String str, int i2, Map<String, String> map) {
        this(uri, j - j2, i, bArr, map, j2, j3, str, i2, null);
    }

    public C11570j(Uri uri, long j, int i, byte[] bArr, Map<String, String> map, long j2, long j3, String str, int i2, Object obj) {
        long j4 = j + j2;
        C11593a.m20022a(j4 >= 0);
        C11593a.m20022a(j2 >= 0);
        C11593a.m20022a(j3 <= 0 ? j3 == -1 : true);
        this.f38512a = uri;
        this.f38513b = j;
        this.f38514c = i;
        this.f38515d = (bArr == null || bArr.length == 0) ? null : bArr;
        this.f38516e = Collections.unmodifiableMap(new HashMap(map));
        this.f38518g = j2;
        this.f38517f = j4;
        this.f38519h = j3;
        this.f38520i = str;
        this.f38521j = i2;
        this.f38522k = obj;
    }

    public C11570j(Uri uri, long j, long j2) {
        this(uri, 0L, 1, null, Collections.emptyMap(), j, j2, null, 0, null);
    }

    @Deprecated
    public C11570j(Uri uri, long j, long j2, long j3, String str, int i) {
        this(uri, null, j, j2, j3, str, i);
    }

    @Deprecated
    public C11570j(Uri uri, long j, long j2, String str) {
        this(uri, j, j, j2, str, 0);
    }

    @Deprecated
    public C11570j(Uri uri, long j, long j2, String str, int i) {
        this(uri, j, j, j2, str, i);
    }

    @Deprecated
    public C11570j(Uri uri, long j, long j2, String str, int i, Map<String, String> map) {
        this(uri, 1, null, j, j, j2, str, i, map);
    }

    @Deprecated
    public C11570j(Uri uri, byte[] bArr, long j, long j2, long j3, String str, int i) {
        this(uri, bArr != null ? 2 : 1, bArr, j, j2, j3, str, i);
    }

    /* renamed from: a */
    public static String m20075a(int i) {
        if (i != 1) {
            if (i == 2) {
                return "POST";
            }
            if (i != 3) {
                throw new IllegalStateException();
            }
            return "HEAD";
        }
        return "GET";
    }

    /* renamed from: a */
    public final C11572a m20076a() {
        return new C11572a();
    }

    /* renamed from: b */
    public final boolean m20074b(int i) {
        return (this.f38521j & i) == i;
    }

    public final String toString() {
        return "DataSpec[" + m20075a(this.f38514c) + StringUtils.SPACE + this.f38512a + ", " + this.f38518g + ", " + this.f38519h + ", " + this.f38520i + ", " + this.f38521j + "]";
    }
}
