package androidx.media2.exoplayer.external.source.hls.playlist;

import androidx.media2.exoplayer.external.drm.DrmInitData;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.source.hls.playlist.f */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/f.class */
public final class C1816f extends AbstractC1818g {

    /* renamed from: a */
    public final int f7245a;

    /* renamed from: b */
    public final long f7246b;

    /* renamed from: c */
    public final long f7247c;

    /* renamed from: d */
    public final boolean f7248d;

    /* renamed from: e */
    public final int f7249e;

    /* renamed from: f */
    public final long f7250f;

    /* renamed from: g */
    public final int f7251g;

    /* renamed from: h */
    public final long f7252h;

    /* renamed from: i */
    public final boolean f7253i;

    /* renamed from: j */
    public final boolean f7254j;

    /* renamed from: k */
    public final DrmInitData f7255k;

    /* renamed from: l */
    public final List<C1817a> f7256l;

    /* renamed from: m */
    public final long f7257m;

    /* renamed from: androidx.media2.exoplayer.external.source.hls.playlist.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/f$a.class */
    public static final class C1817a implements Comparable<Long> {

        /* renamed from: a */
        public final String f7258a;

        /* renamed from: b */
        public final C1817a f7259b;

        /* renamed from: c */
        public final long f7260c;

        /* renamed from: d */
        public final String f7261d;

        /* renamed from: e */
        public final int f7262e;

        /* renamed from: f */
        public final long f7263f;

        /* renamed from: g */
        public final DrmInitData f7264g;

        /* renamed from: h */
        public final String f7265h;

        /* renamed from: i */
        public final String f7266i;

        /* renamed from: j */
        public final long f7267j;

        /* renamed from: k */
        public final long f7268k;

        /* renamed from: l */
        public final boolean f7269l;

        public C1817a(String str, long j, long j2, String str2, String str3) {
            this(str, null, "", 0L, -1, -9223372036854775807L, null, str2, str3, j, j2, false);
        }

        public C1817a(String str, C1817a c1817a, String str2, long j, int i, long j2, DrmInitData drmInitData, String str3, String str4, long j3, long j4, boolean z) {
            this.f7258a = str;
            this.f7259b = c1817a;
            this.f7261d = str2;
            this.f7260c = j;
            this.f7262e = i;
            this.f7263f = j2;
            this.f7264g = drmInitData;
            this.f7265h = str3;
            this.f7266i = str4;
            this.f7267j = j3;
            this.f7268k = j4;
            this.f7269l = z;
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Long l) {
            Long l2 = l;
            if (this.f7263f > l2.longValue()) {
                return 1;
            }
            return this.f7263f < l2.longValue() ? -1 : 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    public C1816f(int i, String str, List<String> list, long j, long j2, boolean z, int i2, long j3, int i3, long j4, boolean z2, boolean z3, boolean z4, DrmInitData drmInitData, List<C1817a> list2) {
        super(str, list, z2);
        ?? r10;
        this.f7245a = i;
        this.f7247c = j2;
        this.f7248d = z;
        this.f7249e = i2;
        this.f7250f = j3;
        this.f7251g = i3;
        this.f7252h = j4;
        this.f7253i = z3;
        this.f7254j = z4;
        this.f7255k = drmInitData;
        this.f7256l = Collections.unmodifiableList(list2);
        if (!list2.isEmpty()) {
            C1817a c1817a = list2.get(list2.size() - 1);
            this.f7257m = c1817a.f7263f + c1817a.f7260c;
        } else {
            this.f7257m = 0L;
        }
        if (j == -9223372036854775807L) {
            r10 = -9223372036854775807;
        } else {
            int i4 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            r10 = j;
            if (i4 < 0) {
                r10 = this.f7257m + j;
            }
        }
        this.f7246b = r10;
    }

    /* renamed from: a */
    public final long m42146a() {
        return this.f7247c + this.f7257m;
    }

    @Override // androidx.media2.exoplayer.external.offline.AbstractC1709a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC1818g mo42145a(List list) {
        return this;
    }
}
