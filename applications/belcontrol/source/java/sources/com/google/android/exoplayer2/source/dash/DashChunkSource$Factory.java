package com.google.android.exoplayer2.source.dash;

import com.google.android.exoplayer2.source.dash.PlayerEmsgHandler;
import com.google.android.exoplayer2.source.dash.manifest.DashManifest;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.upstream.LoaderErrorThrower;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/dash/DashChunkSource$Factory.class */
public interface DashChunkSource$Factory {
    DashChunkSource createDashChunkSource(LoaderErrorThrower loaderErrorThrower, DashManifest dashManifest, int i, int[] iArr, TrackSelection trackSelection, int i2, long j, boolean z, boolean z2, PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler);
}
