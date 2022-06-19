package com.google.android.gms.internal.common;

import java.io.IOException;
import java.util.Iterator;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/common/zzv.class */
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
        StringBuilder m8558w = C22128a.m8558w('[');
        Iterator<String> it = iterator();
        try {
            if (it.hasNext()) {
                m8558w.append(zzq.zza(it.next(), ", "));
                while (it.hasNext()) {
                    m8558w.append((CharSequence) ", ");
                    m8558w.append(zzq.zza(it.next(), ", "));
                }
            }
            m8558w.append(']');
            return m8558w.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
