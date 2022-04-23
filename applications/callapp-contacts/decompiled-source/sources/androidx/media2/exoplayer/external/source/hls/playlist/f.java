package androidx.media2.exoplayer.external.source.hls.playlist;

import androidx.media2.exoplayer.external.drm.DrmInitData;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/f.class */
public final class f extends g {

    /* renamed from: a  reason: collision with root package name */
    public final int f3706a;

    /* renamed from: b  reason: collision with root package name */
    public final long f3707b;

    /* renamed from: c  reason: collision with root package name */
    public final long f3708c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f3709d;
    public final int e;
    public final long f;
    public final int g;
    public final long h;
    public final boolean i;
    public final boolean j;
    public final DrmInitData k;
    public final List<a> l;
    public final long m;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/f$a.class */
    public static final class a implements Comparable<Long> {

        /* renamed from: a  reason: collision with root package name */
        public final String f3710a;

        /* renamed from: b  reason: collision with root package name */
        public final a f3711b;

        /* renamed from: c  reason: collision with root package name */
        public final long f3712c;

        /* renamed from: d  reason: collision with root package name */
        public final String f3713d;
        public final int e;
        public final long f;
        public final DrmInitData g;
        public final String h;
        public final String i;
        public final long j;
        public final long k;
        public final boolean l;

        public a(String str, long j, long j2, String str2, String str3) {
            this(str, null, "", 0L, -1, -9223372036854775807L, null, str2, str3, j, j2, false);
        }

        public a(String str, a aVar, String str2, long j, int i, long j2, DrmInitData drmInitData, String str3, String str4, long j3, long j4, boolean z) {
            this.f3710a = str;
            this.f3711b = aVar;
            this.f3713d = str2;
            this.f3712c = j;
            this.e = i;
            this.f = j2;
            this.g = drmInitData;
            this.h = str3;
            this.i = str4;
            this.j = j3;
            this.k = j4;
            this.l = z;
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Long l) {
            Long l2 = l;
            if (this.f > l2.longValue()) {
                return 1;
            }
            return this.f < l2.longValue() ? -1 : 0;
        }
    }

    public f(int i, String str, List<String> list, long j, long j2, boolean z, int i2, long j3, int i3, long j4, boolean z2, boolean z3, boolean z4, DrmInitData drmInitData, List<a> list2) {
        super(str, list, z2);
        this.f3706a = i;
        this.f3708c = j2;
        this.f3709d = z;
        this.e = i2;
        this.f = j3;
        this.g = i3;
        this.h = j4;
        this.i = z3;
        this.j = z4;
        this.k = drmInitData;
        this.l = Collections.unmodifiableList(list2);
        if (!list2.isEmpty()) {
            a aVar = list2.get(list2.size() - 1);
            this.m = aVar.f + aVar.f3712c;
        } else {
            this.m = 0L;
        }
        if (j == -9223372036854775807L) {
            j = -9223372036854775807L;
        } else if (j < 0) {
            j = this.m + j;
        }
        this.f3707b = j;
    }

    public final long a() {
        return this.f3708c + this.m;
    }

    @Override // androidx.media2.exoplayer.external.offline.a
    public final /* bridge */ /* synthetic */ g a(List list) {
        return this;
    }
}
