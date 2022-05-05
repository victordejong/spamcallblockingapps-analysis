package com.flurry.sdk;
/* renamed from: com.flurry.sdk.dr */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/dr.class */
public final class C3003dr {

    /* renamed from: a */
    public static long f4681a = 100;

    /* renamed from: b */
    public static C3003dr f4682b;

    /* renamed from: c */
    public final C3004ds f4683c = new C3004ds();

    public C3003dr() {
        C3004ds dsVar = this.f4683c;
        dsVar.f4684a = f4681a;
        dsVar.f4685b = true;
    }

    /* renamed from: a */
    public static C3003dr m33334a() {
        C3003dr drVar;
        synchronized (C3003dr.class) {
            try {
                if (f4682b == null) {
                    f4682b = new C3003dr();
                }
                drVar = f4682b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return drVar;
    }

    /* renamed from: a */
    public final void m33333a(AbstractC3344jl<C3002dq> jlVar) {
        synchronized (this) {
            C3345jm.m32636a().m32632a("com.flurry.android.sdk.TickEvent", jlVar);
            if (C3345jm.m32636a().m32633a("com.flurry.android.sdk.TickEvent") > 0) {
                this.f4683c.m33331a();
            }
        }
    }

    /* renamed from: b */
    public final void m33332b(AbstractC3344jl<C3002dq> jlVar) {
        synchronized (this) {
            C3345jm.m32636a().m32630b("com.flurry.android.sdk.TickEvent", jlVar);
            if (C3345jm.m32636a().m32633a("com.flurry.android.sdk.TickEvent") == 0) {
                this.f4683c.m33330b();
            }
        }
    }
}
