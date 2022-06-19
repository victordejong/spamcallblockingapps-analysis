package com.google.android.gms.auth.api.signin.internal;
/* renamed from: com.google.android.gms.auth.api.signin.internal.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/a.class */
public final class C11741a {

    /* renamed from: a */
    static int f39060a = 31;

    /* renamed from: b */
    public int f39061b = 1;

    /* renamed from: a */
    public final C11741a m19551a(Object obj) {
        this.f39061b = (f39060a * this.f39061b) + (obj == null ? 0 : obj.hashCode());
        return this;
    }

    /* renamed from: a */
    public final C11741a m19550a(boolean z) {
        this.f39061b = (f39060a * this.f39061b) + (z ? 1 : 0);
        return this;
    }
}
