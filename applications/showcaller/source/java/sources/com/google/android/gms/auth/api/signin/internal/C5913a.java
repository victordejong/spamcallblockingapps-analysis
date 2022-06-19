package com.google.android.gms.auth.api.signin.internal;

import androidx.annotation.RecentlyNonNull;
/* renamed from: com.google.android.gms.auth.api.signin.internal.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/a.class */
public class C5913a {

    /* renamed from: a */
    static int f19038a = 31;

    /* renamed from: b */
    private int f19039b = 1;

    @RecentlyNonNull
    /* renamed from: a */
    public C5913a m17603a(Object obj) {
        this.f19039b = (f19038a * this.f19039b) + (obj == null ? 0 : obj.hashCode());
        return this;
    }

    /* renamed from: b */
    public int m17602b() {
        return this.f19039b;
    }

    @RecentlyNonNull
    /* renamed from: c */
    public final C5913a m17601c(boolean z) {
        this.f19039b = (f19038a * this.f19039b) + (z ? 1 : 0);
        return this;
    }
}
