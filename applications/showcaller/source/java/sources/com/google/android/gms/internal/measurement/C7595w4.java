package com.google.android.gms.internal.measurement;

import java.util.Comparator;
/* renamed from: com.google.android.gms.internal.measurement.w4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/w4.class */
final class C7595w4 implements Comparator<zzgr> {
    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzgr zzgrVar, zzgr zzgrVar2) {
        int i;
        zzgr zzgrVar3 = zzgrVar;
        zzgr zzgrVar4 = zzgrVar2;
        C7582v4 c7582v4 = new C7582v4(zzgrVar3);
        C7582v4 c7582v42 = new C7582v4(zzgrVar4);
        while (c7582v4.hasNext() && c7582v42.hasNext()) {
            i = Integer.compare(c7582v4.zza() & 255, c7582v42.zza() & 255);
            if (i != 0) {
                break;
            }
        }
        i = Integer.compare(zzgrVar3.zzc(), zzgrVar4.zzc());
        return i;
    }
}
