package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqq.class */
final class aqq implements asg, atb {

    /* renamed from: a  reason: collision with root package name */
    private final Context f23782a;

    /* renamed from: b  reason: collision with root package name */
    private final cov f23783b;

    /* renamed from: c  reason: collision with root package name */
    private final rg f23784c;

    public aqq(Context context, cov covVar, rg rgVar) {
        this.f23782a = context;
        this.f23783b = covVar;
        this.f23784c = rgVar;
    }

    @Override // com.google.android.gms.internal.ads.atb
    public final void a() {
        if (this.f23783b.X != null && this.f23783b.X.f28350a) {
            ArrayList arrayList = new ArrayList();
            if (!this.f23783b.X.f28351b.isEmpty()) {
                arrayList.add(this.f23783b.X.f28351b);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.asg
    public final void a(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.asg
    public final void b(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.asg
    public final void c(Context context) {
    }
}
