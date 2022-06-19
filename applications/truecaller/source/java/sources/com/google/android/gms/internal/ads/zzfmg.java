package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfmg.class */
public final class zzfmg {
    private final zzflk zza;
    private final zzfmf zzb;

    private zzfmg(zzfmf zzfmfVar) {
        zzflj zzfljVar = zzflj.zza;
        this.zzb = zzfmfVar;
        this.zza = zzfljVar;
    }

    public static zzfmg zzb(zzflk zzflkVar) {
        return new zzfmg(new zzfma(zzflkVar));
    }

    public static zzfmg zzc(int i) {
        return new zzfmg(new zzfmc(4000));
    }

    public final Iterator<String> zzg(CharSequence charSequence) {
        return this.zzb.zza(this, charSequence);
    }

    public final Iterable<String> zzd(CharSequence charSequence) {
        Objects.requireNonNull(charSequence);
        return new zzfmd(this, charSequence);
    }

    public final List<String> zzf(CharSequence charSequence) {
        Iterator<String> zzg = zzg(charSequence);
        ArrayList arrayList = new ArrayList();
        while (zzg.hasNext()) {
            arrayList.add(zzg.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
