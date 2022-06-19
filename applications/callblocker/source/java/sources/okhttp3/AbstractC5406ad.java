package okhttp3;

import java.io.Closeable;
import java.nio.charset.Charset;
import javax.annotation.Nullable;
import okhttp3.internal.C5449c;
import p000a.AbstractC0007e;
import p000a.C0005c;
/* renamed from: okhttp3.ad */
/* loaded from: classes-dex2jar.jar:okhttp3/ad.class */
public abstract class AbstractC5406ad implements Closeable {
    /* renamed from: a */
    public static AbstractC5406ad m781a(@Nullable final C5546v c5546v, final long j, final AbstractC0007e abstractC0007e) {
        if (abstractC0007e == null) {
            throw new NullPointerException("source == null");
        }
        return new AbstractC5406ad() { // from class: okhttp3.ad.1
            @Override // okhttp3.AbstractC5406ad
            @Nullable
            /* renamed from: a */
            public C5546v mo89a() {
                return c5546v;
            }

            @Override // okhttp3.AbstractC5406ad
            /* renamed from: b */
            public long mo88b() {
                return j;
            }

            @Override // okhttp3.AbstractC5406ad
            /* renamed from: c */
            public AbstractC0007e mo87c() {
                return abstractC0007e;
            }
        };
    }

    /* renamed from: a */
    public static AbstractC5406ad m780a(@Nullable C5546v c5546v, byte[] bArr) {
        return m781a(c5546v, bArr.length, new C0005c().mo22512c(bArr));
    }

    /* renamed from: e */
    private Charset m778e() {
        C5546v mo89a = mo89a();
        return mo89a != null ? mo89a.m208a(C5449c.f22760e) : C5449c.f22760e;
    }

    @Nullable
    /* renamed from: a */
    public abstract C5546v mo89a();

    /* renamed from: b */
    public abstract long mo88b();

    /* renamed from: c */
    public abstract AbstractC0007e mo87c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        C5449c.m673a(mo87c());
    }

    /* renamed from: d */
    public final String m779d() {
        AbstractC0007e mo87c = mo87c();
        try {
            return mo87c.mo22498a(C5449c.m675a(mo87c, m778e()));
        } finally {
            C5449c.m673a(mo87c);
        }
    }
}
