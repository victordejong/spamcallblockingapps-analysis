package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.ads.bk */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bk.class */
public final class BinderC12243bk extends AbstractBinderC12244bl {

    /* renamed from: a */
    private final zzg f44128a;

    /* renamed from: b */
    private final String f44129b;

    /* renamed from: c */
    private final String f44130c;

    public BinderC12243bk(zzg zzgVar, String str, String str2) {
        this.f44128a = zzgVar;
        this.f44129b = str;
        this.f44130c = str2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12245bm
    /* renamed from: a */
    public final String mo17712a() {
        return this.f44129b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12245bm
    /* renamed from: a */
    public final void mo17711a(AbstractC12126b abstractC12126b) {
        if (abstractC12126b == null) {
            return;
        }
        this.f44128a.zzh((View) BinderC12129d.m18980a(abstractC12126b));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12245bm
    /* renamed from: b */
    public final String mo17710b() {
        return this.f44130c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12245bm
    /* renamed from: c */
    public final void mo17709c() {
        this.f44128a.zzkg();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12245bm
    /* renamed from: d */
    public final void mo17708d() {
        this.f44128a.zzkh();
    }
}
