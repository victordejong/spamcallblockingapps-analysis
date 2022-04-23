package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public final Uri f22204a;

    /* renamed from: b  reason: collision with root package name */
    public final long f22205b;

    /* renamed from: c  reason: collision with root package name */
    public final int f22206c;

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f22207d;
    public final Map<String, String> e;
    @Deprecated
    public final long f;
    public final long g;
    public final long h;
    public final String i;
    public final int j;
    public final Object k;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/j$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public Uri f22208a;

        /* renamed from: b  reason: collision with root package name */
        public long f22209b;

        /* renamed from: c  reason: collision with root package name */
        public int f22210c;

        /* renamed from: d  reason: collision with root package name */
        public byte[] f22211d;
        public Map<String, String> e;
        public long f;
        public long g;
        public String h;
        public int i;
        private Object j;

        public a() {
            this.f22210c = 1;
            this.e = Collections.emptyMap();
            this.g = -1L;
        }

        private a(j jVar) {
            this.f22208a = jVar.f22204a;
            this.f22209b = jVar.f22205b;
            this.f22210c = jVar.f22206c;
            this.f22211d = jVar.f22207d;
            this.e = jVar.e;
            this.f = jVar.g;
            this.g = jVar.h;
            this.h = jVar.i;
            this.i = jVar.j;
            this.j = jVar.k;
        }

        public final a a(String str) {
            this.f22208a = Uri.parse(str);
            return this;
        }

        public final j a() {
            com.google.android.exoplayer2.util.a.a(this.f22208a, "The uri must be set.");
            return new j(this.f22208a, this.f22209b, this.f22210c, this.f22211d, this.e, this.f, this.g, this.h, this.i, this.j);
        }
    }

    public j(Uri uri) {
        this(uri, 0L, -1L);
    }

    @Deprecated
    public j(Uri uri, int i) {
        this(uri, 0L, -1L, null, i);
    }

    @Deprecated
    public j(Uri uri, int i, byte[] bArr, long j, long j2, long j3, String str, int i2) {
        this(uri, i, bArr, j, j2, j3, str, i2, Collections.emptyMap());
    }

    @Deprecated
    public j(Uri uri, int i, byte[] bArr, long j, long j2, long j3, String str, int i2, Map<String, String> map) {
        this(uri, j - j2, i, bArr, map, j2, j3, str, i2, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Uri uri, long j, int i, byte[] bArr, Map<String, String> map, long j2, long j3, String str, int i2, Object obj) {
        long j4 = j + j2;
        com.google.android.exoplayer2.util.a.a(j4 >= 0);
        com.google.android.exoplayer2.util.a.a(j2 >= 0);
        com.google.android.exoplayer2.util.a.a(j3 <= 0 ? j3 == -1 : true);
        this.f22204a = uri;
        this.f22205b = j;
        this.f22206c = i;
        this.f22207d = (bArr == null || bArr.length == 0) ? null : bArr;
        this.e = Collections.unmodifiableMap(new HashMap(map));
        this.g = j2;
        this.f = j4;
        this.h = j3;
        this.i = str;
        this.j = i2;
        this.k = obj;
    }

    public j(Uri uri, long j, long j2) {
        this(uri, 0L, 1, null, Collections.emptyMap(), j, j2, null, 0, null);
    }

    @Deprecated
    public j(Uri uri, long j, long j2, long j3, String str, int i) {
        this(uri, null, j, j2, j3, str, i);
    }

    @Deprecated
    public j(Uri uri, long j, long j2, String str) {
        this(uri, j, j, j2, str, 0);
    }

    @Deprecated
    public j(Uri uri, long j, long j2, String str, int i) {
        this(uri, j, j, j2, str, i);
    }

    @Deprecated
    public j(Uri uri, long j, long j2, String str, int i, Map<String, String> map) {
        this(uri, 1, null, j, j, j2, str, i, map);
    }

    @Deprecated
    public j(Uri uri, byte[] bArr, long j, long j2, long j3, String str, int i) {
        this(uri, bArr != null ? 2 : 1, bArr, j, j2, j3, str, i);
    }

    public static String a(int i) {
        if (i == 1) {
            return "GET";
        }
        if (i == 2) {
            return "POST";
        }
        if (i == 3) {
            return "HEAD";
        }
        throw new IllegalStateException();
    }

    public final a a() {
        return new a();
    }

    public final boolean b(int i) {
        return (this.j & i) == i;
    }

    public final String toString() {
        return "DataSpec[" + a(this.f22206c) + StringUtils.SPACE + this.f22204a + ", " + this.g + ", " + this.h + ", " + this.i + ", " + this.j + "]";
    }
}
