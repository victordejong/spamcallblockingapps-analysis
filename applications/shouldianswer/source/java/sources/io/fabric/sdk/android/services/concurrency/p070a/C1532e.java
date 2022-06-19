package io.fabric.sdk.android.services.concurrency.p070a;
/* renamed from: io.fabric.sdk.android.services.concurrency.a.e */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/concurrency/a/e.class */
public class C1532e {

    /* renamed from: a */
    private final int f4181a;

    /* renamed from: b */
    private final AbstractC1528a f4182b;

    /* renamed from: c */
    private final AbstractC1531d f4183c;

    public C1532e(int i, AbstractC1528a abstractC1528a, AbstractC1531d abstractC1531d) {
        this.f4181a = i;
        this.f4182b = abstractC1528a;
        this.f4183c = abstractC1531d;
    }

    public C1532e(AbstractC1528a abstractC1528a, AbstractC1531d abstractC1531d) {
        this(0, abstractC1528a, abstractC1531d);
    }

    /* renamed from: a */
    public long m3364a() {
        return this.f4182b.getDelayMillis(this.f4181a);
    }

    /* renamed from: b */
    public C1532e m3363b() {
        return new C1532e(this.f4181a + 1, this.f4182b, this.f4183c);
    }

    /* renamed from: c */
    public C1532e m3362c() {
        return new C1532e(this.f4182b, this.f4183c);
    }
}
