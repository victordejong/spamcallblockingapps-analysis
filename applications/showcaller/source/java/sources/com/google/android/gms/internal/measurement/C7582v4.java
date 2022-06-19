package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;
/* renamed from: com.google.android.gms.internal.measurement.v4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/v4.class */
final class C7582v4 extends AbstractC7608x4 {

    /* renamed from: d */
    private int f34731d = 0;

    /* renamed from: e */
    private final int f34732e;

    /* renamed from: f */
    final /* synthetic */ zzgr f34733f;

    public C7582v4(zzgr zzgrVar) {
        this.f34733f = zzgrVar;
        this.f34732e = zzgrVar.zzc();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f34731d < this.f34732e;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7621y4
    public final byte zza() {
        int i = this.f34731d;
        if (i < this.f34732e) {
            this.f34731d = i + 1;
            return this.f34733f.zzb(i);
        }
        throw new NoSuchElementException();
    }
}
