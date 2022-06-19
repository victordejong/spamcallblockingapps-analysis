package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerArray;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzeq.class */
public final class zzeq extends zzea<AtomicIntegerArray> {
    private static AtomicIntegerArray zzb(zzfy zzfyVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        zzfyVar.zzb();
        while (zzfyVar.zzf()) {
            try {
                arrayList.add(Integer.valueOf(zzfyVar.zzn()));
            } catch (NumberFormatException e) {
                throw new zzeb(e);
            }
        }
        zzfyVar.zzc();
        int size = arrayList.size();
        AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
        for (int i = 0; i < size; i++) {
            atomicIntegerArray.set(i, ((Integer) arrayList.get(i)).intValue());
        }
        return atomicIntegerArray;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ AtomicIntegerArray zza(zzfy zzfyVar) throws IOException {
        return zzb(zzfyVar);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ void zza(zzgd zzgdVar, AtomicIntegerArray atomicIntegerArray) throws IOException {
        AtomicIntegerArray atomicIntegerArray2;
        zzgdVar.zza();
        int length = atomicIntegerArray.length();
        for (int i = 0; i < length; i++) {
            zzgdVar.zza(atomicIntegerArray2.get(i));
        }
        zzgdVar.zzb();
    }
}
