package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzema.class */
final class zzema extends zzely {
    private static final Class<?> zzise = Collections.unmodifiableList(Collections.emptyList()).getClass();

    /* JADX INFO: Access modifiers changed from: private */
    public zzema() {
        super();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <L> List<L> zza(Object obj, long j, int i) {
        zzelw zzelwVar;
        zzelw zzelwVar2;
        List<L> zzd = zzd(obj, j);
        if (zzd.isEmpty()) {
            zzelw zzelwVar3 = zzd instanceof zzelv ? new zzelw(i) : (!(zzd instanceof zzena) || !(zzd instanceof zzell)) ? new ArrayList(i) : ((zzell) zzd).zzfy(i);
            zzeoh.zza(obj, j, zzelwVar3);
            zzelwVar = zzelwVar3;
        } else {
            if (zzise.isAssignableFrom(zzd.getClass())) {
                ArrayList arrayList = new ArrayList(zzd.size() + i);
                arrayList.addAll(zzd);
                zzeoh.zza(obj, j, arrayList);
                zzelwVar2 = arrayList;
            } else if (zzd instanceof zzeog) {
                zzelw zzelwVar4 = new zzelw(zzd.size() + i);
                zzelwVar4.addAll((zzeog) zzd);
                zzeoh.zza(obj, j, zzelwVar4);
                zzelwVar2 = zzelwVar4;
            } else {
                zzelwVar = zzd;
                if (zzd instanceof zzena) {
                    zzelwVar = zzd;
                    if (zzd instanceof zzell) {
                        zzell zzellVar = (zzell) zzd;
                        zzelwVar = zzd;
                        if (!zzellVar.zzbge()) {
                            zzell zzfy = zzellVar.zzfy(zzd.size() + i);
                            zzeoh.zza(obj, j, zzfy);
                            zzelwVar = zzfy;
                        }
                    }
                }
            }
            zzelwVar = zzelwVar2;
        }
        return zzelwVar;
    }

    private static <E> List<E> zzd(Object obj, long j) {
        return (List) zzeoh.zzp(obj, j);
    }

    @Override // com.google.android.gms.internal.ads.zzely
    public final <L> List<L> zza(Object obj, long j) {
        return zza(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.ads.zzely
    public final <E> void zza(Object obj, Object obj2, long j) {
        List zzd = zzd(obj2, j);
        List zza = zza(obj, j, zzd.size());
        int size = zza.size();
        int size2 = zzd.size();
        if (size > 0 && size2 > 0) {
            zza.addAll(zzd);
        }
        if (size > 0) {
            zzd = zza;
        }
        zzeoh.zza(obj, j, zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzely
    public final void zzb(Object obj, long j) {
        zzelv zzelvVar;
        List list = (List) zzeoh.zzp(obj, j);
        if (list instanceof zzelv) {
            zzelvVar = ((zzelv) list).zzbjn();
        } else if (zzise.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof zzena) && (list instanceof zzell)) {
                zzell zzellVar = (zzell) list;
                if (!zzellVar.zzbge()) {
                    return;
                }
                zzellVar.zzbgf();
                return;
            }
            zzelvVar = Collections.unmodifiableList(list);
        }
        zzeoh.zza(obj, j, zzelvVar);
    }
}
