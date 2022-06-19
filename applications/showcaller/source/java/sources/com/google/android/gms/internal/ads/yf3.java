package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yf3.class */
final class yf3 extends cd3 {

    /* renamed from: d */
    final bg3 f32489d;

    /* renamed from: e */
    dd3 f32490e = m8835a();

    /* renamed from: f */
    final /* synthetic */ zzghy f32491f;

    public yf3(zzghy zzghyVar) {
        this.f32491f = zzghyVar;
        this.f32489d = new bg3(zzghyVar, null);
    }

    /* renamed from: a */
    private final dd3 m8835a() {
        if (this.f32489d.hasNext()) {
            return this.f32489d.next().iterator();
        }
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f32490e != null;
    }

    @Override // com.google.android.gms.internal.ads.dd3
    public final byte zza() {
        dd3 dd3Var = this.f32490e;
        if (dd3Var != null) {
            byte zza = dd3Var.zza();
            if (!this.f32490e.hasNext()) {
                this.f32490e = m8835a();
            }
            return zza;
        }
        throw new NoSuchElementException();
    }
}
