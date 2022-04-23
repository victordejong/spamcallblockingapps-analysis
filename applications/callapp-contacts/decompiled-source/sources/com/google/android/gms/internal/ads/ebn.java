package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ebn.class */
public final class ebn {

    /* renamed from: a  reason: collision with root package name */
    public final int f27582a;

    /* renamed from: b  reason: collision with root package name */
    public final int f27583b;

    /* renamed from: c  reason: collision with root package name */
    public final int f27584c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f27585d;
    public final boolean e;
    public final int f;
    public final int g;
    public final boolean h;
    private final String i;
    private final String j;
    private final boolean k;
    private final boolean l;

    public ebn() {
        this(null, null, false, true, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, true, true, Integer.MAX_VALUE, Integer.MAX_VALUE, true);
    }

    private ebn(String str, String str2, boolean z, boolean z2, int i, int i2, int i3, boolean z3, boolean z4, int i4, int i5, boolean z5) {
        this.i = null;
        this.j = null;
        this.k = false;
        this.l = true;
        this.f27582a = Integer.MAX_VALUE;
        this.f27583b = Integer.MAX_VALUE;
        this.f27584c = Integer.MAX_VALUE;
        this.f27585d = true;
        this.e = true;
        this.f = Integer.MAX_VALUE;
        this.g = Integer.MAX_VALUE;
        this.h = true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ebn ebnVar = (ebn) obj;
        return this.l == ebnVar.l && this.f27582a == ebnVar.f27582a && this.f27583b == ebnVar.f27583b && this.f27585d == ebnVar.f27585d && this.e == ebnVar.e && this.h == ebnVar.h && this.f == ebnVar.f && this.g == ebnVar.g && this.f27584c == ebnVar.f27584c && TextUtils.equals(null, null) && TextUtils.equals(null, null);
    }

    public final int hashCode() {
        throw new NullPointerException();
    }
}
