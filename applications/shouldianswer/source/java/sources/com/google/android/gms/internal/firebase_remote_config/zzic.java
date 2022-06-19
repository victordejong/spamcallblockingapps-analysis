package com.google.android.gms.internal.firebase_remote_config;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzic.class */
final class zzic extends zzia {
    private static final Class<?> zzvc = Collections.unmodifiableList(Collections.emptyList()).getClass();

    /* JADX INFO: Access modifiers changed from: private */
    public zzic() {
        super();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <L> List<L> zza(Object obj, long j, int i) {
        zzhy zzhyVar;
        zzhy zzhyVar2;
        List<L> zzd = zzd(obj, j);
        if (zzd.isEmpty()) {
            zzhy zzhyVar3 = zzd instanceof zzhx ? new zzhy(i) : (!(zzd instanceof zzjc) || !(zzd instanceof zzhn)) ? new ArrayList(i) : ((zzhn) zzd).zzu(i);
            zzkd.zza(obj, j, zzhyVar3);
            zzhyVar = zzhyVar3;
        } else {
            if (zzvc.isAssignableFrom(zzd.getClass())) {
                ArrayList arrayList = new ArrayList(zzd.size() + i);
                arrayList.addAll(zzd);
                zzkd.zza(obj, j, arrayList);
                zzhyVar2 = arrayList;
            } else if (zzd instanceof zzkc) {
                zzhy zzhyVar4 = new zzhy(zzd.size() + i);
                zzhyVar4.addAll((zzkc) zzd);
                zzkd.zza(obj, j, zzhyVar4);
                zzhyVar2 = zzhyVar4;
            } else {
                zzhyVar = zzd;
                if (zzd instanceof zzjc) {
                    zzhyVar = zzd;
                    if (zzd instanceof zzhn) {
                        zzhn zzhnVar = (zzhn) zzd;
                        zzhyVar = zzd;
                        if (!zzhnVar.zzer()) {
                            zzhn zzu = zzhnVar.zzu(zzd.size() + i);
                            zzkd.zza(obj, j, zzu);
                            zzhyVar = zzu;
                        }
                    }
                }
            }
            zzhyVar = zzhyVar2;
        }
        return zzhyVar;
    }

    private static <E> List<E> zzd(Object obj, long j) {
        return (List) zzkd.zzp(obj, j);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzia
    public final <L> List<L> zza(Object obj, long j) {
        return zza(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzia
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
        zzkd.zza(obj, j, zzd);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzia
    public final void zzb(Object obj, long j) {
        zzhx zzhxVar;
        List list = (List) zzkd.zzp(obj, j);
        if (list instanceof zzhx) {
            zzhxVar = ((zzhx) list).zzhr();
        } else if (zzvc.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof zzjc) && (list instanceof zzhn)) {
                zzhn zzhnVar = (zzhn) list;
                if (!zzhnVar.zzer()) {
                    return;
                }
                zzhnVar.zzes();
                return;
            }
            zzhxVar = Collections.unmodifiableList(list);
        }
        zzkd.zza(obj, j, zzhxVar);
    }
}
