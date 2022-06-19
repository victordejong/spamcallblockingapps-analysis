package com.google.android.gms.internal.common;

import java.io.IOException;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/common/zzv.class */
public final class zzv implements Iterable<String> {
    public final /* synthetic */ CharSequence zza;
    public final /* synthetic */ zzx zzb;

    public zzv(zzx zzxVar, CharSequence charSequence) {
        this.zzb = zzxVar;
        this.zza = charSequence;
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        Iterator<String> zzh;
        zzh = this.zzb.zzh(this.zza);
        return zzh;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        Iterator<String> it2 = iterator();
        try {
            if (it2.hasNext()) {
                sb.append(zzq.zza(it2.next(), ", "));
                while (it2.hasNext()) {
                    sb.append((CharSequence) ", ");
                    sb.append(zzq.zza(it2.next(), ", "));
                }
            }
            sb.append(']');
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
