package retrofit2;

import javax.annotation.Nullable;
import okhttp3.AbstractC5406ad;
import okhttp3.C5404ac;
/* renamed from: retrofit2.l */
/* loaded from: classes-dex2jar.jar:retrofit2/l.class */
public final class C5627l<T> {

    /* renamed from: a */
    private final C5404ac f23320a;
    @Nullable

    /* renamed from: b */
    private final T f23321b;
    @Nullable

    /* renamed from: c */
    private final AbstractC5406ad f23322c;

    private C5627l(C5404ac c5404ac, @Nullable T t, @Nullable AbstractC5406ad abstractC5406ad) {
        this.f23320a = c5404ac;
        this.f23321b = t;
        this.f23322c = abstractC5406ad;
    }

    /* renamed from: a */
    public static <T> C5627l<T> m56a(@Nullable T t, C5404ac c5404ac) {
        C5633o.m15a(c5404ac, "rawResponse == null");
        if (!c5404ac.m806c()) {
            throw new IllegalArgumentException("rawResponse must be successful response");
        }
        return new C5627l<>(c5404ac, t, null);
    }

    /* renamed from: a */
    public static <T> C5627l<T> m55a(AbstractC5406ad abstractC5406ad, C5404ac c5404ac) {
        C5633o.m15a(abstractC5406ad, "body == null");
        C5633o.m15a(c5404ac, "rawResponse == null");
        if (c5404ac.m806c()) {
            throw new IllegalArgumentException("rawResponse should not be successful response");
        }
        return new C5627l<>(c5404ac, null, abstractC5406ad);
    }

    /* renamed from: a */
    public int m57a() {
        return this.f23320a.m807b();
    }

    @Nullable
    /* renamed from: b */
    public T m54b() {
        return this.f23321b;
    }

    @Nullable
    /* renamed from: c */
    public AbstractC5406ad m53c() {
        return this.f23322c;
    }

    public String toString() {
        return this.f23320a.toString();
    }
}
