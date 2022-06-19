package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.util.AbstractC6227e;
/* renamed from: com.google.android.gms.measurement.internal.a9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/a9.class */
public final class C7654a9 {

    /* renamed from: a */
    private final AbstractC6227e f34995a;

    /* renamed from: b */
    private long f34996b;

    public C7654a9(AbstractC6227e abstractC6227e) {
        C6155o.m17018j(abstractC6227e);
        this.f34995a = abstractC6227e;
    }

    /* renamed from: a */
    public final void m6585a() {
        this.f34996b = this.f34995a.mo16806b();
    }

    /* renamed from: b */
    public final void m6584b() {
        this.f34996b = 0L;
    }

    /* renamed from: c */
    public final boolean m6583c(long j) {
        return this.f34996b == 0 || this.f34995a.mo16806b() - this.f34996b >= 3600000;
    }
}
