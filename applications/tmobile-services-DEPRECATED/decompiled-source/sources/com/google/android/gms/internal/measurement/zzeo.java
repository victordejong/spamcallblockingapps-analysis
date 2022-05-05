package com.google.android.gms.internal.measurement;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzeo.class */
final class zzeo extends zzet<Map.Entry<K, V>> {

    /* renamed from: j */
    private final /* synthetic */ zzem f8391j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzeo(zzem zzemVar) {
        super(zzemVar, null);
        this.f8391j = zzemVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzet
    /* renamed from: a */
    final /* synthetic */ Object mo12707a(int i) {
        return new zzev(this.f8391j, i);
    }
}
