package com.google.android.exoplayer2.upstream.cache;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.AbstractC11565g;
import com.google.android.exoplayer2.upstream.AbstractC11567h;
import com.google.android.exoplayer2.upstream.AbstractC11590v;
import com.google.android.exoplayer2.upstream.C11570j;
import com.google.android.exoplayer2.upstream.C11584q;
import com.google.android.exoplayer2.upstream.C11587s;
import com.google.android.exoplayer2.upstream.C11589u;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.cache.AbstractC11555j;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.upstream.cache.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/a.class */
public final class C11540a implements AbstractC11567h {

    /* renamed from: a */
    private final Cache f38409a;

    /* renamed from: b */
    private final AbstractC11567h f38410b;

    /* renamed from: c */
    private final AbstractC11567h f38411c;

    /* renamed from: d */
    private final AbstractC11567h f38412d;

    /* renamed from: e */
    private final AbstractC11547f f38413e;

    /* renamed from: f */
    private final AbstractC11542a f38414f;

    /* renamed from: g */
    private final boolean f38415g;

    /* renamed from: h */
    private final boolean f38416h;

    /* renamed from: i */
    private final boolean f38417i;

    /* renamed from: j */
    private Uri f38418j;

    /* renamed from: k */
    private C11570j f38419k;

    /* renamed from: l */
    private AbstractC11567h f38420l;

    /* renamed from: m */
    private boolean f38421m;

    /* renamed from: n */
    private long f38422n;

    /* renamed from: o */
    private long f38423o;

    /* renamed from: p */
    private C11548g f38424p;

    /* renamed from: q */
    private boolean f38425q;

    /* renamed from: r */
    private boolean f38426r;

    /* renamed from: s */
    private long f38427s;

    /* renamed from: t */
    private long f38428t;

    /* renamed from: com.google.android.exoplayer2.upstream.cache.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/a$a.class */
    public interface AbstractC11542a {
    }

    public C11540a(Cache cache, AbstractC11567h abstractC11567h) {
        this(cache, abstractC11567h, 0);
    }

    public C11540a(Cache cache, AbstractC11567h abstractC11567h, int i) {
        this(cache, abstractC11567h, new FileDataSource(), new CacheDataSink(cache, 5242880L), i, null);
    }

    public C11540a(Cache cache, AbstractC11567h abstractC11567h, AbstractC11567h abstractC11567h2, AbstractC11565g abstractC11565g, int i, AbstractC11542a abstractC11542a) {
        this(cache, abstractC11567h, abstractC11567h2, abstractC11565g, i, abstractC11542a, null);
    }

    public C11540a(Cache cache, AbstractC11567h abstractC11567h, AbstractC11567h abstractC11567h2, AbstractC11565g abstractC11565g, int i, AbstractC11542a abstractC11542a, AbstractC11547f abstractC11547f) {
        this(cache, abstractC11567h, abstractC11567h2, abstractC11565g, abstractC11547f, i, null, 0, abstractC11542a);
    }

    private C11540a(Cache cache, AbstractC11567h abstractC11567h, AbstractC11567h abstractC11567h2, AbstractC11565g abstractC11565g, AbstractC11547f abstractC11547f, int i, PriorityTaskManager priorityTaskManager, int i2, AbstractC11542a abstractC11542a) {
        this.f38409a = cache;
        this.f38410b = abstractC11567h2;
        this.f38413e = abstractC11547f == null ? AbstractC11547f.f38441a : abstractC11547f;
        this.f38415g = (i & 1) != 0;
        this.f38416h = (i & 2) != 0;
        this.f38417i = (i & 4) != 0;
        if (abstractC11567h != null) {
            C11587s c11587s = priorityTaskManager != null ? new C11587s(abstractC11567h, priorityTaskManager, i2) : abstractC11567h;
            this.f38412d = c11587s;
            this.f38411c = abstractC11565g != null ? new C11589u(c11587s, abstractC11565g) : null;
        } else {
            this.f38412d = C11584q.f38611a;
            this.f38411c = null;
        }
        this.f38414f = abstractC11542a;
    }

    /* JADX WARN: Type inference failed for: r0v111, types: [long] */
    /* JADX WARN: Type inference failed for: r0v130, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* JADX WARN: Type inference failed for: r0v96, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    /* renamed from: a */
    private void m20179a(C11570j c11570j, boolean z) throws IOException {
        C11548g c11548g;
        C11548g c11548g2;
        C11570j c11570j2;
        AbstractC11567h abstractC11567h;
        char c;
        String str = (String) C11599af.m19974a(c11570j.f38520i);
        if (this.f38426r) {
            c11548g = null;
        } else if (this.f38415g) {
            try {
                c11548g = this.f38409a.mo20106a(str, this.f38422n, this.f38423o);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new InterruptedIOException();
            }
        } else {
            c11548g = this.f38409a.mo20097b(str, this.f38422n, this.f38423o);
        }
        if (c11548g == null) {
            AbstractC11567h abstractC11567h2 = this.f38412d;
            C11570j.C11572a m20076a = c11570j.m20076a();
            m20076a.f38528f = this.f38422n;
            m20076a.f38529g = this.f38423o;
            c11570j2 = m20076a.m20073a();
            c11548g2 = c11548g;
            abstractC11567h = abstractC11567h2;
        } else if (c11548g.f38445d) {
            Uri fromFile = Uri.fromFile((File) C11599af.m19974a(c11548g.f38446e));
            long j = c11548g.f38443b;
            long j2 = this.f38422n - j;
            ?? r0 = c11548g.f38444c - j2;
            long j3 = this.f38423o;
            char c2 = r0;
            if (j3 != -1) {
                c2 = Math.min((long) r0, j3);
            }
            C11570j.C11572a m20076a2 = c11570j.m20076a();
            m20076a2.f38523a = fromFile;
            m20076a2.f38524b = j;
            m20076a2.f38528f = j2;
            m20076a2.f38529g = c2;
            c11570j2 = m20076a2.m20073a();
            c11548g2 = c11548g;
            abstractC11567h = this.f38410b;
        } else {
            if (c11548g.m20166a()) {
                c = this.f38423o;
            } else {
                ?? r02 = c11548g.f38444c;
                long j4 = this.f38423o;
                c = r02;
                if (j4 != -1) {
                    c = Math.min((long) r02, j4);
                }
            }
            C11570j.C11572a m20076a3 = c11570j.m20076a();
            m20076a3.f38528f = this.f38422n;
            m20076a3.f38529g = c;
            c11570j2 = m20076a3.m20073a();
            AbstractC11567h abstractC11567h3 = this.f38411c;
            if (abstractC11567h3 != null) {
                c11548g2 = c11548g;
                abstractC11567h = abstractC11567h3;
            } else {
                AbstractC11567h abstractC11567h4 = this.f38412d;
                this.f38409a.mo20114a(c11548g);
                abstractC11567h = abstractC11567h4;
                c11548g2 = null;
            }
        }
        this.f38428t = (this.f38426r || abstractC11567h != this.f38412d) ? (char) 65535 : this.f38422n + 102400;
        if (z) {
            C11593a.m20019b(m20175e());
            if (abstractC11567h == this.f38412d) {
                return;
            }
            try {
                m20172h();
            } catch (Throwable th) {
                if (((C11548g) C11599af.m19974a(c11548g2)).m20164b()) {
                    this.f38409a.mo20114a(c11548g2);
                }
                throw th;
            }
        }
        if (c11548g2 != null && c11548g2.m20164b()) {
            this.f38424p = c11548g2;
        }
        this.f38420l = abstractC11567h;
        this.f38421m = c11570j2.f38519h == -1;
        long mo20035a = abstractC11567h.mo20035a(c11570j2);
        C11556k c11556k = new C11556k();
        if (this.f38421m && mo20035a != -1) {
            this.f38423o = mo20035a;
            c11556k.m20131a("exo_len", this.f38422n + mo20035a);
        }
        if (m20176d()) {
            this.f38418j = abstractC11567h.mo20036a();
            Uri uri = null;
            if (!c11570j.f38512a.equals(this.f38418j)) {
                uri = this.f38418j;
            }
            C11556k.m20133a(c11556k, uri);
        }
        if (m20173g()) {
            this.f38409a.mo20105a(str, c11556k);
        }
    }

    /* renamed from: a */
    private void m20178a(String str) throws IOException {
        this.f38423o = 0L;
        if (m20173g()) {
            C11556k c11556k = new C11556k();
            c11556k.m20131a("exo_len", this.f38422n);
            this.f38409a.mo20105a(str, c11556k);
        }
    }

    /* renamed from: a */
    private void m20177a(Throwable th) {
        if (m20174f() || (th instanceof Cache.CacheException)) {
            this.f38425q = true;
        }
    }

    /* renamed from: d */
    private boolean m20176d() {
        return !m20174f();
    }

    /* renamed from: e */
    private boolean m20175e() {
        return this.f38420l == this.f38412d;
    }

    /* renamed from: f */
    private boolean m20174f() {
        return this.f38420l == this.f38410b;
    }

    /* renamed from: g */
    private boolean m20173g() {
        return this.f38420l == this.f38411c;
    }

    /* renamed from: h */
    private void m20172h() throws IOException {
        AbstractC11567h abstractC11567h = this.f38420l;
        if (abstractC11567h == null) {
            return;
        }
        try {
            abstractC11567h.mo20031c();
            this.f38420l = null;
            this.f38421m = false;
            C11548g c11548g = this.f38424p;
            if (c11548g == null) {
                return;
            }
            this.f38409a.mo20114a(c11548g);
            this.f38424p = null;
        } catch (Throwable th) {
            this.f38420l = null;
            this.f38421m = false;
            C11548g c11548g2 = this.f38424p;
            if (c11548g2 != null) {
                this.f38409a.mo20114a(c11548g2);
                this.f38424p = null;
            }
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11563e
    /* renamed from: a */
    public final int mo20033a(byte[] bArr, int i, int i2) throws IOException {
        C11570j c11570j = (C11570j) C11593a.m20020b(this.f38419k);
        if (i2 == 0) {
            return 0;
        }
        if (this.f38423o == 0) {
            return -1;
        }
        try {
            if (this.f38422n >= this.f38428t) {
                m20179a(c11570j, true);
            }
            int a = ((AbstractC11567h) C11593a.m20020b(this.f38420l)).mo20033a(bArr, i, i2);
            if (a != -1) {
                if (m20174f()) {
                    this.f38427s += a;
                }
                long j = a;
                this.f38422n += j;
                long j2 = this.f38423o;
                if (j2 != -1) {
                    this.f38423o = j2 - j;
                }
            } else if (this.f38421m) {
                m20178a((String) C11599af.m19974a(c11570j.f38520i));
            } else {
                long j3 = this.f38423o;
                if (j3 > 0 || j3 == -1) {
                    m20172h();
                    m20179a(c11570j, false);
                    return mo20033a(bArr, i, i2);
                }
            }
            return a;
        } catch (IOException e) {
            if (!this.f38421m || !DataSourceException.m20213a(e)) {
                m20177a(e);
                throw e;
            }
            m20178a((String) C11599af.m19974a(c11570j.f38520i));
            return -1;
        } catch (Throwable th) {
            m20177a(th);
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final long mo20035a(C11570j c11570j) throws IOException {
        try {
            String buildCacheKey = this.f38413e.buildCacheKey(c11570j);
            C11570j.C11572a m20076a = c11570j.m20076a();
            m20076a.f38530h = buildCacheKey;
            C11570j m20073a = m20076a.m20073a();
            this.f38419k = m20073a;
            Cache cache = this.f38409a;
            Uri uri = m20073a.f38512a;
            String mo20127a = cache.mo20107a(buildCacheKey).mo20127a("exo_redir");
            Uri parse = mo20127a == null ? null : Uri.parse(mo20127a);
            if (parse != null) {
                uri = parse;
            }
            this.f38418j = uri;
            this.f38422n = c11570j.f38518g;
            boolean z = true;
            if ((!this.f38416h || !this.f38425q) ? (!this.f38417i || c11570j.f38519h != -1) ? true : true : false) {
                z = false;
            }
            this.f38426r = z;
            if (c11570j.f38519h == -1 && !this.f38426r) {
                long m20135a = AbstractC11555j._CC.m20135a(this.f38409a.mo20107a(buildCacheKey));
                this.f38423o = m20135a;
                if (m20135a != -1) {
                    long j = m20135a - c11570j.f38518g;
                    this.f38423o = j;
                    if (j <= 0) {
                        throw new DataSourceException(0);
                    }
                }
                m20179a(m20073a, false);
                return this.f38423o;
            }
            this.f38423o = c11570j.f38519h;
            m20179a(m20073a, false);
            return this.f38423o;
        } catch (Throwable th) {
            m20177a(th);
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final Uri mo20036a() {
        return this.f38418j;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final void mo20034a(AbstractC11590v abstractC11590v) {
        C11593a.m20020b(abstractC11590v);
        this.f38410b.mo20034a(abstractC11590v);
        this.f38412d.mo20034a(abstractC11590v);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: b */
    public final Map<String, List<String>> mo20032b() {
        return m20176d() ? this.f38412d.mo20032b() : Collections.emptyMap();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: c */
    public final void mo20031c() throws IOException {
        this.f38419k = null;
        this.f38418j = null;
        this.f38422n = 0L;
        if (this.f38414f != null && this.f38427s > 0) {
            this.f38409a.mo20115a();
            this.f38427s = 0L;
        }
        try {
            m20172h();
        } catch (Throwable th) {
            m20177a(th);
            throw th;
        }
    }
}
