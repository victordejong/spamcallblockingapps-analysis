package com.google.android.gms.internal.measurement;

import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zziq.class */
public final class zziq implements Comparator {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        int i;
        zzix zzixVar = (zzix) obj;
        zzix zzixVar2 = (zzix) obj2;
        zzio zzioVar = new zzio(zzixVar);
        zzio zzioVar2 = new zzio(zzixVar2);
        while (zzioVar.hasNext() && zzioVar2.hasNext()) {
            i = zzip.zza(zzioVar.zza() & 255, zzioVar2.zza() & 255);
            if (i != 0) {
                break;
            }
        }
        i = zzip.zza(zzixVar.zzd(), zzixVar2.zzd());
        return i;
    }
}
