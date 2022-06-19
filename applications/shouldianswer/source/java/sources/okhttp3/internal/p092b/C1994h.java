package okhttp3.internal.p092b;

import javax.annotation.Nullable;
import okhttp3.AbstractC1957ac;
import okhttp3.C2094u;
import p000a.AbstractC0008e;
/* renamed from: okhttp3.internal.b.h */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b/h.class */
public final class C1994h extends AbstractC1957ac {
    @Nullable

    /* renamed from: a */
    private final String f4971a;

    /* renamed from: b */
    private final long f4972b;

    /* renamed from: c */
    private final AbstractC0008e f4973c;

    public C1994h(@Nullable String str, long j, AbstractC0008e abstractC0008e) {
        this.f4971a = str;
        this.f4972b = j;
        this.f4973c = abstractC0008e;
    }

    @Override // okhttp3.AbstractC1957ac
    /* renamed from: a */
    public C2094u mo2372a() {
        String str = this.f4971a;
        return str != null ? C2094u.m1896a(str) : null;
    }

    @Override // okhttp3.AbstractC1957ac
    /* renamed from: b */
    public long mo2371b() {
        return this.f4972b;
    }

    @Override // okhttp3.AbstractC1957ac
    /* renamed from: d */
    public AbstractC0008e mo2370d() {
        return this.f4973c;
    }
}
