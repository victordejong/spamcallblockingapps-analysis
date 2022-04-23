package com.google.android.gms.auth.api.signin.internal;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static int f22506a = 31;

    /* renamed from: b  reason: collision with root package name */
    public int f22507b = 1;

    public final a a(Object obj) {
        this.f22507b = (f22506a * this.f22507b) + (obj == null ? 0 : obj.hashCode());
        return this;
    }

    public final a a(boolean z) {
        this.f22507b = (f22506a * this.f22507b) + (z ? 1 : 0);
        return this;
    }
}
