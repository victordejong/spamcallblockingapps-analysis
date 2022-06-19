package com.google.android.gms.internal.measurement;

import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzgj.class */
final class zzgj implements Comparator<zzgs> {
    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzgs zzgsVar, zzgs zzgsVar2) {
        int i;
        zzgs zzgsVar3 = zzgsVar;
        zzgs zzgsVar4 = zzgsVar2;
        zzgi zzgiVar = new zzgi(zzgsVar3);
        zzgi zzgiVar2 = new zzgi(zzgsVar4);
        while (zzgiVar.hasNext() && zzgiVar2.hasNext()) {
            i = Integer.compare(zzgiVar.zza() & 255, zzgiVar2.zza() & 255);
            if (i != 0) {
                break;
            }
        }
        i = Integer.compare(zzgsVar3.zzc(), zzgsVar4.zzc());
        return i;
    }
}
