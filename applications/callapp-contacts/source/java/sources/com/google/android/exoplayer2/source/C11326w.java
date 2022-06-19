package com.google.android.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.C10855ai;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.AbstractC10955c;
import com.google.android.exoplayer2.drm.AbstractC10958d;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11133l;
import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.C11145u;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.source.AbstractC11312p;
import com.google.android.exoplayer2.source.AbstractC11318s;
import com.google.android.exoplayer2.source.C11303k;
import com.google.android.exoplayer2.source.C11337z;
import com.google.android.exoplayer2.trackselection.AbstractC11436c;
import com.google.android.exoplayer2.upstream.AbstractC11533b;
import com.google.android.exoplayer2.upstream.AbstractC11563e;
import com.google.android.exoplayer2.upstream.AbstractC11567h;
import com.google.android.exoplayer2.upstream.AbstractC11585r;
import com.google.android.exoplayer2.upstream.C11570j;
import com.google.android.exoplayer2.upstream.C11588t;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11606f;
import com.google.android.exoplayer2.util.C11620q;
import com.google.android.exoplayer2.util.C11628u;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.google.android.exoplayer2.source.w */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/w.class */
public final class C11326w implements AbstractC11130j, AbstractC11312p, C11337z.AbstractC11339b, Loader.AbstractC11526a<C11327a>, Loader.AbstractC11530e {

    /* renamed from: i */
    private static final Map<String, String> f37172i;

    /* renamed from: j */
    private static final Format f37173j;

    /* renamed from: A */
    private boolean f37174A;

    /* renamed from: B */
    private boolean f37175B;

    /* renamed from: C */
    private C11331e f37176C;

    /* renamed from: D */
    private AbstractC11146v f37177D;

    /* renamed from: F */
    private boolean f37179F;

    /* renamed from: H */
    private boolean f37181H;

    /* renamed from: I */
    private boolean f37182I;

    /* renamed from: J */
    private int f37183J;

    /* renamed from: L */
    private long f37185L;

    /* renamed from: N */
    private boolean f37187N;

    /* renamed from: O */
    private int f37188O;

    /* renamed from: d */
    AbstractC11312p.AbstractC11313a f37191d;

    /* renamed from: f */
    boolean f37193f;

    /* renamed from: g */
    boolean f37194g;

    /* renamed from: h */
    boolean f37195h;

    /* renamed from: k */
    private final Uri f37196k;

    /* renamed from: l */
    private final AbstractC11567h f37197l;

    /* renamed from: m */
    private final AbstractC10958d f37198m;

    /* renamed from: n */
    private final AbstractC11585r f37199n;

    /* renamed from: o */
    private final AbstractC11318s.C11319a f37200o;

    /* renamed from: p */
    private final AbstractC10955c.C10956a f37201p;

    /* renamed from: q */
    private final AbstractC11328b f37202q;

    /* renamed from: r */
    private final AbstractC11533b f37203r;

    /* renamed from: s */
    private final String f37204s;

    /* renamed from: t */
    private final long f37205t;

    /* renamed from: u */
    private final AbstractC11325v f37206u;

    /* renamed from: y */
    private IcyHeaders f37210y;

    /* renamed from: b */
    final Loader f37189b = new Loader("Loader:ProgressiveMediaPeriod");

    /* renamed from: v */
    private final C11606f f37207v = new C11606f();

    /* renamed from: w */
    private final Runnable f37208w = new Runnable() { // from class: com.google.android.exoplayer2.source._$$Lambda$w$saaAER9CJxOgekRGyfbRza_5_pU
        @Override // java.lang.Runnable
        public final void run() {
            C11326w.this.m20875m();
        }
    };

    /* renamed from: x */
    private final Runnable f37209x = new Runnable() { // from class: com.google.android.exoplayer2.source._$$Lambda$w$WIrxI_byJgILmexE5Md8pnuiPgo
        @Override // java.lang.Runnable
        public final void run() {
            C11326w.this.m20869s();
        }
    };

    /* renamed from: c */
    final Handler f37190c = C11599af.m20001a();

    /* renamed from: z */
    private C11330d[] f37211z = new C11330d[0];

    /* renamed from: e */
    C11337z[] f37192e = new C11337z[0];

    /* renamed from: M */
    private long f37186M = -9223372036854775807L;

    /* renamed from: K */
    private long f37184K = -1;

    /* renamed from: E */
    private long f37178E = -9223372036854775807L;

    /* renamed from: G */
    private int f37180G = 1;

    /* renamed from: com.google.android.exoplayer2.source.w$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/w$a.class */
    public final class C11327a implements C11303k.AbstractC11304a, Loader.AbstractC11529d {

        /* renamed from: b */
        final C11588t f37213b;

        /* renamed from: c */
        long f37214c;

        /* renamed from: g */
        private final Uri f37218g;

        /* renamed from: h */
        private final AbstractC11325v f37219h;

        /* renamed from: i */
        private final AbstractC11130j f37220i;

        /* renamed from: j */
        private final C11606f f37221j;

        /* renamed from: l */
        private volatile boolean f37223l;

        /* renamed from: n */
        private AbstractC11150x f37225n;

        /* renamed from: o */
        private boolean f37226o;

        /* renamed from: k */
        private final C11145u f37222k = new C11145u();

        /* renamed from: m */
        private boolean f37224m = true;

        /* renamed from: e */
        long f37216e = -1;

        /* renamed from: a */
        final long f37212a = C11305l.m20965a();

        /* renamed from: d */
        C11570j f37215d = m20868a(0);

        public C11327a(Uri uri, AbstractC11567h abstractC11567h, AbstractC11325v abstractC11325v, AbstractC11130j abstractC11130j, C11606f c11606f) {
            C11326w.this = r6;
            this.f37218g = uri;
            this.f37213b = new C11588t(abstractC11567h);
            this.f37219h = abstractC11325v;
            this.f37220i = abstractC11130j;
            this.f37221j = c11606f;
        }

        /* renamed from: a */
        private C11570j m20868a(long j) {
            C11570j.C11572a c11572a = new C11570j.C11572a();
            c11572a.f38523a = this.f37218g;
            c11572a.f38528f = j;
            c11572a.f38530h = C11326w.this.f37204s;
            c11572a.f38531i = 6;
            c11572a.f38527e = C11326w.f37172i;
            return c11572a.m20073a();
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC11529d
        /* renamed from: a */
        public final void mo20188a() {
            this.f37223l = true;
        }

        /* renamed from: a */
        final void m20867a(long j, long j2) {
            this.f37222k.f36501a = j;
            this.f37214c = j2;
            this.f37224m = true;
            this.f37226o = false;
        }

        /* JADX WARN: Type inference failed for: r0v14, types: [long] */
        /* JADX WARN: Type inference failed for: r0v16, types: [long] */
        @Override // com.google.android.exoplayer2.source.C11303k.AbstractC11304a
        /* renamed from: a */
        public final void mo20866a(C11628u c11628u) {
            char max = !this.f37226o ? this.f37214c : Math.max(C11326w.this.m20872p(), this.f37214c);
            int m19812a = c11628u.m19812a();
            AbstractC11150x abstractC11150x = (AbstractC11150x) C11593a.m20020b(this.f37225n);
            abstractC11150x.mo20819b(c11628u, m19812a);
            abstractC11150x.mo20835a(max, 1, m19812a, 0, null);
            this.f37226o = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v108, types: [long] */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC11529d
        /* renamed from: b */
        public final void mo20187b() throws IOException {
            int i;
            int i2;
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 != 0 || this.f37223l) {
                    return;
                }
                int i5 = i4;
                try {
                    ?? r0 = this.f37222k.f36501a;
                    C11570j m20868a = m20868a((long) r0);
                    this.f37215d = m20868a;
                    long mo20035a = this.f37213b.mo20035a(m20868a);
                    this.f37216e = mo20035a;
                    if (mo20035a != -1) {
                        this.f37216e = mo20035a + r0;
                    }
                    C11326w.this.f37210y = IcyHeaders.parse(this.f37213b.mo20032b());
                    C11588t c11588t = this.f37213b;
                    AbstractC11563e abstractC11563e = c11588t;
                    if (C11326w.this.f37210y != null) {
                        abstractC11563e = c11588t;
                        if (C11326w.this.f37210y.metadataInterval != -1) {
                            abstractC11563e = new C11303k(this.f37213b, C11326w.this.f37210y.metadataInterval, this);
                            AbstractC11150x m20898a = C11326w.this.m20898a(new C11330d(0, true));
                            this.f37225n = m20898a;
                            m20898a.mo20831a(C11326w.f37173j);
                        }
                    }
                    this.f37219h.mo20911a(abstractC11563e, this.f37218g, this.f37213b.mo20032b(), r0, this.f37216e, this.f37220i);
                    if (C11326w.this.f37210y != null) {
                        this.f37219h.mo20910b();
                    }
                    int i6 = i4;
                    char c = r0;
                    if (this.f37224m) {
                        this.f37219h.mo20913a(r0, this.f37214c);
                        this.f37224m = false;
                        c = r0;
                        i6 = i4;
                    }
                    while (true) {
                        char c2 = c;
                        i = i6;
                        while (i == 0 && !this.f37223l) {
                            i5 = i;
                            try {
                                this.f37221j.m19896c();
                                int i7 = i;
                                i6 = this.f37219h.mo20912a(this.f37222k);
                                c = this.f37219h.mo20909c();
                                i = i6;
                                if (c > C11326w.this.f37205t + c2) {
                                    this.f37221j.m19897b();
                                    C11326w.this.f37190c.post(C11326w.this.f37209x);
                                }
                            } catch (InterruptedException e) {
                                int i8 = i;
                                i5 = i;
                                throw new InterruptedIOException();
                            }
                        }
                    }
                    if (i == 1) {
                        i2 = 0;
                    } else {
                        i2 = i;
                        if (this.f37219h.mo20909c() != -1) {
                            this.f37222k.f36501a = this.f37219h.mo20909c();
                            i2 = i;
                        }
                    }
                    C11599af.m19980a((AbstractC11567h) this.f37213b);
                    i3 = i2;
                } catch (Throwable th) {
                    if (i5 != 1 && this.f37219h.mo20909c() != -1) {
                        this.f37222k.f36501a = this.f37219h.mo20909c();
                    }
                    C11599af.m19980a((AbstractC11567h) this.f37213b);
                    throw th;
                }
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.w$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/w$b.class */
    public interface AbstractC11328b {
        /* renamed from: a */
        void mo20861a(long j, boolean z, boolean z2);
    }

    /* renamed from: com.google.android.exoplayer2.source.w$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/w$c.class */
    final class C11329c implements AbstractC11269aa {

        /* renamed from: a */
        final int f37227a;

        public C11329c(int i) {
            C11326w.this = r4;
            this.f37227a = i;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11269aa
        /* renamed from: a */
        public final int mo20864a(long j) {
            C11326w c11326w = C11326w.this;
            int i = this.f37227a;
            if (c11326w.m20878i()) {
                return 0;
            }
            c11326w.m20906a(i);
            C11337z c11337z = c11326w.f37192e[i];
            int m20822b = c11337z.m20822b(j, c11326w.f37194g);
            c11337z.m20838a(m20822b);
            if (m20822b == 0) {
                c11326w.m20892b(i);
            }
            return m20822b;
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x0130, code lost:
            if (r0.length < r21) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x014e, code lost:
            if (r0.length < r21) goto L34;
         */
        /* JADX WARN: Type inference failed for: r0v148, types: [long] */
        /* JADX WARN: Type inference failed for: r0v171, types: [long] */
        /* JADX WARN: Type inference failed for: r0v83, types: [long] */
        @Override // com.google.android.exoplayer2.source.AbstractC11269aa
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int mo20863a(com.google.android.exoplayer2.C11258q r9, com.google.android.exoplayer2.decoder.DecoderInputBuffer r10, boolean r11) {
            /*
                Method dump skipped, instructions count: 957
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.C11326w.C11329c.mo20863a(com.google.android.exoplayer2.q, com.google.android.exoplayer2.decoder.DecoderInputBuffer, boolean):int");
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11269aa
        /* renamed from: a */
        public final boolean mo20865a() {
            C11326w c11326w = C11326w.this;
            return !c11326w.m20878i() && c11326w.f37192e[this.f37227a].m20818b(c11326w.f37194g);
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11269aa
        /* renamed from: b */
        public final void mo20862b() throws IOException {
            C11326w c11326w = C11326w.this;
            C11337z c11337z = c11326w.f37192e[this.f37227a];
            if (c11337z.f37279d == null || c11337z.f37279d.mo21843c() != 1) {
                c11326w.m20879h();
                return;
            }
            throw ((DrmSession.DrmSessionException) C11593a.m20020b(c11337z.f37279d.mo21841e()));
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.w$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/w$d.class */
    public static final class C11330d {

        /* renamed from: a */
        public final int f37229a;

        /* renamed from: b */
        public final boolean f37230b;

        public C11330d(int i, boolean z) {
            this.f37229a = i;
            this.f37230b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C11330d c11330d = (C11330d) obj;
            return this.f37229a == c11330d.f37229a && this.f37230b == c11330d.f37230b;
        }

        public final int hashCode() {
            return (this.f37229a * 31) + (this.f37230b ? 1 : 0);
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.w$e */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/w$e.class */
    public static final class C11331e {

        /* renamed from: a */
        public final TrackGroupArray f37231a;

        /* renamed from: b */
        public final boolean[] f37232b;

        /* renamed from: c */
        public final boolean[] f37233c;

        /* renamed from: d */
        public final boolean[] f37234d;

        public C11331e(TrackGroupArray trackGroupArray, boolean[] zArr) {
            this.f37231a = trackGroupArray;
            this.f37232b = zArr;
            this.f37233c = new boolean[trackGroupArray.length];
            this.f37234d = new boolean[trackGroupArray.length];
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("Icy-MetaData", "1");
        f37172i = Collections.unmodifiableMap(hashMap);
        Format.C10828a c10828a = new Format.C10828a();
        c10828a.f34782a = "icy";
        c10828a.f34792k = "application/x-icy";
        f37173j = c10828a.m22321a();
    }

    public C11326w(Uri uri, AbstractC11567h abstractC11567h, AbstractC11133l abstractC11133l, AbstractC10958d abstractC10958d, AbstractC10955c.C10956a c10956a, AbstractC11585r abstractC11585r, AbstractC11318s.C11319a c11319a, AbstractC11328b abstractC11328b, AbstractC11533b abstractC11533b, String str, int i) {
        this.f37196k = uri;
        this.f37197l = abstractC11567h;
        this.f37198m = abstractC10958d;
        this.f37201p = c10956a;
        this.f37199n = abstractC11585r;
        this.f37200o = c11319a;
        this.f37202q = abstractC11328b;
        this.f37203r = abstractC11533b;
        this.f37204s = str;
        this.f37205t = i;
        this.f37206u = new C11290b(abstractC11133l);
    }

    /* renamed from: a */
    private void m20899a(C11327a c11327a) {
        if (this.f37184K == -1) {
            this.f37184K = c11327a.f37216e;
        }
    }

    /* renamed from: a */
    private boolean m20894a(boolean[] zArr, long j) {
        int length = this.f37192e.length;
        for (int i = 0; i < length; i++) {
            if (!this.f37192e[i].m20833a(j, false) && (zArr[i] || !this.f37175B)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public /* synthetic */ void m20890b(AbstractC11146v abstractC11146v) {
        this.f37177D = this.f37210y == null ? abstractC11146v : new AbstractC11146v.C11148b(-9223372036854775807L);
        this.f37178E = abstractC11146v.mo21387b();
        int i = 1;
        boolean z = this.f37184K == -1 && abstractC11146v.mo21387b() == -9223372036854775807L;
        this.f37179F = z;
        if (z) {
            i = 7;
        }
        this.f37180G = i;
        this.f37202q.mo20861a(this.f37178E, abstractC11146v.mo21389a(), this.f37179F);
        if (!this.f37193f) {
            m20875m();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c4, code lost:
        if (r11.f37211z[r14].f37230b != false) goto L32;
     */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m20875m() {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.C11326w.m20875m():void");
    }

    /* renamed from: n */
    private void m20874n() {
        C11327a c11327a = new C11327a(this.f37196k, this.f37197l, this.f37206u, this, this.f37207v);
        if (this.f37193f) {
            C11593a.m20019b(m20871q());
            long j = this.f37178E;
            if (j != -9223372036854775807L && this.f37186M > j) {
                this.f37194g = true;
                this.f37186M = -9223372036854775807L;
                return;
            }
            c11327a.m20867a(((AbstractC11146v) C11593a.m20020b(this.f37177D)).mo21388a(this.f37186M).f36502a.f36508c, this.f37186M);
            for (C11337z c11337z : this.f37192e) {
                c11337z.f37282g = this.f37186M;
            }
            this.f37186M = -9223372036854775807L;
        }
        this.f37188O = m20873o();
        this.f37200o.m20928a(new C11305l(c11327a.f37212a, c11327a.f37215d, this.f37189b.m20206a(c11327a, this, this.f37199n.mo20038a(this.f37180G))), (Format) null, c11327a.f37214c, this.f37178E);
    }

    /* renamed from: o */
    private int m20873o() {
        int i = 0;
        for (C11337z c11337z : this.f37192e) {
            i += c11337z.m20839a();
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: p */
    public long m20872p() {
        char c = 0;
        for (C11337z c11337z : this.f37192e) {
            c = Math.max((long) c, c11337z.m20817c());
        }
        return c;
    }

    /* renamed from: q */
    private boolean m20871q() {
        return this.f37186M != -9223372036854775807L;
    }

    @EnsuresNonNull({"trackState", "seekMap"})
    /* renamed from: r */
    private void m20870r() {
        C11593a.m20019b(this.f37193f);
        C11593a.m20020b(this.f37176C);
        C11593a.m20020b(this.f37177D);
    }

    /* renamed from: s */
    public /* synthetic */ void m20869s() {
        if (!this.f37195h) {
            ((AbstractC11312p.AbstractC11313a) C11593a.m20020b(this.f37191d)).mo20916a((AbstractC11312p.AbstractC11313a) this);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: D_ */
    public final void mo20908D_() throws IOException {
        m20879h();
        if (!this.f37194g || this.f37193f) {
            return;
        }
        throw new ParserException("Loading finished before preparation is complete.");
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: a */
    public final long mo20903a(long j, C10855ai c10855ai) {
        m20870r();
        if (!this.f37177D.mo21389a()) {
            return 0L;
        }
        AbstractC11146v.C11147a mo21388a = this.f37177D.mo21388a(j);
        long j2 = mo21388a.f36502a.f36507b;
        long j3 = mo21388a.f36503b.f36507b;
        if (c10855ai.f34921f == 0 && c10855ai.f34922g == 0) {
            return j;
        }
        long m19947b = C11599af.m19947b(j, c10855ai.f34921f);
        long m19994a = C11599af.m19994a(j, c10855ai.f34922g);
        boolean z = true;
        boolean z2 = m19947b <= j2 && j2 <= m19994a;
        if (m19947b > j3 || j3 > m19994a) {
            z = false;
        }
        return (!z2 || !z) ? z2 ? j2 : z ? j3 : m19947b : Math.abs(j2 - j) <= Math.abs(j3 - j) ? j2 : j3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: a */
    public final long mo20895a(AbstractC11436c[] abstractC11436cArr, boolean[] zArr, AbstractC11269aa[] abstractC11269aaArr, boolean[] zArr2, long j) {
        boolean z;
        char c;
        m20870r();
        TrackGroupArray trackGroupArray = this.f37176C.f37231a;
        boolean[] zArr3 = this.f37176C.f37233c;
        int i = this.f37183J;
        for (int i2 = 0; i2 < abstractC11436cArr.length; i2++) {
            if (abstractC11269aaArr[i2] != null && (abstractC11436cArr[i2] == null || !zArr[i2])) {
                int i3 = ((C11329c) abstractC11269aaArr[i2]).f37227a;
                C11593a.m20019b(zArr3[i3]);
                this.f37183J--;
                zArr3[i3] = false;
                abstractC11269aaArr[i2] = null;
            }
        }
        boolean z2 = !this.f37181H ? j != 0 : i == 0;
        int i4 = 0;
        while (true) {
            z = z2;
            if (i4 >= abstractC11436cArr.length) {
                break;
            }
            z2 = z;
            if (abstractC11269aaArr[i4] == null) {
                z2 = z;
                if (abstractC11436cArr[i4] != null) {
                    AbstractC11436c abstractC11436c = abstractC11436cArr[i4];
                    C11593a.m20019b(abstractC11436c.mo20557e() == 1);
                    C11593a.m20019b(abstractC11436c.mo20559b(0) == 0);
                    int indexOf = trackGroupArray.indexOf(abstractC11436c.mo20558d());
                    C11593a.m20019b(!zArr3[indexOf]);
                    this.f37183J++;
                    zArr3[indexOf] = true;
                    abstractC11269aaArr[i4] = new C11329c(indexOf);
                    zArr2[i4] = true;
                    z2 = z;
                    if (!z) {
                        C11337z c11337z = this.f37192e[indexOf];
                        z2 = !c11337z.m20833a(j, true) && c11337z.f37280e + c11337z.f37281f != 0;
                    }
                }
            }
            i4++;
        }
        if (this.f37183J == 0) {
            this.f37187N = false;
            this.f37182I = false;
            if (!this.f37189b.m20200b()) {
                C11337z[] c11337zArr = this.f37192e;
                int length = c11337zArr.length;
                int i5 = 0;
                while (true) {
                    c = j;
                    if (i5 >= length) {
                        break;
                    }
                    c11337zArr[i5].m20825a(false);
                    i5++;
                }
            } else {
                for (C11337z c11337z2 : this.f37192e) {
                    c11337z2.m20813e();
                }
                this.f37189b.m20198c();
                c = j;
            }
        } else {
            c = j;
            if (z) {
                ?? mo20891b = mo20891b(j);
                int i6 = 0;
                while (true) {
                    c = mo20891b;
                    if (i6 >= abstractC11269aaArr.length) {
                        break;
                    }
                    if (abstractC11269aaArr[i6] != null) {
                        zArr2[i6] = true;
                    }
                    i6++;
                }
            }
        }
        this.f37181H = true;
        return c;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11130j
    /* renamed from: a */
    public final AbstractC11150x mo20905a(int i, int i2) {
        return m20898a(new C11330d(i, false));
    }

    /* renamed from: a */
    final AbstractC11150x m20898a(C11330d c11330d) {
        int length = this.f37192e.length;
        for (int i = 0; i < length; i++) {
            if (c11330d.equals(this.f37211z[i])) {
                return this.f37192e[i];
            }
        }
        C11337z m20828a = C11337z.m20828a(this.f37203r, this.f37190c.getLooper(), this.f37198m, this.f37201p);
        m20828a.f37278c = this;
        int i2 = length + 1;
        C11330d[] c11330dArr = (C11330d[]) Arrays.copyOf(this.f37211z, i2);
        c11330dArr[length] = c11330d;
        this.f37211z = (C11330d[]) C11599af.m19955a((Object[]) c11330dArr);
        C11337z[] c11337zArr = (C11337z[]) Arrays.copyOf(this.f37192e, i2);
        c11337zArr[length] = m20828a;
        this.f37192e = (C11337z[]) C11599af.m19955a((Object[]) c11337zArr);
        return m20828a;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0125  */
    @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC11526a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.exoplayer2.upstream.Loader.C11527b mo20196a(com.google.android.exoplayer2.source.C11326w.C11327a r15, long r16, long r18, java.io.IOException r20, int r21) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.C11326w.mo20196a(com.google.android.exoplayer2.upstream.Loader$d, long, long, java.io.IOException, int):com.google.android.exoplayer2.upstream.Loader$b");
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11130j
    /* renamed from: a */
    public final void mo20907a() {
        this.f37174A = true;
        this.f37190c.post(this.f37208w);
    }

    /* renamed from: a */
    final void m20906a(int i) {
        m20870r();
        boolean[] zArr = this.f37176C.f37234d;
        if (!zArr[i]) {
            Format format = this.f37176C.f37231a.get(i).getFormat(0);
            this.f37200o.m20934a(C11620q.m19845g(format.sampleMimeType), format, this.f37185L);
            zArr[i] = true;
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: a */
    public final void mo20904a(long j) {
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: a */
    public final void mo20902a(long j, boolean z) {
        m20870r();
        if (m20871q()) {
            return;
        }
        boolean[] zArr = this.f37176C.f37233c;
        int length = this.f37192e.length;
        for (int i = 0; i < length; i++) {
            C11337z c11337z = this.f37192e[i];
            c11337z.f37276a.m20846a(c11337z.m20832a(j, z, zArr[i]));
        }
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11130j
    /* renamed from: a */
    public final void mo20901a(final AbstractC11146v abstractC11146v) {
        this.f37190c.post(new Runnable() { // from class: com.google.android.exoplayer2.source._$$Lambda$w$t_jh5hIYzbJhIp5SzJm_kc8J_es
            @Override // java.lang.Runnable
            public final void run() {
                C11326w.this.m20890b(abstractC11146v);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: a */
    public final void mo20900a(AbstractC11312p.AbstractC11313a abstractC11313a, long j) {
        this.f37191d = abstractC11313a;
        this.f37207v.m19898a();
        m20874n();
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC11526a
    /* renamed from: a */
    public final /* synthetic */ void mo20197a(C11327a c11327a, long j, long j2) {
        AbstractC11146v abstractC11146v;
        C11327a c11327a2 = c11327a;
        if (this.f37178E == -9223372036854775807L && (abstractC11146v = this.f37177D) != null) {
            boolean mo21389a = abstractC11146v.mo21389a();
            long m20872p = m20872p();
            char c = m20872p == Long.MIN_VALUE ? (char) 0 : m20872p + 10000;
            this.f37178E = c;
            this.f37202q.mo20861a(c, mo21389a, this.f37179F);
        }
        C11588t c11588t = c11327a2.f37213b;
        this.f37200o.m20921b(new C11305l(c11327a2.f37212a, c11327a2.f37215d, c11588t.f38621b, c11588t.f38622c, j, j2, c11588t.f38620a), null, c11327a2.f37214c, this.f37178E);
        m20899a(c11327a2);
        this.f37194g = true;
        ((AbstractC11312p.AbstractC11313a) C11593a.m20020b(this.f37191d)).mo20916a((AbstractC11312p.AbstractC11313a) this);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC11526a
    /* renamed from: a */
    public final /* synthetic */ void mo20195a(C11327a c11327a, long j, long j2, boolean z) {
        C11327a c11327a2 = c11327a;
        C11588t c11588t = c11327a2.f37213b;
        this.f37200o.m20929a(new C11305l(c11327a2.f37212a, c11327a2.f37215d, c11588t.f38621b, c11588t.f38622c, j, j2, c11588t.f38620a), c11327a2.f37214c, this.f37178E);
        if (!z) {
            m20899a(c11327a2);
            for (C11337z c11337z : this.f37192e) {
                c11337z.m20825a(false);
            }
            if (this.f37183J <= 0) {
                return;
            }
            ((AbstractC11312p.AbstractC11313a) C11593a.m20020b(this.f37191d)).mo20916a((AbstractC11312p.AbstractC11313a) this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.exoplayer2.source.w] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: b */
    public final long mo20891b(long j) {
        m20870r();
        boolean[] zArr = this.f37176C.f37232b;
        ?? r6 = j;
        if (!this.f37177D.mo21389a()) {
            r6 = 0;
        }
        this.f37182I = false;
        this.f37185L = r6;
        if (m20871q()) {
            this.f37186M = r6;
            return r6;
        } else if (this.f37180G != 7 && m20894a(zArr, r6)) {
            return r6;
        } else {
            this.f37187N = false;
            this.f37186M = r6;
            this.f37194g = false;
            if (this.f37189b.m20200b()) {
                for (C11337z c11337z : this.f37192e) {
                    c11337z.m20813e();
                }
                this.f37189b.m20198c();
            } else {
                this.f37189b.f38357e = null;
                for (C11337z c11337z2 : this.f37192e) {
                    c11337z2.m20825a(false);
                }
            }
            return r6;
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: b */
    public final TrackGroupArray mo20893b() {
        m20870r();
        return this.f37176C.f37231a;
    }

    /* renamed from: b */
    final void m20892b(int i) {
        m20870r();
        boolean[] zArr = this.f37176C.f37232b;
        if (!this.f37187N || !zArr[i] || this.f37192e[i].m20818b(false)) {
            return;
        }
        this.f37186M = 0L;
        this.f37187N = false;
        this.f37182I = true;
        this.f37185L = 0L;
        this.f37188O = 0;
        for (C11337z c11337z : this.f37192e) {
            c11337z.m20825a(false);
        }
        ((AbstractC11312p.AbstractC11313a) C11593a.m20020b(this.f37191d)).mo20916a((AbstractC11312p.AbstractC11313a) this);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: c */
    public final long mo20888c() {
        if (this.f37182I) {
            if (!this.f37194g && m20873o() <= this.f37188O) {
                return -9223372036854775807L;
            }
            this.f37182I = false;
            return this.f37185L;
        }
        return -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: c */
    public final boolean mo20887c(long j) {
        if (this.f37194g || this.f37189b.m20208a() || this.f37187N) {
            return false;
        }
        if (this.f37193f && this.f37183J == 0) {
            return false;
        }
        boolean m19898a = this.f37207v.m19898a();
        if (!this.f37189b.m20200b()) {
            m20874n();
            m19898a = true;
        }
        return m19898a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: d */
    public final long mo20885d() {
        char c;
        m20870r();
        boolean[] zArr = this.f37176C.f37232b;
        if (this.f37194g) {
            return Long.MIN_VALUE;
        }
        if (m20871q()) {
            return this.f37186M;
        }
        if (this.f37175B) {
            int length = this.f37192e.length;
            int i = 0;
            ?? r0 = 9223372036854775807;
            while (true) {
                char c2 = r0;
                c = c2;
                if (i >= length) {
                    break;
                }
                char c3 = c2;
                if (zArr[i]) {
                    c3 = c2;
                    if (!this.f37192e[i].m20815d()) {
                        c3 = Math.min((long) c2, this.f37192e[i].m20817c());
                    }
                }
                i++;
                r0 = c3;
            }
        } else {
            c = 65535;
        }
        char c4 = c;
        if (c == Long.MAX_VALUE) {
            c4 = m20872p();
        }
        return c4 == Long.MIN_VALUE ? this.f37185L : c4;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: e */
    public final long mo20883e() {
        if (this.f37183J == 0) {
            return Long.MIN_VALUE;
        }
        return mo20885d();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: f */
    public final boolean mo20881f() {
        return this.f37189b.m20200b() && this.f37207v.m19895d();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC11530e
    /* renamed from: g */
    public final void mo20186g() {
        C11337z[] c11337zArr;
        for (C11337z c11337z : this.f37192e) {
            c11337z.m20825a(true);
            c11337z.m20811f();
        }
        this.f37206u.mo20914a();
    }

    /* renamed from: h */
    final void m20879h() throws IOException {
        this.f37189b.m20207a(this.f37199n.mo20038a(this.f37180G));
    }

    /* renamed from: i */
    final boolean m20878i() {
        return this.f37182I || m20871q();
    }

    @Override // com.google.android.exoplayer2.source.C11337z.AbstractC11339b
    /* renamed from: j */
    public final void mo20806j() {
        this.f37190c.post(this.f37208w);
    }
}
