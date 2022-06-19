package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ad3.class */
public final class ad3 extends cd3 {

    /* renamed from: d */
    private int f19911d = 0;

    /* renamed from: e */
    private final int f19912e;

    /* renamed from: f */
    final /* synthetic */ zzgex f19913f;

    public ad3(zzgex zzgexVar) {
        this.f19913f = zzgexVar;
        this.f19912e = zzgexVar.zzc();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f19911d < this.f19912e;
    }

    @Override // com.google.android.gms.internal.ads.dd3
    public final byte zza() {
        int i = this.f19911d;
        if (i < this.f19912e) {
            this.f19911d = i + 1;
            return this.f19913f.zzb(i);
        }
        throw new NoSuchElementException();
    }
}
