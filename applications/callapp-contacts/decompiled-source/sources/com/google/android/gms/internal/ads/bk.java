package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bk.class */
public final class bk extends bl {

    /* renamed from: a  reason: collision with root package name */
    private final zzg f24576a;

    /* renamed from: b  reason: collision with root package name */
    private final String f24577b;

    /* renamed from: c  reason: collision with root package name */
    private final String f24578c;

    public bk(zzg zzgVar, String str, String str2) {
        this.f24576a = zzgVar;
        this.f24577b = str;
        this.f24578c = str2;
    }

    @Override // com.google.android.gms.internal.ads.bm
    public final String a() {
        return this.f24577b;
    }

    @Override // com.google.android.gms.internal.ads.bm
    public final void a(b bVar) {
        if (bVar != null) {
            this.f24576a.zzh((View) d.a(bVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.bm
    public final String b() {
        return this.f24578c;
    }

    @Override // com.google.android.gms.internal.ads.bm
    public final void c() {
        this.f24576a.zzkg();
    }

    @Override // com.google.android.gms.internal.ads.bm
    public final void d() {
        this.f24576a.zzkh();
    }
}
