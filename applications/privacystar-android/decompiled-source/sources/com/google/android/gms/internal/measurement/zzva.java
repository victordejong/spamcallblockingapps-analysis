package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvf;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzva.class */
abstract class zzva<T extends zzvf<T>> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Object zza(zzuz zzuzVar, zzwt zzwtVar, int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract <UT, UB> UB zza(zzxi zzxiVar, Object obj, zzuz zzuzVar, zzvd<T> zzvdVar, UB ub, zzyb<UT, UB> zzybVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(zzud zzudVar, Object obj, zzuz zzuzVar, zzvd<T> zzvdVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(zzxi zzxiVar, Object obj, zzuz zzuzVar, zzvd<T> zzvdVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(zzyw zzywVar, Map.Entry<?, ?> entry) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(Object obj, zzvd<T> zzvdVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int zzb(Map.Entry<?, ?> entry);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean zze(zzwt zzwtVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract zzvd<T> zzs(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract zzvd<T> zzt(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzu(Object obj);
}
