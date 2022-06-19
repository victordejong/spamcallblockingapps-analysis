package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfqm.class */
public final class zzfqm implements Iterable<String> {
    public final /* synthetic */ CharSequence zza;
    public final /* synthetic */ zzfqp zzb;

    public zzfqm(zzfqp zzfqpVar, CharSequence charSequence) {
        this.zzb = zzfqpVar;
        this.zza = charSequence;
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        Iterator<String> zzg;
        zzg = this.zzb.zzg(this.zza);
        return zzg;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        Iterator<String> it2 = iterator();
        try {
            if (it2.hasNext()) {
                sb.append(zzfpw.zza(it2.next(), ", "));
                while (it2.hasNext()) {
                    sb.append((CharSequence) ", ");
                    sb.append(zzfpw.zza(it2.next(), ", "));
                }
            }
            sb.append(']');
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
