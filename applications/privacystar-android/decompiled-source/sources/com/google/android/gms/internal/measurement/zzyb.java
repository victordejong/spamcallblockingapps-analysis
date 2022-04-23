package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzyb.class */
abstract class zzyb<T, B> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(B b, int i, long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(B b, int i, zzud zzudVar);

    abstract void zza(B b, int i, T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(T t, zzyw zzywVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean zza(zzxi zzxiVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zza(B b, zzxi zzxiVar) throws IOException {
        int tag = zzxiVar.getTag();
        int i = tag >>> 3;
        switch (tag & 7) {
            case 0:
                zza((zzyb<T, B>) b, i, zzxiVar.zzui());
                return true;
            case 1:
                zzb(b, i, zzxiVar.zzuk());
                return true;
            case 2:
                zza((zzyb<T, B>) b, i, zzxiVar.zzuo());
                return true;
            case 3:
                B zzye = zzye();
                while (zzxiVar.zzve() != Integer.MAX_VALUE && zza((zzyb<T, B>) zzye, zzxiVar)) {
                }
                if (((i << 3) | 4) != zzxiVar.getTag()) {
                    throw zzvt.zzwn();
                }
                zza((zzyb<T, B>) b, i, (int) zzab(zzye));
                return true;
            case 4:
                return false;
            case 5:
                zzc(b, i, zzxiVar.zzul());
                return true;
            default:
                throw zzvt.zzwo();
        }
    }

    abstract T zzab(B b);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int zzae(T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T zzah(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract B zzai(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int zzaj(T t);

    abstract void zzb(B b, int i, long j);

    abstract void zzc(B b, int i, int i2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzc(T t, zzyw zzywVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzf(Object obj, T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzg(Object obj, B b);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T zzh(T t, T t2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzu(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract B zzye();
}
