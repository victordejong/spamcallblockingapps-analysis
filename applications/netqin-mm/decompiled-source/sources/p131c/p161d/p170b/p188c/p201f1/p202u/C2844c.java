package p131c.p161d.p170b.p188c.p201f1.p202u;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.CacheDataSink;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2825h;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2827j;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2841t;
import p131c.p161d.p170b.p188c.p201f1.C2829k;
import p131c.p161d.p170b.p188c.p201f1.C2840s;
/* renamed from: c.d.b.c.f1.u.c */
/* loaded from: classes-dex2jar.jar:c/d/b/c/f1/u/c.class */
public final class C2844c implements AbstractC2827j {

    /* renamed from: a */
    public final Cache f10340a;

    /* renamed from: b */
    public final AbstractC2827j f10341b;

    /* renamed from: c */
    public final AbstractC2827j f10342c;

    /* renamed from: d */
    public final AbstractC2827j f10343d;

    /* renamed from: e */
    public final AbstractC2849g f10344e;

    /* renamed from: f */
    public final AbstractC2845a f10345f;

    /* renamed from: g */
    public final boolean f10346g;

    /* renamed from: h */
    public final boolean f10347h;

    /* renamed from: i */
    public final boolean f10348i;

    /* renamed from: j */
    public AbstractC2827j f10349j;

    /* renamed from: k */
    public boolean f10350k;

    /* renamed from: l */
    public Uri f10351l;

    /* renamed from: m */
    public Uri f10352m;

    /* renamed from: n */
    public int f10353n;

    /* renamed from: o */
    public byte[] f10354o;

    /* renamed from: p */
    public int f10355p;

    /* renamed from: q */
    public String f10356q;

    /* renamed from: r */
    public long f10357r;

    /* renamed from: s */
    public long f10358s;

    /* renamed from: t */
    public C2850h f10359t;

    /* renamed from: u */
    public boolean f10360u;

    /* renamed from: v */
    public boolean f10361v;

    /* renamed from: w */
    public long f10362w;

    /* renamed from: x */
    public long f10363x;

    /* renamed from: c.d.b.c.f1.u.c$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/f1/u/c$a.class */
    public interface AbstractC2845a {
        /* renamed from: a */
        void m28873a(int i);

        /* renamed from: a */
        void m28872a(long j, long j2);
    }

    public C2844c(Cache cache, AbstractC2827j jVar) {
        this(cache, jVar, 0);
    }

    public C2844c(Cache cache, AbstractC2827j jVar, int i) {
        this(cache, jVar, new FileDataSource(), new CacheDataSink(cache, 5242880L), i, null);
    }

    public C2844c(Cache cache, AbstractC2827j jVar, AbstractC2827j jVar2, AbstractC2825h hVar, int i, AbstractC2845a aVar) {
        this(cache, jVar, jVar2, hVar, i, aVar, null);
    }

    public C2844c(Cache cache, AbstractC2827j jVar, AbstractC2827j jVar2, AbstractC2825h hVar, int i, AbstractC2845a aVar, AbstractC2849g gVar) {
        this.f10340a = cache;
        this.f10341b = jVar2;
        this.f10344e = gVar == null ? C2851i.f10375a : gVar;
        boolean z = false;
        this.f10346g = (i & 1) != 0;
        this.f10347h = (i & 2) != 0;
        this.f10348i = (i & 4) != 0 ? true : z;
        this.f10343d = jVar;
        if (hVar != null) {
            this.f10342c = new C2840s(jVar, hVar);
        } else {
            this.f10342c = null;
        }
        this.f10345f = aVar;
    }

    /* renamed from: a */
    public static Uri m28884a(Cache cache, String str, Uri uri) {
        Uri b = C2857l.m28805b(cache.mo18255a(str));
        if (b != null) {
            uri = b;
        }
        return uri;
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: a */
    public long mo18288a(C2829k kVar) throws IOException {
        try {
            String a = this.f10344e.mo28863a(kVar);
            this.f10356q = a;
            Uri uri = kVar.f10265a;
            this.f10351l = uri;
            this.f10352m = m28884a(this.f10340a, a, uri);
            this.f10353n = kVar.f10266b;
            this.f10354o = kVar.f10267c;
            this.f10355p = kVar.f10273i;
            this.f10357r = kVar.f10270f;
            int b = m28880b(kVar);
            boolean z = b != -1;
            this.f10361v = z;
            if (z) {
                m28886a(b);
            }
            if (kVar.f10271g == -1 && !this.f10361v) {
                long a2 = C2857l.m28806a(this.f10340a.mo18255a(this.f10356q));
                this.f10358s = a2;
                if (a2 != -1) {
                    long j = a2 - kVar.f10270f;
                    this.f10358s = j;
                    if (j <= 0) {
                        throw new DataSourceException(0);
                    }
                }
                m28882a(false);
                return this.f10358s;
            }
            this.f10358s = kVar.f10271g;
            m28882a(false);
            return this.f10358s;
        } catch (Throwable th) {
            m28883a(th);
            throw th;
        }
    }

    /* renamed from: a */
    public final void m28887a() throws IOException {
        AbstractC2827j jVar = this.f10349j;
        if (jVar != null) {
            try {
                jVar.close();
                this.f10349j = null;
                this.f10350k = false;
                C2850h hVar = this.f10359t;
                if (hVar != null) {
                    this.f10340a.mo18251b(hVar);
                    this.f10359t = null;
                }
            } catch (Throwable th) {
                this.f10349j = null;
                this.f10350k = false;
                C2850h hVar2 = this.f10359t;
                if (hVar2 != null) {
                    this.f10340a.mo18251b(hVar2);
                    this.f10359t = null;
                }
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final void m28886a(int i) {
        AbstractC2845a aVar = this.f10345f;
        if (aVar != null) {
            aVar.m28873a(i);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: a */
    public void mo28885a(AbstractC2841t tVar) {
        this.f10341b.mo28885a(tVar);
        this.f10343d.mo28885a(tVar);
    }

    /* renamed from: a */
    public final void m28883a(Throwable th) {
        if (m28879c() || (th instanceof Cache.CacheException)) {
            this.f10360u = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v85, types: [long] */
    /* JADX WARN: Type inference failed for: r23v11 */
    /* JADX WARN: Type inference failed for: r23v12 */
    /* JADX WARN: Type inference failed for: r23v13 */
    /* JADX WARN: Type inference failed for: r23v4, types: [long] */
    /* JADX WARN: Type inference failed for: r23v5 */
    /* JADX WARN: Type inference failed for: r23v8 */
    /* JADX WARN: Type inference failed for: r23v9, types: [long] */
    /* JADX WARN: Unknown variable types count: 4 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m28882a(boolean r15) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 667
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p201f1.p202u.C2844c.m28882a(boolean):void");
    }

    /* renamed from: b */
    public final int m28880b(C2829k kVar) {
        if (!this.f10347h || !this.f10360u) {
            return (!this.f10348i || kVar.f10271g != -1) ? -1 : 1;
        }
        return 0;
    }

    /* renamed from: b */
    public final boolean m28881b() {
        return this.f10349j == this.f10343d;
    }

    /* renamed from: c */
    public final boolean m28879c() {
        return this.f10349j == this.f10341b;
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    public void close() throws IOException {
        this.f10351l = null;
        this.f10352m = null;
        this.f10353n = 1;
        this.f10354o = null;
        m28876f();
        try {
            m28887a();
        } catch (Throwable th) {
            m28883a(th);
            throw th;
        }
    }

    /* renamed from: d */
    public final boolean m28878d() {
        return !m28879c();
    }

    /* renamed from: e */
    public final boolean m28877e() {
        return this.f10349j == this.f10342c;
    }

    /* renamed from: f */
    public final void m28876f() {
        AbstractC2845a aVar = this.f10345f;
        if (aVar != null && this.f10362w > 0) {
            aVar.m28872a(this.f10340a.mo18258a(), this.f10362w);
            this.f10362w = 0L;
        }
    }

    /* renamed from: g */
    public final void m28875g() throws IOException {
        this.f10358s = 0L;
        if (m28877e()) {
            C2859n nVar = new C2859n();
            C2859n.m28803a(nVar, this.f10357r);
            this.f10340a.mo18252a(this.f10356q, nVar);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: o */
    public Uri mo18287o() {
        return this.f10352m;
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: p */
    public Map<String, List<String>> mo28874p() {
        return m28878d() ? this.f10343d.mo28874p() : Collections.emptyMap();
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        if (this.f10358s == 0) {
            return -1;
        }
        try {
            if (this.f10357r >= this.f10363x) {
                m28882a(true);
            }
            int read = this.f10349j.read(bArr, i, i2);
            if (read != -1) {
                if (m28879c()) {
                    this.f10362w += read;
                }
                long j = read;
                this.f10357r += j;
                if (this.f10358s != -1) {
                    this.f10358s -= j;
                }
            } else if (this.f10350k) {
                m28875g();
            } else {
                if (this.f10358s <= 0) {
                    if (this.f10358s == -1) {
                    }
                }
                m28887a();
                m28882a(false);
                return read(bArr, i, i2);
            }
            return read;
        } catch (IOException e) {
            if (!this.f10350k || !C2851i.m28857a(e)) {
                m28883a(e);
                throw e;
            }
            m28875g();
            return -1;
        } catch (Throwable th) {
            m28883a(th);
            throw th;
        }
    }
}
