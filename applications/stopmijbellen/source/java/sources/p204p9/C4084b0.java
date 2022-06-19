package p204p9;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
import java.io.Closeable;
import java.util.Objects;
import javax.annotation.Nullable;
import p204p9.C4121r;
/* renamed from: p9.b0 */
/* loaded from: classes2-dex2jar.jar:p9/b0.class */
public final class C4084b0 implements Closeable {

    /* renamed from: a */
    public final C4135y f12797a;

    /* renamed from: b */
    public final EnumC4131w f12798b;

    /* renamed from: c */
    public final int f12799c;

    /* renamed from: d */
    public final String f12800d;
    @Nullable

    /* renamed from: e */
    public final C4120q f12801e;

    /* renamed from: f */
    public final C4121r f12802f;
    @Nullable

    /* renamed from: g */
    public final AbstractC4096d0 f12803g;
    @Nullable

    /* renamed from: h */
    public final C4084b0 f12804h;
    @Nullable

    /* renamed from: i */
    public final C4084b0 f12805i;
    @Nullable

    /* renamed from: j */
    public final C4084b0 f12806j;

    /* renamed from: k */
    public final long f12807k;

    /* renamed from: l */
    public final long f12808l;
    @Nullable

    /* renamed from: m */
    public volatile C4094d f12809m;

    /* renamed from: p9.b0$a */
    /* loaded from: classes2-dex2jar.jar:p9/b0$a.class */
    public static class C4085a {
        @Nullable

        /* renamed from: a */
        public C4135y f12810a;
        @Nullable

        /* renamed from: b */
        public EnumC4131w f12811b;

        /* renamed from: c */
        public int f12812c;

        /* renamed from: d */
        public String f12813d;
        @Nullable

        /* renamed from: e */
        public C4120q f12814e;

        /* renamed from: f */
        public C4121r.C4122a f12815f;
        @Nullable

        /* renamed from: g */
        public AbstractC4096d0 f12816g;
        @Nullable

        /* renamed from: h */
        public C4084b0 f12817h;
        @Nullable

        /* renamed from: i */
        public C4084b0 f12818i;
        @Nullable

        /* renamed from: j */
        public C4084b0 f12819j;

        /* renamed from: k */
        public long f12820k;

        /* renamed from: l */
        public long f12821l;

        public C4085a() {
            this.f12812c = -1;
            this.f12815f = new C4121r.C4122a();
        }

        public C4085a(C4084b0 c4084b0) {
            this.f12812c = -1;
            this.f12810a = c4084b0.f12797a;
            this.f12811b = c4084b0.f12798b;
            this.f12812c = c4084b0.f12799c;
            this.f12813d = c4084b0.f12800d;
            this.f12814e = c4084b0.f12801e;
            this.f12815f = c4084b0.f12802f.m1399e();
            this.f12816g = c4084b0.f12803g;
            this.f12817h = c4084b0.f12804h;
            this.f12818i = c4084b0.f12805i;
            this.f12819j = c4084b0.f12806j;
            this.f12820k = c4084b0.f12807k;
            this.f12821l = c4084b0.f12808l;
        }

        /* renamed from: a */
        public C4085a m1435a(String str, String str2) {
            C4121r.C4122a c4122a = this.f12815f;
            Objects.requireNonNull(c4122a);
            C4121r.m1403a(str);
            C4121r.m1402b(str2, str);
            c4122a.f12953a.add(str);
            c4122a.f12953a.add(str2.trim());
            return this;
        }

        /* renamed from: b */
        public C4084b0 m1434b() {
            if (this.f12810a != null) {
                if (this.f12811b == null) {
                    throw new IllegalStateException("protocol == null");
                }
                if (this.f12812c >= 0) {
                    if (this.f12813d == null) {
                        throw new IllegalStateException("message == null");
                    }
                    return new C4084b0(this);
                }
                StringBuilder m8752j = C0082b.m8752j("code < 0: ");
                m8752j.append(this.f12812c);
                throw new IllegalStateException(m8752j.toString());
            }
            throw new IllegalStateException("request == null");
        }

        /* renamed from: c */
        public C4085a m1433c(@Nullable C4084b0 c4084b0) {
            if (c4084b0 != null) {
                m1432d("cacheResponse", c4084b0);
            }
            this.f12818i = c4084b0;
            return this;
        }

        /* renamed from: d */
        public final void m1432d(String str, C4084b0 c4084b0) {
            if (c4084b0.f12803g == null) {
                if (c4084b0.f12804h != null) {
                    throw new IllegalArgumentException(C1676a.m4789h(str, ".networkResponse != null"));
                }
                if (c4084b0.f12805i != null) {
                    throw new IllegalArgumentException(C1676a.m4789h(str, ".cacheResponse != null"));
                }
                if (c4084b0.f12806j != null) {
                    throw new IllegalArgumentException(C1676a.m4789h(str, ".priorResponse != null"));
                }
                return;
            }
            throw new IllegalArgumentException(C1676a.m4789h(str, ".body != null"));
        }

        /* renamed from: e */
        public C4085a m1431e(C4121r c4121r) {
            this.f12815f = c4121r.m1399e();
            return this;
        }
    }

    public C4084b0(C4085a c4085a) {
        this.f12797a = c4085a.f12810a;
        this.f12798b = c4085a.f12811b;
        this.f12799c = c4085a.f12812c;
        this.f12800d = c4085a.f12813d;
        this.f12801e = c4085a.f12814e;
        this.f12802f = new C4121r(c4085a.f12815f);
        this.f12803g = c4085a.f12816g;
        this.f12804h = c4085a.f12817h;
        this.f12805i = c4085a.f12818i;
        this.f12806j = c4085a.f12819j;
        this.f12807k = c4085a.f12820k;
        this.f12808l = c4085a.f12821l;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        AbstractC4096d0 abstractC4096d0 = this.f12803g;
        if (abstractC4096d0 != null) {
            abstractC4096d0.close();
            return;
        }
        throw new IllegalStateException("response is not eligible for a body and must not be closed");
    }

    /* renamed from: d */
    public C4094d m1436d() {
        C4094d c4094d = this.f12809m;
        if (c4094d == null) {
            c4094d = C4094d.m1423a(this.f12802f);
            this.f12809m = c4094d;
        }
        return c4094d;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Response{protocol=");
        m8752j.append(this.f12798b);
        m8752j.append(", code=");
        m8752j.append(this.f12799c);
        m8752j.append(", message=");
        m8752j.append(this.f12800d);
        m8752j.append(", url=");
        m8752j.append(this.f12797a.f13041a);
        m8752j.append('}');
        return m8752j.toString();
    }
}
