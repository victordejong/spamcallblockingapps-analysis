package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.ads.bus */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bus.class */
final class C12254bus implements bap {

    /* renamed from: a */
    asc f44810a = null;

    /* renamed from: b */
    private final cov f44811b;

    /* renamed from: c */
    private final AbstractC12807os f44812c;

    /* renamed from: d */
    private final boolean f44813d;

    public C12254bus(cov covVar, AbstractC12807os abstractC12807os, boolean z) {
        this.f44811b = covVar;
        this.f44812c = abstractC12807os;
        this.f44813d = z;
    }

    @Override // com.google.android.gms.internal.ads.bap
    /* renamed from: a */
    public final void mo17566a(boolean z, Context context) throws zzcbq {
        try {
            if (!(this.f44813d ? this.f44812c.mo14262c(BinderC12129d.m18979a(context)) : this.f44812c.mo14268b(BinderC12129d.m18979a(context)))) {
                throw new zzcbq("Adapter failed to show.");
            }
            if (this.f44810a == null) {
                return;
            }
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42718bb)).booleanValue() || this.f44811b.f46239S != 2) {
                return;
            }
            this.f44810a.m18434a();
        } catch (Throwable th) {
            throw new zzcbq(th);
        }
    }
}
