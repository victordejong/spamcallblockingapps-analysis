package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.SparseArray;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpn.class */
public final class zzpn implements zzqk {
    private final zzdh zza;
    private final SparseArray<zzqk> zzb;
    private final int[] zzc;

    public zzpn(Context context, zzww zzwwVar) {
        zzto zztoVar = new zzto(context);
        this.zza = zztoVar;
        SparseArray<zzqk> sparseArray = new SparseArray<>();
        try {
            sparseArray.put(0, (zzqk) Class.forName("androidx.media3.exoplayer.dash.DashMediaSource$Factory").asSubclass(zzqk.class).getConstructor(zzdh.class).newInstance(zztoVar));
        } catch (Exception e) {
        }
        try {
            sparseArray.put(1, (zzqk) Class.forName("androidx.media3.exoplayer.smoothstreaming.SsMediaSource$Factory").asSubclass(zzqk.class).getConstructor(zzdh.class).newInstance(zztoVar));
        } catch (Exception e2) {
        }
        try {
            sparseArray.put(2, (zzqk) Class.forName("androidx.media3.exoplayer.hls.HlsMediaSource$Factory").asSubclass(zzqk.class).getConstructor(zzdh.class).newInstance(zztoVar));
        } catch (Exception e3) {
        }
        try {
            sparseArray.put(3, (zzqk) Class.forName("androidx.media3.exoplayer.rtsp.RtspMediaSource$Factory").asSubclass(zzqk.class).getConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Exception e4) {
        }
        sparseArray.put(4, new zzrc(zztoVar, zzwwVar));
        this.zzb = sparseArray;
        this.zzc = new int[sparseArray.size()];
        for (int i = 0; i < this.zzb.size(); i++) {
            this.zzc[i] = this.zzb.keyAt(i);
        }
    }
}
