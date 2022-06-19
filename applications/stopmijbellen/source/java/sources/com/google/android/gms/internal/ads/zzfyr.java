package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfyr.class */
public final class zzfyr<P> {
    private final ConcurrentMap<zzfyq, List<zzfyo<P>>> zza = new ConcurrentHashMap();
    private zzfyo<P> zzb;
    private final Class<P> zzc;

    private zzfyr(Class<P> cls) {
        this.zzc = cls;
    }

    public static <P> zzfyr<P> zzc(Class<P> cls) {
        return new zzfyr<>(cls);
    }

    public final zzfyo<P> zza(P p, zzgfp zzgfpVar) throws GeneralSecurityException {
        byte[] bArr;
        if (zzgfpVar.zzf() == 3) {
            int zzg = zzgfpVar.zzg() - 2;
            if (zzg != 1) {
                if (zzg != 2) {
                    if (zzg == 3) {
                        bArr = zzfxw.zza;
                    } else if (zzg != 4) {
                        throw new GeneralSecurityException("unknown output prefix type");
                    }
                }
                bArr = ByteBuffer.allocate(5).put((byte) 0).putInt(zzgfpVar.zza()).array();
            } else {
                bArr = ByteBuffer.allocate(5).put((byte) 1).putInt(zzgfpVar.zza()).array();
            }
            zzfyo<P> zzfyoVar = new zzfyo<>(p, bArr, zzgfpVar.zzf(), zzgfpVar.zzg(), zzgfpVar.zza());
            ArrayList arrayList = new ArrayList();
            arrayList.add(zzfyoVar);
            zzfyq zzfyqVar = new zzfyq(zzfyoVar.zzb(), null);
            List<zzfyo<P>> put = this.zza.put(zzfyqVar, Collections.unmodifiableList(arrayList));
            if (put != null) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(put);
                arrayList2.add(zzfyoVar);
                this.zza.put(zzfyqVar, Collections.unmodifiableList(arrayList2));
            }
            return zzfyoVar;
        }
        throw new GeneralSecurityException("only ENABLED key is allowed");
    }

    public final zzfyo<P> zzb() {
        return this.zzb;
    }

    public final Class<P> zzd() {
        return this.zzc;
    }

    public final void zze(zzfyo<P> zzfyoVar) {
        if (zzfyoVar.zzc() == 3) {
            List<zzfyo<P>> list = this.zza.get(new zzfyq(zzfyoVar.zzb(), null));
            List<zzfyo<P>> list2 = list;
            if (list == null) {
                list2 = Collections.emptyList();
            }
            if (list2.isEmpty()) {
                throw new IllegalArgumentException("the primary entry cannot be set to an entry which is not held by this primitive set");
            }
            this.zzb = zzfyoVar;
            return;
        }
        throw new IllegalArgumentException("the primary entry has to be ENABLED");
    }
}
