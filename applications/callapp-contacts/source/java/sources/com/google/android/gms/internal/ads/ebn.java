package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ebn.class */
public final class ebn {

    /* renamed from: a */
    public final int f48613a;

    /* renamed from: b */
    public final int f48614b;

    /* renamed from: c */
    public final int f48615c;

    /* renamed from: d */
    public final boolean f48616d;

    /* renamed from: e */
    public final boolean f48617e;

    /* renamed from: f */
    public final int f48618f;

    /* renamed from: g */
    public final int f48619g;

    /* renamed from: h */
    public final boolean f48620h;

    /* renamed from: i */
    private final String f48621i;

    /* renamed from: j */
    private final String f48622j;

    /* renamed from: k */
    private final boolean f48623k;

    /* renamed from: l */
    private final boolean f48624l;

    public ebn() {
        this(null, null, false, true, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, true, true, Integer.MAX_VALUE, Integer.MAX_VALUE, true);
    }

    private ebn(String str, String str2, boolean z, boolean z2, int i, int i2, int i3, boolean z3, boolean z4, int i4, int i5, boolean z5) {
        this.f48621i = null;
        this.f48622j = null;
        this.f48623k = false;
        this.f48624l = true;
        this.f48613a = Integer.MAX_VALUE;
        this.f48614b = Integer.MAX_VALUE;
        this.f48615c = Integer.MAX_VALUE;
        this.f48616d = true;
        this.f48617e = true;
        this.f48618f = Integer.MAX_VALUE;
        this.f48619g = Integer.MAX_VALUE;
        this.f48620h = true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ebn ebnVar = (ebn) obj;
        return this.f48624l == ebnVar.f48624l && this.f48613a == ebnVar.f48613a && this.f48614b == ebnVar.f48614b && this.f48616d == ebnVar.f48616d && this.f48617e == ebnVar.f48617e && this.f48620h == ebnVar.f48620h && this.f48618f == ebnVar.f48618f && this.f48619g == ebnVar.f48619g && this.f48615c == ebnVar.f48615c && TextUtils.equals(null, null) && TextUtils.equals(null, null);
    }

    public final int hashCode() {
        throw new NullPointerException();
    }
}
