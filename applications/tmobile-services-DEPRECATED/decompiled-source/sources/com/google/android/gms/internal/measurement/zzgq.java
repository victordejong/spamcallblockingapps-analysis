package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgq.class */
public final class zzgq extends zzgs {

    /* renamed from: f */
    private int f8459f = 0;

    /* renamed from: g */
    private final int f8460g;

    /* renamed from: h */
    private final /* synthetic */ zzgr f8461h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgq(zzgr zzgrVar) {
        this.f8461h = zzgrVar;
        this.f8460g = this.f8461h.mo12617d();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8459f < this.f8460g;
    }

    @Override // com.google.android.gms.internal.measurement.zzgw
    public final byte zza() {
        int i = this.f8459f;
        if (i < this.f8460g) {
            this.f8459f = i + 1;
            return this.f8461h.mo12612r(i);
        }
        throw new NoSuchElementException();
    }
}
