package okhttp3.internal.p193b;

import javax.annotation.Nullable;
import okhttp3.AbstractC5406ad;
import okhttp3.C5546v;
import p000a.AbstractC0007e;
/* renamed from: okhttp3.internal.b.h */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b/h.class */
public final class C5444h extends AbstractC5406ad {
    @Nullable

    /* renamed from: a */
    private final String f22745a;

    /* renamed from: b */
    private final long f22746b;

    /* renamed from: c */
    private final AbstractC0007e f22747c;

    public C5444h(@Nullable String str, long j, AbstractC0007e abstractC0007e) {
        this.f22745a = str;
        this.f22746b = j;
        this.f22747c = abstractC0007e;
    }

    @Override // okhttp3.AbstractC5406ad
    /* renamed from: a */
    public C5546v mo89a() {
        return this.f22745a != null ? C5546v.m209a(this.f22745a) : null;
    }

    @Override // okhttp3.AbstractC5406ad
    /* renamed from: b */
    public long mo88b() {
        return this.f22746b;
    }

    @Override // okhttp3.AbstractC5406ad
    /* renamed from: c */
    public AbstractC0007e mo87c() {
        return this.f22747c;
    }
}
