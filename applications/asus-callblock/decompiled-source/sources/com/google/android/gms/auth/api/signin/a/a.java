package com.google.android.gms.auth.api.signin.a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static int f3912a = 31;

    /* renamed from: b  reason: collision with root package name */
    public int f3913b = 1;

    public final a a(Object obj) {
        int i = f3912a;
        this.f3913b = (obj == null ? 0 : obj.hashCode()) + (this.f3913b * i);
        return this;
    }

    public final a a(boolean z) {
        int i = f3912a;
        this.f3913b = (z ? 1 : 0) + (this.f3913b * i);
        return this;
    }
}
