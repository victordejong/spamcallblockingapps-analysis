package com.google.android.exoplayer2;

import com.google.android.exoplayer2.source.MediaSource;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo.class */
public final class ExoPlayerImplInternal$MediaSourceRefreshInfo {
    public final Object manifest;
    public final MediaSource source;
    public final Timeline timeline;

    public ExoPlayerImplInternal$MediaSourceRefreshInfo(MediaSource mediaSource, Timeline timeline, Object obj) {
        this.source = mediaSource;
        this.timeline = timeline;
        this.manifest = obj;
    }
}
