package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfud.class */
public final class zzfud<P> {
    private final ConcurrentMap<zzfuc, List<zzfua<P>>> zza = new ConcurrentHashMap();
    private zzfua<P> zzb;
    private final Class<P> zzc;

    private zzfud(Class<P> cls) {
        this.zzc = cls;
    }

    public static <P> zzfud<P> zzb(Class<P> cls) {
        return new zzfud<>(cls);
    }

    public final zzfua<P> zza() {
        return this.zzb;
    }

    public final void zzc(zzfua<P> zzfuaVar) {
        if (zzfuaVar.zzc() == 3) {
            List<zzfua<P>> list = this.zza.get(new zzfuc(zzfuaVar.zzb(), null));
            List<zzfua<P>> list2 = list;
            if (list == null) {
                list2 = Collections.emptyList();
            }
            if (list2.isEmpty()) {
                throw new IllegalArgumentException("the primary entry cannot be set to an entry which is not held by this primitive set");
            }
            this.zzb = zzfuaVar;
            return;
        }
        throw new IllegalArgumentException("the primary entry has to be ENABLED");
    }

    public final zzfua<P> zzd(P p, zzgbb zzgbbVar) throws GeneralSecurityException {
        byte[] bArr;
        if (zzgbbVar.zzf() == 3) {
            int zzg = zzgbbVar.zzg() - 2;
            if (zzg != 1) {
                if (zzg != 2) {
                    if (zzg == 3) {
                        bArr = zzfti.zza;
                    } else if (zzg != 4) {
                        throw new GeneralSecurityException("unknown output prefix type");
                    }
                }
                bArr = ByteBuffer.allocate(5).put((byte) 0).putInt(zzgbbVar.zzd()).array();
            } else {
                bArr = ByteBuffer.allocate(5).put((byte) 1).putInt(zzgbbVar.zzd()).array();
            }
            zzfua<P> zzfuaVar = new zzfua<>(p, bArr, zzgbbVar.zzf(), zzgbbVar.zzg(), zzgbbVar.zzd());
            ArrayList arrayList = new ArrayList();
            arrayList.add(zzfuaVar);
            zzfuc zzfucVar = new zzfuc(zzfuaVar.zzb(), null);
            List<zzfua<P>> put = this.zza.put(zzfucVar, Collections.unmodifiableList(arrayList));
            if (put != null) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(put);
                arrayList2.add(zzfuaVar);
                this.zza.put(zzfucVar, Collections.unmodifiableList(arrayList2));
            }
            return zzfuaVar;
        }
        throw new GeneralSecurityException("only ENABLED key is allowed");
    }

    public final Class<P> zze() {
        return this.zzc;
    }
}
