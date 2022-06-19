package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.source.MediaSource;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener.class */
public final class CompositeMediaSource$MediaSourceAndListener {
    public final MediaSourceEventListener eventListener;
    public final MediaSource.SourceInfoRefreshListener listener;
    public final MediaSource mediaSource;

    public CompositeMediaSource$MediaSourceAndListener(MediaSource mediaSource, MediaSource.SourceInfoRefreshListener sourceInfoRefreshListener, MediaSourceEventListener mediaSourceEventListener) {
        this.mediaSource = mediaSource;
        this.listener = sourceInfoRefreshListener;
        this.eventListener = mediaSourceEventListener;
    }
}
