package com.google.android.exoplayer2.source.hls.playlist;

import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.offline.StreamKey;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.source.hls.playlist.f */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/f.class */
public final class C5266f extends AbstractC5268g {

    /* renamed from: d */
    public final int f16663d;

    /* renamed from: e */
    public final long f16664e;

    /* renamed from: f */
    public final long f16665f;

    /* renamed from: g */
    public final boolean f16666g;

    /* renamed from: h */
    public final int f16667h;

    /* renamed from: i */
    public final long f16668i;

    /* renamed from: j */
    public final int f16669j;

    /* renamed from: k */
    public final long f16670k;

    /* renamed from: l */
    public final boolean f16671l;

    /* renamed from: m */
    public final boolean f16672m;

    /* renamed from: n */
    public final DrmInitData f16673n;

    /* renamed from: o */
    public final List<C5267a> f16674o;

    /* renamed from: p */
    public final long f16675p;

    /* renamed from: com.google.android.exoplayer2.source.hls.playlist.f$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/f$a.class */
    public static final class C5267a implements Comparable<Long> {

        /* renamed from: d */
        public final String f16676d;

        /* renamed from: e */
        public final C5267a f16677e;

        /* renamed from: f */
        public final long f16678f;

        /* renamed from: g */
        public final String f16679g;

        /* renamed from: h */
        public final int f16680h;

        /* renamed from: i */
        public final long f16681i;

        /* renamed from: j */
        public final DrmInitData f16682j;

        /* renamed from: k */
        public final String f16683k;

        /* renamed from: l */
        public final String f16684l;

        /* renamed from: m */
        public final long f16685m;

        /* renamed from: n */
        public final long f16686n;

        /* renamed from: o */
        public final boolean f16687o;

        public C5267a(String str, long j, long j2, String str2, String str3) {
            this(str, null, "", 0L, -1, -9223372036854775807L, null, str2, str3, j, j2, false);
        }

        public C5267a(String str, C5267a c5267a, String str2, long j, int i, long j2, DrmInitData drmInitData, String str3, String str4, long j3, long j4, boolean z) {
            this.f16676d = str;
            this.f16677e = c5267a;
            this.f16679g = str2;
            this.f16678f = j;
            this.f16680h = i;
            this.f16681i = j2;
            this.f16682j = drmInitData;
            this.f16683k = str3;
            this.f16684l = str4;
            this.f16685m = j3;
            this.f16686n = j4;
            this.f16687o = z;
        }

        /* renamed from: a */
        public int compareTo(Long l) {
            return this.f16681i > l.longValue() ? 1 : this.f16681i < l.longValue() ? -1 : 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    public C5266f(int i, String str, List<String> list, long j, long j2, boolean z, int i2, long j3, int i3, long j4, boolean z2, boolean z3, boolean z4, DrmInitData drmInitData, List<C5267a> list2) {
        super(str, list, z2);
        ?? r10;
        this.f16663d = i;
        this.f16665f = j2;
        this.f16666g = z;
        this.f16667h = i2;
        this.f16668i = j3;
        this.f16669j = i3;
        this.f16670k = j4;
        this.f16671l = z3;
        this.f16672m = z4;
        this.f16673n = drmInitData;
        this.f16674o = Collections.unmodifiableList(list2);
        if (!list2.isEmpty()) {
            C5267a c5267a = list2.get(list2.size() - 1);
            this.f16675p = c5267a.f16681i + c5267a.f16678f;
        } else {
            this.f16675p = 0L;
        }
        if (j == -9223372036854775807L) {
            r10 = -9223372036854775807;
        } else {
            int i4 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            r10 = j;
            if (i4 < 0) {
                r10 = this.f16675p + j;
            }
        }
        this.f16664e = r10;
    }

    /* renamed from: b */
    public C5266f mo19907a(List<StreamKey> list) {
        return this;
    }

    /* renamed from: c */
    public C5266f m19905c(long j, int i) {
        return new C5266f(this.f16663d, this.f16688a, this.f16689b, this.f16664e, j, true, i, this.f16668i, this.f16669j, this.f16670k, this.f16690c, this.f16671l, this.f16672m, this.f16673n, this.f16674o);
    }

    /* renamed from: d */
    public C5266f m19904d() {
        return this.f16671l ? this : new C5266f(this.f16663d, this.f16688a, this.f16689b, this.f16664e, this.f16665f, this.f16666g, this.f16667h, this.f16668i, this.f16669j, this.f16670k, this.f16690c, true, this.f16672m, this.f16673n, this.f16674o);
    }

    /* renamed from: e */
    public long m19903e() {
        return this.f16665f + this.f16675p;
    }

    /* renamed from: f */
    public boolean m19902f(C5266f c5266f) {
        boolean z = true;
        if (c5266f != null) {
            long j = this.f16668i;
            long j2 = c5266f.f16668i;
            if (j > j2) {
                z = true;
            } else if (j < j2) {
                return false;
            } else {
                int size = this.f16674o.size();
                int size2 = c5266f.f16674o.size();
                z = true;
                if (size <= size2) {
                    z = size == size2 && this.f16671l && !c5266f.f16671l;
                }
            }
        }
        return z;
    }
}
