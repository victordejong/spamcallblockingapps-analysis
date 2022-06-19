package com.google.android.gms.internal.ads;

import java.util.Objects;
/* renamed from: com.google.android.gms.internal.ads.nn */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nn.class */
public final class C6781nn {

    /* renamed from: a */
    public final String f27230a;

    /* renamed from: b */
    public final C7021u4 f27231b;

    /* renamed from: c */
    public final C7021u4 f27232c;

    /* renamed from: d */
    public final int f27233d;

    /* renamed from: e */
    public final int f27234e;

    public C6781nn(String str, C7021u4 c7021u4, C7021u4 c7021u42, int i, int i2) {
        boolean z = false;
        int i3 = i2;
        if (i != 0) {
            i3 = i2;
            i3 = i2 == 0 ? 0 : i3;
            C7173y8.m8898a(z);
            C7173y8.m8893f(str);
            this.f27230a = str;
            Objects.requireNonNull(c7021u4);
            this.f27231b = c7021u4;
            Objects.requireNonNull(c7021u42);
            this.f27232c = c7021u42;
            this.f27233d = i;
            this.f27234e = i3;
        }
        z = true;
        C7173y8.m8898a(z);
        C7173y8.m8893f(str);
        this.f27230a = str;
        Objects.requireNonNull(c7021u4);
        this.f27231b = c7021u4;
        Objects.requireNonNull(c7021u42);
        this.f27232c = c7021u42;
        this.f27233d = i;
        this.f27234e = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C6781nn.class != obj.getClass()) {
            return false;
        }
        C6781nn c6781nn = (C6781nn) obj;
        return this.f27233d == c6781nn.f27233d && this.f27234e == c6781nn.f27234e && this.f27230a.equals(c6781nn.f27230a) && this.f27231b.equals(c6781nn.f27231b) && this.f27232c.equals(c6781nn.f27232c);
    }

    public final int hashCode() {
        return ((((((((this.f27233d + 527) * 31) + this.f27234e) * 31) + this.f27230a.hashCode()) * 31) + this.f27231b.hashCode()) * 31) + this.f27232c.hashCode();
    }
}
