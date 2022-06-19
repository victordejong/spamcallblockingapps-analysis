package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfqp.class */
public final class zzfqp {
    private final zzfps zza;
    private final zzfqo zzb;

    private zzfqp(zzfqo zzfqoVar) {
        zzfpr zzfprVar = zzfpr.zza;
        this.zzb = zzfqoVar;
        this.zza = zzfprVar;
    }

    public static zzfqp zzb(int i) {
        return new zzfqp(new zzfql(4000));
    }

    public static zzfqp zzc(zzfps zzfpsVar) {
        return new zzfqp(new zzfqj(zzfpsVar));
    }

    public final Iterator<String> zzg(CharSequence charSequence) {
        return this.zzb.zza(this, charSequence);
    }

    public final Iterable<String> zzd(CharSequence charSequence) {
        Objects.requireNonNull(charSequence);
        return new zzfqm(this, charSequence);
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
