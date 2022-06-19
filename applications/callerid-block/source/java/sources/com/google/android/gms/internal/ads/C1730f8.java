package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.AbstractC1364d;
/* renamed from: com.google.android.gms.internal.ads.f8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/f8.class */
public final class C1730f8 {

    /* renamed from: a */
    private final AbstractC1364d.AbstractC1366b f6480a;

    /* renamed from: b */
    private final AbstractC1364d.AbstractC1365a f6481b;

    /* renamed from: c */
    private AbstractC1364d f6482c;

    public C1730f8(AbstractC1364d.AbstractC1366b abstractC1366b, AbstractC1364d.AbstractC1365a abstractC1365a) {
        this.f6480a = abstractC1366b;
        this.f6481b = abstractC1365a;
    }

    /* renamed from: f */
    public final AbstractC1364d m7560f(AbstractC2013w6 abstractC2013w6) {
        synchronized (this) {
            AbstractC1364d abstractC1364d = this.f6482c;
            if (abstractC1364d != null) {
                return abstractC1364d;
            }
            x6 x6Var = new x6(abstractC2013w6);
            this.f6482c = x6Var;
            return x6Var;
        }
    }

    /* renamed from: a */
    public final AbstractC1798j7 m7565a() {
        return new e8(this, (C1680c8) null);
    }

    /* renamed from: b */
    public final AbstractC1747g7 m7564b() {
        if (this.f6481b == null) {
            return null;
        }
        return new d8(this, (C1680c8) null);
    }
}
