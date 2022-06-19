package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqq.class */
final class aqq implements asg, atb {

    /* renamed from: a */
    private final Context f43043a;

    /* renamed from: b */
    private final cov f43044b;

    /* renamed from: c */
    private final AbstractC12876rg f43045c;

    public aqq(Context context, cov covVar, AbstractC12876rg abstractC12876rg) {
        this.f43043a = context;
        this.f43044b = covVar;
        this.f43045c = abstractC12876rg;
    }

    @Override // com.google.android.gms.internal.ads.atb
    /* renamed from: a */
    public final void mo17408a() {
        if (this.f43044b.f46244X == null || !this.f43044b.f46244X.f49756a) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (this.f43044b.f46244X.f49757b.isEmpty()) {
            return;
        }
        arrayList.add(this.f43044b.f46244X.f49757b);
    }

    @Override // com.google.android.gms.internal.ads.asg
    /* renamed from: a */
    public final void mo17741a(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.asg
    /* renamed from: b */
    public final void mo17739b(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.asg
    /* renamed from: c */
    public final void mo17738c(Context context) {
    }
}
