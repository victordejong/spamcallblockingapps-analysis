package com.google.android.exoplayer2;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ControlDispatcher.class */
public interface ControlDispatcher {
    boolean dispatchSeekTo(Player player, int i, long j);

    boolean dispatchSetPlayWhenReady(Player player, boolean z);

    boolean dispatchSetRepeatMode(Player player, int i);

    boolean dispatchSetShuffleModeEnabled(Player player, boolean z);

    boolean dispatchStop(Player player, boolean z);
}
