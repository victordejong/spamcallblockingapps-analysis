package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bus.class */
final class bus implements bap {

    /* renamed from: a  reason: collision with root package name */
    asc f25156a = null;

    /* renamed from: b  reason: collision with root package name */
    private final cov f25157b;

    /* renamed from: c  reason: collision with root package name */
    private final os f25158c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f25159d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bus(cov covVar, os osVar, boolean z) {
        this.f25157b = covVar;
        this.f25158c = osVar;
        this.f25159d = z;
    }

    @Override // com.google.android.gms.internal.ads.bap
    public final void a(boolean z, Context context) throws zzcbq {
        try {
            if (!(this.f25159d ? this.f25158c.c(d.a(context)) : this.f25158c.b(d.a(context)))) {
                throw new zzcbq("Adapter failed to show.");
            } else if (this.f25156a != null) {
                if (!((Boolean) ekb.e().a(aq.bb)).booleanValue() && this.f25157b.S == 2) {
                    this.f25156a.a();
                }
            }
        } catch (Throwable th) {
            throw new zzcbq(th);
        }
    }
}
