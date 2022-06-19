package com.google.api.client.googleapis.media;

import com.google.api.client.googleapis.C8589a;
import com.google.api.client.http.AbstractC8616b;
import com.google.api.client.http.AbstractC8646j;
import com.google.api.client.http.AbstractC8657s;
import com.google.api.client.http.AbstractC8661w;
import com.google.api.client.http.C8617b0;
import com.google.api.client.http.C8622d;
import com.google.api.client.http.C8626f;
import com.google.api.client.http.C8642h;
import com.google.api.client.http.C8645i;
import com.google.api.client.http.C8650n;
import com.google.api.client.http.C8655q;
import com.google.api.client.http.C8656r;
import com.google.api.client.http.C8658t;
import com.google.api.client.http.C8663y;
import com.google.api.client.util.AbstractC8733y;
import com.google.api.client.util.C8707g;
import com.google.api.client.util.C8731w;
import com.yanzhenjie.nohttp.p320db.BasicSQLHelper;
import com.zhy.http.okhttp.OkHttpUtils;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/media/MediaHttpUploader.class */
public final class MediaHttpUploader {

    /* renamed from: b */
    private final AbstractC8616b f38250b;

    /* renamed from: c */
    private final C8656r f38251c;

    /* renamed from: d */
    private final AbstractC8661w f38252d;

    /* renamed from: e */
    private AbstractC8646j f38253e;

    /* renamed from: f */
    private long f38254f;

    /* renamed from: g */
    private boolean f38255g;

    /* renamed from: j */
    private C8655q f38258j;

    /* renamed from: k */
    private InputStream f38259k;

    /* renamed from: l */
    private boolean f38260l;

    /* renamed from: m */
    private AbstractC8611b f38261m;

    /* renamed from: o */
    private long f38263o;

    /* renamed from: q */
    private Byte f38265q;

    /* renamed from: r */
    private long f38266r;

    /* renamed from: s */
    private int f38267s;

    /* renamed from: t */
    private byte[] f38268t;

    /* renamed from: u */
    private boolean f38269u;

    /* renamed from: a */
    private UploadState f38249a = UploadState.NOT_STARTED;

    /* renamed from: h */
    private String f38256h = "POST";

    /* renamed from: i */
    private C8650n f38257i = new C8650n();

    /* renamed from: n */
    String f38262n = BasicSQLHelper.ALL;

    /* renamed from: p */
    private int f38264p = 10485760;

    /* renamed from: v */
    AbstractC8733y f38270v = AbstractC8733y.f38567a;

    /* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/media/MediaHttpUploader$UploadState.class */
    public enum UploadState {
        NOT_STARTED,
        INITIATION_STARTED,
        INITIATION_COMPLETE,
        MEDIA_IN_PROGRESS,
        MEDIA_COMPLETE
    }

    /* renamed from: com.google.api.client.googleapis.media.MediaHttpUploader$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/media/MediaHttpUploader$a.class */
    public static class C8609a {

        /* renamed from: a */
        private final AbstractC8616b f38277a;

        /* renamed from: b */
        private final String f38278b;

        C8609a(AbstractC8616b abstractC8616b, String str) {
            this.f38277a = abstractC8616b;
            this.f38278b = str;
        }

        /* renamed from: a */
        AbstractC8616b m3250a() {
            return this.f38277a;
        }

        /* renamed from: b */
        String m3249b() {
            return this.f38278b;
        }
    }

    public MediaHttpUploader(AbstractC8616b abstractC8616b, AbstractC8661w abstractC8661w, AbstractC8657s abstractC8657s) {
        this.f38250b = (AbstractC8616b) C8731w.m2836d(abstractC8616b);
        this.f38252d = (AbstractC8661w) C8731w.m2836d(abstractC8661w);
        this.f38251c = abstractC8657s == null ? abstractC8661w.m3052c() : abstractC8661w.m3051d(abstractC8657s);
    }

    /* renamed from: a */
    private C8609a m3266a() {
        C8663y c8663y;
        String str;
        int i;
        int i2;
        int min = m3259h() ? (int) Math.min(this.f38264p, m3261f() - this.f38263o) : this.f38264p;
        if (m3259h()) {
            this.f38259k.mark(min);
            long j = min;
            c8663y = new C8663y(this.f38250b.mo3161a(), C8707g.m2892b(this.f38259k, j)).m3043i(true).m3044h(j).m3045g(false);
            this.f38262n = String.valueOf(m3261f());
        } else {
            byte[] bArr = this.f38268t;
            if (bArr == null) {
                Byte b = this.f38265q;
                int i3 = b == null ? min + 1 : min;
                byte[] bArr2 = new byte[min + 1];
                this.f38268t = bArr2;
                if (b != null) {
                    bArr2[0] = b.byteValue();
                }
                i = i3;
                i2 = 0;
            } else {
                i2 = (int) (this.f38266r - this.f38263o);
                System.arraycopy(bArr, this.f38267s - i2, bArr, 0, i2);
                Byte b2 = this.f38265q;
                if (b2 != null) {
                    this.f38268t[i2] = b2.byteValue();
                }
                i = min - i2;
            }
            int m2891c = C8707g.m2891c(this.f38259k, this.f38268t, (min + 1) - i, i);
            if (m2891c < i) {
                int max = i2 + Math.max(0, m2891c);
                min = max;
                if (this.f38265q != null) {
                    min = max + 1;
                    this.f38265q = null;
                }
                if (this.f38262n.equals(BasicSQLHelper.ALL)) {
                    this.f38262n = String.valueOf(this.f38263o + min);
                }
            } else {
                this.f38265q = Byte.valueOf(this.f38268t[min]);
            }
            c8663y = new C8622d(this.f38250b.mo3161a(), this.f38268t, 0, min);
            this.f38266r = this.f38263o + min;
        }
        this.f38267s = min;
        if (min == 0) {
            str = "bytes */" + this.f38262n;
        } else {
            str = "bytes " + this.f38263o + "-" + ((this.f38263o + min) - 1) + "/" + this.f38262n;
        }
        return new C8609a(c8663y, str);
    }

    /* renamed from: b */
    private C8658t m3265b(C8645i c8645i) {
        m3252o(UploadState.MEDIA_IN_PROGRESS);
        C8617b0 c8617b0 = this.f38250b;
        if (this.f38253e != null) {
            c8617b0 = new C8617b0().m3224i(Arrays.asList(this.f38253e, this.f38250b));
            c8645i.put("uploadType", "multipart");
        } else {
            c8645i.put("uploadType", "media");
        }
        C8655q m3076d = this.f38251c.m3076d(this.f38256h, c8645i, c8617b0);
        m3076d.m3100f().putAll(this.f38257i);
        C8658t m3264c = m3264c(m3076d);
        try {
            if (m3259h()) {
                this.f38263o = m3261f();
            }
            m3252o(UploadState.MEDIA_COMPLETE);
            return m3264c;
        } catch (Throwable th) {
            m3264c.m3072a();
            throw th;
        }
    }

    /* renamed from: c */
    private C8658t m3264c(C8655q c8655q) {
        if (!this.f38269u && !(c8655q.m3103c() instanceof C8626f)) {
            c8655q.m3084v(new C8642h());
        }
        return m3263d(c8655q);
    }

    /* renamed from: d */
    private C8658t m3263d(C8655q c8655q) {
        new C8589a().mo3159a(c8655q);
        c8655q.m3108C(false);
        return c8655q.m3104b();
    }

    /* renamed from: e */
    private C8658t m3262e(C8645i c8645i) {
        m3252o(UploadState.INITIATION_STARTED);
        c8645i.put("uploadType", "resumable");
        AbstractC8646j abstractC8646j = this.f38253e;
        C8626f c8626f = abstractC8646j;
        if (abstractC8646j == null) {
            c8626f = new C8626f();
        }
        C8655q m3076d = this.f38251c.m3076d(this.f38256h, c8645i, c8626f);
        this.f38257i.set("X-Upload-Content-Type", this.f38250b.mo3161a());
        if (m3259h()) {
            this.f38257i.set("X-Upload-Content-Length", Long.valueOf(m3261f()));
        }
        m3076d.m3100f().putAll(this.f38257i);
        C8658t m3264c = m3264c(m3076d);
        try {
            m3252o(UploadState.INITIATION_COMPLETE);
            return m3264c;
        } catch (Throwable th) {
            m3264c.m3072a();
            throw th;
        }
    }

    /* renamed from: f */
    private long m3261f() {
        if (!this.f38255g) {
            this.f38254f = this.f38250b.getLength();
            this.f38255g = true;
        }
        return this.f38254f;
    }

    /* renamed from: g */
    private long m3260g(String str) {
        if (str == null) {
            return 0L;
        }
        return Long.parseLong(str.substring(str.indexOf(45) + 1)) + 1;
    }

    /* renamed from: h */
    private boolean m3259h() {
        return m3261f() >= 0;
    }

    /* renamed from: i */
    private C8658t m3258i(C8645i c8645i) {
        C8658t m3262e = m3262e(c8645i);
        if (!m3262e.m3061l()) {
            return m3262e;
        }
        try {
            C8645i c8645i2 = new C8645i(m3262e.m3067f().getLocation());
            m3262e.m3072a();
            InputStream mo3047d = this.f38250b.mo3047d();
            this.f38259k = mo3047d;
            C8645i c8645i3 = c8645i2;
            if (!mo3047d.markSupported()) {
                c8645i3 = c8645i2;
                if (m3259h()) {
                    this.f38259k = new BufferedInputStream(this.f38259k);
                    c8645i3 = c8645i2;
                }
            }
            while (true) {
                C8609a m3266a = m3266a();
                C8655q m3077c = this.f38251c.m3077c(c8645i3, null);
                this.f38258j = m3077c;
                m3077c.m3085u(m3266a.m3250a());
                this.f38258j.m3100f().m3158A(m3266a.m3249b());
                new C8612c(this, this.f38258j);
                C8658t m3263d = m3259h() ? m3263d(this.f38258j) : m3264c(this.f38258j);
                try {
                    if (m3263d.m3061l()) {
                        this.f38263o = m3261f();
                        if (this.f38250b.m3228c()) {
                            this.f38259k.close();
                        }
                        m3252o(UploadState.MEDIA_COMPLETE);
                        return m3263d;
                    } else if (m3263d.m3065h() != 308) {
                        if (this.f38250b.m3228c()) {
                            this.f38259k.close();
                        }
                        return m3263d;
                    } else {
                        String location = m3263d.m3067f().getLocation();
                        if (location != null) {
                            c8645i3 = new C8645i(location);
                        }
                        long m3260g = m3260g(m3263d.m3067f().m3140l());
                        long j = m3260g - this.f38263o;
                        C8731w.m2833g(j >= 0 && j <= ((long) this.f38267s));
                        long j2 = this.f38267s - j;
                        if (m3259h()) {
                            if (j2 > 0) {
                                this.f38259k.reset();
                                C8731w.m2833g(j == this.f38259k.skip(j));
                            }
                        } else if (j2 == 0) {
                            this.f38268t = null;
                        }
                        this.f38263o = m3260g;
                        m3252o(UploadState.MEDIA_IN_PROGRESS);
                        m3262e = m3263d;
                    }
                } catch (Throwable th) {
                    m3262e = m3263d;
                    throw th;
                }
            }
        } finally {
            m3262e.m3072a();
        }
    }

    /* renamed from: o */
    private void m3252o(UploadState uploadState) {
        this.f38249a = uploadState;
        AbstractC8611b abstractC8611b = this.f38261m;
        if (abstractC8611b != null) {
            abstractC8611b.m3247a(this);
        }
    }

    /* renamed from: j */
    public void m3257j() {
        C8731w.m2835e(this.f38258j, "The current request should not be null");
        this.f38258j.m3085u(new C8626f());
        C8650n m3100f = this.f38258j.m3100f();
        m3100f.m3158A("bytes */" + this.f38262n);
    }

    /* renamed from: k */
    public MediaHttpUploader m3256k(boolean z) {
        this.f38269u = z;
        return this;
    }

    /* renamed from: l */
    public MediaHttpUploader m3255l(C8650n c8650n) {
        this.f38257i = c8650n;
        return this;
    }

    /* renamed from: m */
    public MediaHttpUploader m3254m(String str) {
        C8731w.m2839a(str.equals("POST") || str.equals(OkHttpUtils.METHOD.PUT) || str.equals(OkHttpUtils.METHOD.PATCH));
        this.f38256h = str;
        return this;
    }

    /* renamed from: n */
    public MediaHttpUploader m3253n(AbstractC8646j abstractC8646j) {
        this.f38253e = abstractC8646j;
        return this;
    }

    /* renamed from: p */
    public C8658t m3251p(C8645i c8645i) {
        C8731w.m2839a(this.f38249a == UploadState.NOT_STARTED);
        return this.f38260l ? m3265b(c8645i) : m3258i(c8645i);
    }
}
