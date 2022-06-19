package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzadv.class */
public final class zzadv {
    private static zzacx<Long> zzdfa = zzacx.zzb("gads:ad_loader:timeout_ms", (long) ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
    public static zzacx<Long> zzdfb = zzacx.zzb("gads:rendering:timeout_ms", (long) ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
    private static zzacx<Long> zzdfc = zzacx.zzb("gads:resolve_future:default_timeout_ms", 30000L);
}
