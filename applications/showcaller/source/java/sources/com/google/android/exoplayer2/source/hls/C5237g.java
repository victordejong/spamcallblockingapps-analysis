package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.os.SystemClock;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.hls.playlist.C5266f;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.source.p251e0.AbstractC5218a;
import com.google.android.exoplayer2.source.p251e0.AbstractC5219b;
import com.google.android.exoplayer2.source.p251e0.AbstractC5220c;
import com.google.android.exoplayer2.source.p251e0.AbstractC5221d;
import com.google.android.exoplayer2.source.p251e0.AbstractC5222e;
import com.google.android.exoplayer2.trackselection.AbstractC5401b;
import com.google.android.exoplayer2.trackselection.AbstractC5408f;
import com.google.android.exoplayer2.upstream.AbstractC5478j;
import com.google.android.exoplayer2.upstream.AbstractC5497x;
import com.google.android.exoplayer2.upstream.C5481l;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5513g0;
import com.google.android.exoplayer2.util.C5515h0;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.source.hls.g */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/g.class */
public class C5237g {

    /* renamed from: a */
    private final AbstractC5243i f16462a;

    /* renamed from: b */
    private final AbstractC5478j f16463b;

    /* renamed from: c */
    private final AbstractC5478j f16464c;

    /* renamed from: d */
    private final C5253o f16465d;

    /* renamed from: e */
    private final Uri[] f16466e;

    /* renamed from: f */
    private final Format[] f16467f;

    /* renamed from: g */
    private final HlsPlaylistTracker f16468g;

    /* renamed from: h */
    private final TrackGroup f16469h;

    /* renamed from: i */
    private final List<Format> f16470i;

    /* renamed from: k */
    private boolean f16472k;

    /* renamed from: m */
    private IOException f16474m;

    /* renamed from: n */
    private Uri f16475n;

    /* renamed from: o */
    private boolean f16476o;

    /* renamed from: p */
    private AbstractC5408f f16477p;

    /* renamed from: r */
    private boolean f16479r;

    /* renamed from: j */
    private final FullSegmentEncryptionKeyCache f16471j = new FullSegmentEncryptionKeyCache(4);

    /* renamed from: l */
    private byte[] f16473l = C5515h0.f17881f;

    /* renamed from: q */
    private long f16478q = -9223372036854775807L;

    /* renamed from: com.google.android.exoplayer2.source.hls.g$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/g$a.class */
    public static final class C5238a extends AbstractC5220c {

        /* renamed from: k */
        private byte[] f16480k;

        public C5238a(AbstractC5478j abstractC5478j, C5481l c5481l, Format format, int i, Object obj, byte[] bArr) {
            super(abstractC5478j, c5481l, 3, format, i, obj, bArr);
        }

        @Override // com.google.android.exoplayer2.source.p251e0.AbstractC5220c
        /* renamed from: g */
        protected void mo20061g(byte[] bArr, int i) {
            this.f16480k = Arrays.copyOf(bArr, i);
        }

        /* renamed from: j */
        public byte[] m20060j() {
            return this.f16480k;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.hls.g$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/g$b.class */
    public static final class C5239b {

        /* renamed from: a */
        public AbstractC5219b f16481a;

        /* renamed from: b */
        public boolean f16482b;

        /* renamed from: c */
        public Uri f16483c;

        public C5239b() {
            m20059a();
        }

        /* renamed from: a */
        public void m20059a() {
            this.f16481a = null;
            this.f16482b = false;
            this.f16483c = null;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.hls.g$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/g$c.class */
    public static final class C5240c extends AbstractC5218a {

        /* renamed from: e */
        private final C5266f f16484e;

        /* renamed from: f */
        private final long f16485f;

        public C5240c(C5266f c5266f, long j, int i) {
            super(i, c5266f.f16674o.size() - 1);
            this.f16484e = c5266f;
            this.f16485f = j;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.source.hls.g$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/g$d.class */
    public static final class C5241d extends AbstractC5401b {

        /* renamed from: g */
        private int f16486g;

        public C5241d(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
            this.f16486g = m19309p(trackGroup.m20159a(0));
        }

        @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
        /* renamed from: b */
        public int mo19294b() {
            return this.f16486g;
        }

        @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
        /* renamed from: h */
        public void mo19288h(long j, long j2, long j3, List<? extends AbstractC5221d> list, AbstractC5222e[] abstractC5222eArr) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (!m19308q(this.f16486g, elapsedRealtime)) {
                return;
            }
            for (int i = this.f17365b - 1; i >= 0; i--) {
                if (!m19308q(i, elapsedRealtime)) {
                    this.f16486g = i;
                    return;
                }
            }
            throw new IllegalStateException();
        }

        @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
        /* renamed from: k */
        public int mo19285k() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
        /* renamed from: m */
        public Object mo19283m() {
            return null;
        }
    }

    public C5237g(AbstractC5243i abstractC5243i, HlsPlaylistTracker hlsPlaylistTracker, Uri[] uriArr, Format[] formatArr, AbstractC5242h abstractC5242h, AbstractC5497x abstractC5497x, C5253o c5253o, List<Format> list) {
        this.f16462a = abstractC5243i;
        this.f16468g = hlsPlaylistTracker;
        this.f16466e = uriArr;
        this.f16467f = formatArr;
        this.f16465d = c5253o;
        this.f16470i = list;
        AbstractC5478j mo20058a = abstractC5242h.mo20058a(1);
        this.f16463b = mo20058a;
        if (abstractC5497x != null) {
            mo20058a.mo18950a(abstractC5497x);
        }
        this.f16464c = abstractC5242h.mo20058a(3);
        this.f16469h = new TrackGroup(formatArr);
        int[] iArr = new int[uriArr.length];
        for (int i = 0; i < uriArr.length; i++) {
            iArr[i] = i;
        }
        this.f16477p = new C5241d(this.f16469h, iArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* renamed from: b */
    private long m20076b(C5246k c5246k, boolean z, C5266f c5266f, long j, long j2) {
        char m18837e;
        char c;
        if (c5246k == null || z) {
            long j3 = c5266f.f16675p;
            char c2 = j2;
            if (c5246k != null) {
                c2 = this.f16476o ? j2 : c5246k.f16401f;
            }
            if (c5266f.f16671l || c2 < j3 + j) {
                m18837e = C5515h0.m18837e(c5266f.f16674o, Long.valueOf(c2 - j), true, !this.f16468g.mo19947e() || c5246k == null);
                c = c5266f.f16668i;
            } else {
                m18837e = c5266f.f16668i;
                c = c5266f.f16674o.size();
            }
            return m18837e + c;
        }
        return c5246k.m20098g();
    }

    /* renamed from: c */
    private static Uri m20075c(C5266f c5266f, C5266f.C5267a c5267a) {
        String str;
        if (c5267a == null || (str = c5267a.f16683k) == null) {
            return null;
        }
        return C5513g0.m18877d(c5266f.f16688a, str);
    }

    /* renamed from: h */
    private AbstractC5219b m20070h(Uri uri, int i) {
        if (uri == null) {
            return null;
        }
        byte[] m20095c = this.f16471j.m20095c(uri);
        if (m20095c != null) {
            this.f16471j.m20096b(uri, m20095c);
            return null;
        }
        return new C5238a(this.f16464c, new C5481l(uri, 0L, -1L, null, 1), this.f16467f[i], this.f16477p.mo19285k(), this.f16477p.mo19283m(), this.f16473l);
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: m */
    private long m20065m(long j) {
        long j2 = this.f16478q;
        char c = 1;
        if (j2 != -9223372036854775807L) {
            c = j2 - j;
        }
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: p */
    private void m20062p(C5266f c5266f) {
        this.f16478q = c5266f.f16671l ? (char) 1 : c5266f.m19903e() - this.f16468g.mo19948d();
    }

    /* renamed from: a */
    public AbstractC5222e[] m20077a(C5246k c5246k, long j) {
        int m20158b = c5246k == null ? -1 : this.f16469h.m20158b(c5246k.f16398c);
        int length = this.f16477p.length();
        AbstractC5222e[] abstractC5222eArr = new AbstractC5222e[length];
        for (int i = 0; i < length; i++) {
            int mo19289g = this.f16477p.mo19289g(i);
            Uri uri = this.f16466e[mo19289g];
            if (!this.f16468g.mo19951a(uri)) {
                abstractC5222eArr[i] = AbstractC5222e.f16407a;
            } else {
                C5266f mo19941m = this.f16468g.mo19941m(uri, false);
                C5508e.m18911e(mo19941m);
                long mo19948d = mo19941m.f16665f - this.f16468g.mo19948d();
                long m20076b = m20076b(c5246k, mo19289g != m20158b, mo19941m, mo19948d, j);
                long j2 = mo19941m.f16668i;
                if (m20076b < j2) {
                    abstractC5222eArr[i] = AbstractC5222e.f16407a;
                } else {
                    abstractC5222eArr[i] = new C5240c(mo19941m, mo19948d, (int) (m20076b - j2));
                }
            }
        }
        return abstractC5222eArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0104  */
    /* JADX WARN: Type inference failed for: r0v112, types: [long] */
    /* JADX WARN: Type inference failed for: r0v117, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r0v97, types: [long] */
    /* JADX WARN: Type inference failed for: r0v99, types: [long] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m20074d(long r20, long r22, java.util.List<com.google.android.exoplayer2.source.hls.C5246k> r24, boolean r25, com.google.android.exoplayer2.source.hls.C5237g.C5239b r26) {
        /*
            Method dump skipped, instructions count: 711
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.C5237g.m20074d(long, long, java.util.List, boolean, com.google.android.exoplayer2.source.hls.g$b):void");
    }

    /* renamed from: e */
    public TrackGroup m20073e() {
        return this.f16469h;
    }

    /* renamed from: f */
    public AbstractC5408f m20072f() {
        return this.f16477p;
    }

    /* renamed from: g */
    public boolean m20071g(AbstractC5219b abstractC5219b, long j) {
        AbstractC5408f abstractC5408f = this.f16477p;
        return abstractC5408f.mo19293c(abstractC5408f.mo19281o(this.f16469h.m20158b(abstractC5219b.f16398c)), j);
    }

    /* renamed from: i */
    public void m20069i() {
        IOException iOException = this.f16474m;
        if (iOException == null) {
            Uri uri = this.f16475n;
            if (uri == null || !this.f16479r) {
                return;
            }
            this.f16468g.mo19949c(uri);
            return;
        }
        throw iOException;
    }

    /* renamed from: j */
    public void m20068j(AbstractC5219b abstractC5219b) {
        if (abstractC5219b instanceof C5238a) {
            C5238a c5238a = (C5238a) abstractC5219b;
            this.f16473l = c5238a.m20100h();
            this.f16471j.m20096b(c5238a.f16396a.f17746a, (byte[]) C5508e.m18911e(c5238a.m20060j()));
        }
    }

    /* renamed from: k */
    public boolean m20067k(Uri uri, long j) {
        int mo19281o;
        boolean z = false;
        int i = 0;
        while (true) {
            Uri[] uriArr = this.f16466e;
            if (i >= uriArr.length) {
                i = -1;
                break;
            } else if (uriArr[i].equals(uri)) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1 || (mo19281o = this.f16477p.mo19281o(i)) == -1) {
            return true;
        }
        this.f16479r = uri.equals(this.f16475n) | this.f16479r;
        if (j == -9223372036854775807L || this.f16477p.mo19293c(mo19281o, j)) {
            z = true;
        }
        return z;
    }

    /* renamed from: l */
    public void m20066l() {
        this.f16474m = null;
    }

    /* renamed from: n */
    public void m20064n(boolean z) {
        this.f16472k = z;
    }

    /* renamed from: o */
    public void m20063o(AbstractC5408f abstractC5408f) {
        this.f16477p = abstractC5408f;
    }
}
