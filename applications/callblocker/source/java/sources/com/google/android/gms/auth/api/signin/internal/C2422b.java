package com.google.android.gms.auth.api.signin.internal;
/* renamed from: com.google.android.gms.auth.api.signin.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/b.class */
public class C2422b {

    /* renamed from: a */
    private static int f6951a = 31;

    /* renamed from: b */
    private int f6952b = 1;

    /* renamed from: a */
    public int m14534a() {
        return this.f6952b;
    }

    /* renamed from: a */
    public C2422b m14533a(Object obj) {
        int i = f6951a;
        this.f6952b = (obj == null ? 0 : obj.hashCode()) + (this.f6952b * i);
        return this;
    }

    /* renamed from: a */
    public final C2422b m14532a(boolean z) {
        int i = f6951a;
        this.f6952b = (z ? 1 : 0) + (this.f6952b * i);
        return this;
    }
}
