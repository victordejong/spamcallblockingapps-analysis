package okhttp3;

import java.io.Closeable;
import java.io.InputStream;
import java.nio.charset.Charset;
import javax.annotation.Nullable;
import okhttp3.internal.C1999c;
import p000a.AbstractC0008e;
import p000a.C0005c;
/* renamed from: okhttp3.ac */
/* loaded from: classes-dex2jar.jar:okhttp3/ac.class */
public abstract class AbstractC1957ac implements Closeable {
    /* renamed from: a */
    public static AbstractC1957ac m2464a(@Nullable final C2094u c2094u, final long j, final AbstractC0008e abstractC0008e) {
        if (abstractC0008e != null) {
            return new AbstractC1957ac() { // from class: okhttp3.ac.1
                @Override // okhttp3.AbstractC1957ac
                @Nullable
                /* renamed from: a */
                public C2094u mo2372a() {
                    return c2094u;
                }

                @Override // okhttp3.AbstractC1957ac
                /* renamed from: b */
                public long mo2371b() {
                    return j;
                }

                @Override // okhttp3.AbstractC1957ac
                /* renamed from: d */
                public AbstractC0008e mo2370d() {
                    return abstractC0008e;
                }
            };
        }
        throw new NullPointerException("source == null");
    }

    /* renamed from: a */
    public static AbstractC1957ac m2463a(@Nullable C2094u c2094u, byte[] bArr) {
        return m2464a(c2094u, bArr.length, new C0005c().mo8088c(bArr));
    }

    /* renamed from: f */
    private Charset m2460f() {
        C2094u mo2372a = mo2372a();
        return mo2372a != null ? mo2372a.m1895a(C1999c.f4986e) : C1999c.f4986e;
    }

    @Nullable
    /* renamed from: a */
    public abstract C2094u mo2372a();

    /* renamed from: b */
    public abstract long mo2371b();

    /* renamed from: c */
    public final InputStream m2462c() {
        return mo2370d().mo8068f();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        C1999c.m2353a(mo2370d());
    }

    /* renamed from: d */
    public abstract AbstractC0008e mo2370d();

    /* renamed from: e */
    public final String m2461e() {
        AbstractC0008e mo2370d = mo2370d();
        try {
            return mo2370d.mo8075a(C1999c.m2355a(mo2370d, m2460f()));
        } finally {
            C1999c.m2353a(mo2370d);
        }
    }
}
