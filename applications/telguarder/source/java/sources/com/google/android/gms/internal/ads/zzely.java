package com.google.android.gms.internal.ads;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzely.class */
public abstract class zzely {
    private static final zzely zzisc = new zzema();
    private static final zzely zzisd = new zzelz();

    /* JADX INFO: Access modifiers changed from: private */
    public zzely() {
    }

    public static zzely zzbjo() {
        return zzisc;
    }

    public static zzely zzbjp() {
        return zzisd;
    }

    public abstract <L> List<L> zza(Object obj, long j);

    public abstract <L> void zza(Object obj, Object obj2, long j);

    public abstract void zzb(Object obj, long j);
}
