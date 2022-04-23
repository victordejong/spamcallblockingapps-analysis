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

    public C1730f8(AbstractC1364d.AbstractC1366b bVar, AbstractC1364d.AbstractC1365a aVar) {
        this.f6480a = bVar;
        this.f6481b = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public final AbstractC1364d m7560f(AbstractC2013w6 w6Var) {
        synchronized (this) {
            AbstractC1364d dVar = this.f6482c;
            if (dVar != null) {
                return dVar;
            }
            x6 x6Var = new x6(w6Var);
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
