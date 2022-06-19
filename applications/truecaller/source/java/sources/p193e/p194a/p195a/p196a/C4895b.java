package p193e.p194a.p195a.p196a;

import android.os.Handler;
import android.os.Looper;
import com.truecaller.messaging.data.types.ImGroupInfo;
import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
/* renamed from: e.a.a.a.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/a/b.class */
public final class C4895b {

    /* renamed from: a */
    public final AbstractC15539j2 f16621a;

    /* renamed from: b */
    public final C4898c f16622b;

    /* renamed from: c */
    public final C4895b f16623c = this;

    /* renamed from: d */
    public Provider<ImGroupInfo> f16624d;

    /* renamed from: e */
    public Provider<Handler> f16625e;

    /* renamed from: e.a.a.a.b$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/a/b$b.class */
    public static final class C4897b<T> implements Provider<T> {

        /* renamed from: a */
        public final C4895b f16626a;

        /* renamed from: b */
        public final int f16627b;

        public C4897b(C4895b c4895b, int i) {
            this.f16626a = c4895b;
            this.f16627b = i;
        }

        public T get() {
            int i = this.f16627b;
            if (i == 0) {
                T t = (T) this.f16626a.f16622b.f16629b;
                Objects.requireNonNull(t, "Cannot return null from a non-@Nullable @Provides method");
                return t;
            } else if (i != 1) {
                throw new AssertionError(this.f16627b);
            } else {
                Objects.requireNonNull(this.f16626a.f16622b);
                return (T) new Handler(Looper.getMainLooper());
            }
        }
    }

    public C4895b(C4898c c4898c, AbstractC15539j2 abstractC15539j2, C4896a c4896a) {
        this.f16621a = abstractC15539j2;
        this.f16622b = c4898c;
        Provider c4897b = new C4897b(this, 0);
        Object obj = b.c;
        this.f16624d = !(c4897b instanceof b) ? new b(c4897b) : c4897b;
        Provider c4897b2 = new C4897b(this, 1);
        this.f16625e = !(c4897b2 instanceof b) ? new b(c4897b2) : c4897b2;
    }
}
