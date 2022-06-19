package com.google.android.gms.internal.measurement;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zziw.class */
final class zziw implements Comparator<zzjd> {
    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzjd zzjdVar, zzjd zzjdVar2) {
        int i;
        zzjd zzjdVar3 = zzjdVar;
        zzjd zzjdVar4 = zzjdVar2;
        zziv zzivVar = new zziv(zzjdVar3);
        zziv zzivVar2 = new zziv(zzjdVar4);
        while (zzivVar.hasNext() && zzivVar2.hasNext()) {
            i = Integer.compare(zzivVar.zza() & 255, zzivVar2.zza() & 255);
            if (i != 0) {
                break;
            }
        }
        i = Integer.compare(zzjdVar3.zzc(), zzjdVar4.zzc());
        return i;
    }
}
