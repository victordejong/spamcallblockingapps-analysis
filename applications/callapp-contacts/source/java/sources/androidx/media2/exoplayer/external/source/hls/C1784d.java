package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import android.os.SystemClock;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.BehindLiveWindowException;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.hls.playlist.C1816f;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker;
import androidx.media2.exoplayer.external.source.p070a.AbstractC1719a;
import androidx.media2.exoplayer.external.source.p070a.AbstractC1720b;
import androidx.media2.exoplayer.external.source.p070a.AbstractC1721c;
import androidx.media2.exoplayer.external.source.p070a.AbstractC1723e;
import androidx.media2.exoplayer.external.trackselection.AbstractC1934b;
import androidx.media2.exoplayer.external.trackselection.AbstractC1940e;
import androidx.media2.exoplayer.external.upstream.AbstractC1968f;
import androidx.media2.exoplayer.external.upstream.AbstractC1990w;
import androidx.media2.exoplayer.external.upstream.C1971h;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1995ab;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.exoplayer.external.source.hls.d */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/d.class */
public final class C1784d {

    /* renamed from: a */
    final Uri[] f7051a;

    /* renamed from: b */
    final TrackGroup f7052b;

    /* renamed from: d */
    boolean f7054d;

    /* renamed from: e */
    byte[] f7055e;

    /* renamed from: f */
    IOException f7056f;

    /* renamed from: g */
    Uri f7057g;

    /* renamed from: h */
    AbstractC1940e f7058h;

    /* renamed from: i */
    boolean f7059i;

    /* renamed from: j */
    private final AbstractC1791f f7060j;

    /* renamed from: k */
    private final AbstractC1968f f7061k;

    /* renamed from: l */
    private final AbstractC1968f f7062l;

    /* renamed from: m */
    private final C1803o f7063m;

    /* renamed from: n */
    private final Format[] f7064n;

    /* renamed from: o */
    private final HlsPlaylistTracker f7065o;

    /* renamed from: p */
    private final List<Format> f7066p;

    /* renamed from: q */
    private boolean f7067q;

    /* renamed from: c */
    final C1786b f7053c = new C1786b();

    /* renamed from: r */
    private long f7068r = -9223372036854775807L;

    /* renamed from: androidx.media2.exoplayer.external.source.hls.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/d$a.class */
    public static final class C1785a extends AbstractC1721c {

        /* renamed from: j */
        byte[] f7069j;

        public C1785a(AbstractC1968f abstractC1968f, C1971h c1971h, Format format, int i, Object obj, byte[] bArr) {
            super(abstractC1968f, c1971h, 3, format, i, obj, bArr);
        }

        @Override // androidx.media2.exoplayer.external.source.p070a.AbstractC1721c
        /* renamed from: a */
        public final void mo42233a(byte[] bArr, int i) {
            this.f7069j = Arrays.copyOf(bArr, i);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.hls.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/d$b.class */
    public static final class C1786b extends LinkedHashMap<Uri, byte[]> {
        public C1786b() {
            super(8, 1.0f, false);
        }

        /* renamed from: a */
        public final byte[] put(Uri uri, byte[] bArr) {
            return (byte[]) super.put(uri, (byte[]) C1993a.m41690a(bArr));
        }

        /* renamed from: a */
        public final byte[] get(Object obj) {
            if (obj == null) {
                return null;
            }
            return (byte[]) super.get(obj);
        }

        @Override // java.util.LinkedHashMap
        protected final boolean removeEldestEntry(Map.Entry<Uri, byte[]> entry) {
            return size() > 4;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.hls.d$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/d$c.class */
    public static final class C1787c {

        /* renamed from: a */
        public AbstractC1720b f7070a;

        /* renamed from: b */
        public boolean f7071b;

        /* renamed from: c */
        public Uri f7072c;

        public C1787c() {
            m42230a();
        }

        /* renamed from: a */
        public final void m42230a() {
            this.f7070a = null;
            this.f7071b = false;
            this.f7072c = null;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.hls.d$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/d$d.class */
    public static final class C1788d extends AbstractC1719a {

        /* renamed from: b */
        private final C1816f f7073b;

        /* renamed from: c */
        private final long f7074c;

        public C1788d(C1816f c1816f, long j, int i) {
            super(i, c1816f.f7256l.size() - 1);
            this.f7073b = c1816f;
            this.f7074c = j;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.source.hls.d$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/d$e.class */
    public static final class C1789e extends AbstractC1934b {

        /* renamed from: a */
        private int f7075a;

        public C1789e(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
            this.f7075a = m41840a(trackGroup.getFormat(0));
        }

        @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e
        /* renamed from: a */
        public final int mo41837a() {
            return this.f7075a;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1934b, androidx.media2.exoplayer.external.trackselection.AbstractC1940e
        /* renamed from: a */
        public final void mo41833a(long j, long j2, long j3) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (!m41839b(this.f7075a, elapsedRealtime)) {
                return;
            }
            for (int i = this.f7802c - 1; i >= 0; i--) {
                if (!m41839b(i, elapsedRealtime)) {
                    this.f7075a = i;
                    return;
                }
            }
            throw new IllegalStateException();
        }

        @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e
        /* renamed from: b */
        public final int mo41832b() {
            return 0;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e
        /* renamed from: c */
        public final Object mo41830c() {
            return null;
        }
    }

    public C1784d(AbstractC1791f abstractC1791f, HlsPlaylistTracker hlsPlaylistTracker, Uri[] uriArr, Format[] formatArr, AbstractC1790e abstractC1790e, AbstractC1990w abstractC1990w, C1803o c1803o, List<Format> list) {
        this.f7060j = abstractC1791f;
        this.f7065o = hlsPlaylistTracker;
        this.f7051a = uriArr;
        this.f7064n = formatArr;
        this.f7063m = c1803o;
        this.f7066p = list;
        AbstractC1968f mo42229a = abstractC1790e.mo42229a();
        this.f7061k = mo42229a;
        if (abstractC1990w != null) {
            mo42229a.mo41697a(abstractC1990w);
        }
        this.f7062l = abstractC1790e.mo42229a();
        this.f7052b = new TrackGroup(formatArr);
        int[] iArr = new int[uriArr.length];
        for (int i = 0; i < uriArr.length; i++) {
            iArr[i] = i;
        }
        this.f7058h = new C1789e(this.f7052b, iArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* renamed from: a */
    private long m42235a(C1794h c1794h, boolean z, C1816f c1816f, long j, long j2) {
        char m41650a;
        char c;
        if (c1794h == null || z) {
            long j3 = c1816f.f7257m;
            char c2 = j2;
            if (c1794h != null) {
                c2 = this.f7067q ? j2 : c1794h.f6759f;
            }
            if (c1816f.f7253i || c2 < j3 + j) {
                m41650a = C1996ac.m41650a(c1816f.f7256l, Long.valueOf(c2 - j), !this.f7065o.mo42163e() || c1794h == null);
                c = c1816f.f7250f;
            } else {
                m41650a = c1816f.f7250f;
                c = c1816f.f7256l.size();
            }
            return m41650a + c;
        }
        return c1794h.m42374f();
    }

    /* renamed from: a */
    private static Uri m42234a(C1816f c1816f, C1816f.C1817a c1817a) {
        if (c1817a == null || c1817a.f7265h == null) {
            return null;
        }
        return C1995ab.m41681a(c1816f.f7270n, c1817a.f7265h);
    }

    /* renamed from: a */
    private AbstractC1720b m42237a(Uri uri, int i) {
        if (uri == null) {
            return null;
        }
        if (!this.f7053c.containsKey(uri)) {
            return new C1785a(this.f7062l, new C1971h(uri, 0L, -1L, null, 1), this.f7064n[i], this.f7058h.mo41832b(), this.f7058h.mo41830c(), this.f7055e);
        }
        C1786b c1786b = this.f7053c;
        c1786b.put(uri, (byte[]) c1786b.remove(uri));
        return null;
    }

    /* renamed from: a */
    public final void m42239a() throws IOException {
        IOException iOException = this.f7056f;
        if (iOException == null) {
            Uri uri = this.f7057g;
            if (uri == null || !this.f7059i) {
                return;
            }
            this.f7065o.mo42171b(uri);
            return;
        }
        throw iOException;
    }

    /* JADX WARN: Type inference failed for: r0v111, types: [long] */
    /* JADX WARN: Type inference failed for: r0v117, types: [long] */
    /* JADX WARN: Type inference failed for: r0v121, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    /* JADX WARN: Type inference failed for: r0v93, types: [long] */
    /* JADX WARN: Type inference failed for: r0v96, types: [long] */
    /* renamed from: a */
    public final void m42238a(long j, long j2, List<C1794h> list, boolean z, C1787c c1787c) {
        char c;
        char c2;
        C1794h c1794h = list.isEmpty() ? null : list.get(list.size() - 1);
        int indexOf = c1794h == null ? -1 : this.f7052b.indexOf(c1794h.f6756c);
        ?? r0 = j2 - j;
        long j3 = this.f7068r;
        boolean z2 = (j3 > (-9223372036854775807L) ? 1 : (j3 == (-9223372036854775807L) ? 0 : -1)) != 0 ? j3 - j : true;
        char c3 = r0;
        boolean z3 = z2;
        if (c1794h != null) {
            c3 = r0;
            z3 = z2;
            if (!this.f7067q) {
                long j4 = c1794h.f6760g - c1794h.f6759f;
                ?? max = Math.max(0L, r0 - j4);
                c3 = max;
                z3 = z2;
                if ((z2 ? 1L : 0L) != -9223372036854775807L) {
                    z3 = Math.max(0L, (z2 ? 1L : 0L) - j4);
                    c3 = max;
                }
            }
        }
        m42236a(c1794h, j2);
        this.f7058h.mo41833a(j, c3, z3 ? 1L : 0L);
        int mo41824h = this.f7058h.mo41824h();
        boolean z4 = indexOf != mo41824h;
        Uri uri = this.f7051a[mo41824h];
        if (!this.f7065o.mo42181a(uri)) {
            c1787c.f7072c = uri;
            this.f7059i &= uri.equals(this.f7057g);
            this.f7057g = uri;
            return;
        }
        C1816f mo42179a = this.f7065o.mo42179a(uri, true);
        this.f7067q = mo42179a.f7272p;
        this.f7068r = mo42179a.f7253i ? (char) 1 : mo42179a.m42146a() - this.f7065o.mo42168c();
        char mo42168c = mo42179a.f7247c - this.f7065o.mo42168c();
        C1816f c1816f = mo42179a;
        char m42235a = m42235a(c1794h, z4, mo42179a, mo42168c, j2);
        if (m42235a >= c1816f.f7250f || c1794h == null || !z4) {
            indexOf = mo41824h;
            c2 = mo42168c;
            c = m42235a;
        } else {
            uri = this.f7051a[indexOf];
            c1816f = this.f7065o.mo42179a(uri, true);
            c2 = c1816f.f7247c - this.f7065o.mo42168c();
            c = c1794h.m42374f();
        }
        if (c < c1816f.f7250f) {
            this.f7056f = new BehindLiveWindowException();
            return;
        }
        int i = (int) (c - c1816f.f7250f);
        int size = c1816f.f7256l.size();
        if (i >= size) {
            if (!c1816f.f7253i) {
                c1787c.f7072c = uri;
                this.f7059i &= uri.equals(this.f7057g);
                this.f7057g = uri;
                return;
            } else if (z || size == 0) {
                c1787c.f7071b = true;
                return;
            } else {
                i = size - 1;
            }
        }
        this.f7059i = false;
        this.f7057g = null;
        C1816f.C1817a c1817a = c1816f.f7256l.get(i);
        Uri m42234a = m42234a(c1816f, c1817a.f7259b);
        c1787c.f7070a = m42237a(m42234a, indexOf);
        if (c1787c.f7070a != null) {
            return;
        }
        Uri m42234a2 = m42234a(c1816f, c1817a);
        c1787c.f7070a = m42237a(m42234a2, indexOf);
        if (c1787c.f7070a != null) {
            return;
        }
        c1787c.f7070a = C1794h.m42226a(this.f7060j, this.f7061k, this.f7064n[indexOf], c2, c1816f, i, uri, this.f7066p, this.f7058h.mo41832b(), this.f7058h.mo41830c(), this.f7054d, this.f7063m, c1794h, this.f7053c.get(m42234a2), this.f7053c.get(m42234a));
    }

    /* renamed from: a */
    public final AbstractC1723e[] m42236a(C1794h c1794h, long j) {
        int indexOf = c1794h == null ? -1 : this.f7052b.indexOf(c1794h.f6756c);
        int mo41826f = this.f7058h.mo41826f();
        AbstractC1723e[] abstractC1723eArr = new AbstractC1723e[mo41826f];
        for (int i = 0; i < mo41826f; i++) {
            int mo41831b = this.f7058h.mo41831b(i);
            Uri uri = this.f7051a[mo41831b];
            if (!this.f7065o.mo42181a(uri)) {
                abstractC1723eArr[i] = AbstractC1723e.f6765a;
            } else {
                C1816f mo42179a = this.f7065o.mo42179a(uri, false);
                long mo42168c = mo42179a.f7247c - this.f7065o.mo42168c();
                long m42235a = m42235a(c1794h, mo41831b != indexOf, mo42179a, mo42168c, j);
                if (m42235a < mo42179a.f7250f) {
                    abstractC1723eArr[i] = AbstractC1723e.f6765a;
                } else {
                    abstractC1723eArr[i] = new C1788d(mo42179a, mo42168c, (int) (m42235a - mo42179a.f7250f));
                }
            }
        }
        return abstractC1723eArr;
    }
}
