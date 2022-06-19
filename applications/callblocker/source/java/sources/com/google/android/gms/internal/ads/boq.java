package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.BinderC2734b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/boq.class */
final class boq implements awx {

    /* renamed from: a */
    private final cgr f11697a;

    /* renamed from: b */
    private final AbstractC3333mn f11698b;

    /* renamed from: c */
    private final boolean f11699c;

    /* renamed from: d */
    private aqh f11700d = null;

    public boq(cgr cgrVar, AbstractC3333mn abstractC3333mn, boolean z) {
        this.f11697a = cgrVar;
        this.f11698b = abstractC3333mn;
        this.f11699c = z;
    }

    /* renamed from: a */
    public final void m11739a(aqh aqhVar) {
        this.f11700d = aqhVar;
    }

    @Override // com.google.android.gms.internal.ads.awx
    /* renamed from: a */
    public final void mo11680a(boolean z, Context context) {
        try {
            if (!(this.f11699c ? this.f11698b.mo7439c(BinderC2734b.m13794a(context)) : this.f11698b.mo7444b(BinderC2734b.m13794a(context)))) {
                throw new zzbxy("Adapter failed to show.");
            }
            if (this.f11700d == null || this.f11697a.f12969O != 2) {
                return;
            }
            this.f11700d.m12811a();
        } catch (Throwable th) {
            throw new zzbxy(th);
        }
    }
}
