package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzwy.class */
final class zzwy<T> implements zzxj<T> {
    private final zzwt zzcbd;
    private final boolean zzcbe;
    private final zzyb<?, ?> zzcbn;
    private final zzva<?> zzcbo;

    private zzwy(zzyb<?, ?> zzybVar, zzva<?> zzvaVar, zzwt zzwtVar) {
        this.zzcbn = zzybVar;
        this.zzcbe = zzvaVar.zze(zzwtVar);
        this.zzcbo = zzvaVar;
        this.zzcbd = zzwtVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> zzwy<T> zza(zzyb<?, ?> zzybVar, zzva<?> zzvaVar, zzwt zzwtVar) {
        return new zzwy<>(zzybVar, zzvaVar, zzwtVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final boolean equals(T t, T t2) {
        if (!this.zzcbn.zzah(t).equals(this.zzcbn.zzah(t2))) {
            return false;
        }
        if (this.zzcbe) {
            return this.zzcbo.zzs(t).equals(this.zzcbo.zzs(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final int hashCode(T t) {
        int hashCode = this.zzcbn.zzah(t).hashCode();
        int i = hashCode;
        if (this.zzcbe) {
            i = (hashCode * 53) + this.zzcbo.zzs(t).hashCode();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final T newInstance() {
        return (T) this.zzcbd.zzwe().zzwi();
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final void zza(T t, zzxi zzxiVar, zzuz zzuzVar) throws IOException {
        boolean z;
        zzyb<?, ?> zzybVar = this.zzcbn;
        zzva<?> zzvaVar = this.zzcbo;
        Object zzai = zzybVar.zzai(t);
        zzvd<?> zzt = zzvaVar.zzt(t);
        do {
            try {
                if (zzxiVar.zzve() != Integer.MAX_VALUE) {
                    int tag = zzxiVar.getTag();
                    if (tag == 11) {
                        Object obj = null;
                        zzud zzudVar = null;
                        int i = 0;
                        while (zzxiVar.zzve() != Integer.MAX_VALUE) {
                            int tag2 = zzxiVar.getTag();
                            if (tag2 == 16) {
                                i = zzxiVar.zzup();
                                obj = zzvaVar.zza(zzuzVar, this.zzcbd, i);
                            } else if (tag2 == 26) {
                                if (obj != null) {
                                    zzvaVar.zza(zzxiVar, obj, zzuzVar, zzt);
                                } else {
                                    zzudVar = zzxiVar.zzuo();
                                }
                            } else if (!zzxiVar.zzvf()) {
                                break;
                            }
                        }
                        if (zzxiVar.getTag() != 12) {
                            throw zzvt.zzwn();
                        } else if (zzudVar != null) {
                            if (obj != null) {
                                zzvaVar.zza(zzudVar, obj, zzuzVar, zzt);
                            } else {
                                zzybVar.zza((zzyb<?, ?>) zzai, i, zzudVar);
                            }
                        }
                    } else if ((tag & 7) == 2) {
                        Object zza = zzvaVar.zza(zzuzVar, this.zzcbd, tag >>> 3);
                        if (zza != null) {
                            zzvaVar.zza(zzxiVar, zza, zzuzVar, zzt);
                        } else {
                            z = zzybVar.zza((zzyb<?, ?>) zzai, zzxiVar);
                        }
                    } else {
                        z = zzxiVar.zzvf();
                    }
                    z = true;
                } else {
                    return;
                }
            } finally {
                zzybVar.zzg(t, zzai);
            }
        } while (z);
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final void zza(T t, zzyw zzywVar) throws IOException {
        Iterator<Map.Entry<?, Object>> it = this.zzcbo.zzs(t).iterator();
        while (it.hasNext()) {
            Map.Entry<?, Object> next = it.next();
            zzvf zzvfVar = (zzvf) next.getKey();
            if (zzvfVar.zzvx() != zzyv.MESSAGE || zzvfVar.zzvy() || zzvfVar.zzvz()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            } else if (next instanceof zzvy) {
                zzywVar.zza(zzvfVar.zzc(), (Object) ((zzvy) next).zzwu().zztt());
            } else {
                zzywVar.zza(zzvfVar.zzc(), next.getValue());
            }
        }
        zzyb<?, ?> zzybVar = this.zzcbn;
        zzybVar.zzc(zzybVar.zzah(t), zzywVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final int zzae(T t) {
        zzyb<?, ?> zzybVar = this.zzcbn;
        int zzaj = zzybVar.zzaj(zzybVar.zzah(t)) + 0;
        int i = zzaj;
        if (this.zzcbe) {
            i = zzaj + this.zzcbo.zzs(t).zzvv();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final boolean zzaf(T t) {
        return this.zzcbo.zzs(t).isInitialized();
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final void zzd(T t, T t2) {
        zzxl.zza(this.zzcbn, t, t2);
        if (this.zzcbe) {
            zzxl.zza(this.zzcbo, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final void zzu(T t) {
        this.zzcbn.zzu(t);
        this.zzcbo.zzu(t);
    }
}
