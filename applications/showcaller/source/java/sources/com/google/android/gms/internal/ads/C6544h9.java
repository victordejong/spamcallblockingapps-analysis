package com.google.android.gms.internal.ads;

import android.util.SparseBooleanArray;
/* renamed from: com.google.android.gms.internal.ads.h9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/h9.class */
public final class C6544h9 {

    /* renamed from: a */
    private final SparseBooleanArray f23829a = new SparseBooleanArray();

    /* renamed from: b */
    private boolean f23830b;

    /* renamed from: a */
    public final C6544h9 m14722a(int i) {
        C7173y8.m8895d(!this.f23830b);
        this.f23829a.append(i, true);
        return this;
    }

    /* renamed from: b */
    public final C6619j9 m14721b() {
        C7173y8.m8895d(!this.f23830b);
        this.f23830b = true;
        return new C6619j9(this.f23829a, null);
    }
}
