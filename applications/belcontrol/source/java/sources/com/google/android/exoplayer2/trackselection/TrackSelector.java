package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.source.TrackGroupArray;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/TrackSelector.class */
public abstract class TrackSelector {
    private InvalidationListener listener;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener.class */
    public interface InvalidationListener {
        void onTrackSelectionsInvalidated();
    }

    public final void init(InvalidationListener invalidationListener) {
        this.listener = invalidationListener;
    }

    public final void invalidate() {
        InvalidationListener invalidationListener = this.listener;
        if (invalidationListener != null) {
            invalidationListener.onTrackSelectionsInvalidated();
        }
    }

    public abstract void onSelectionActivated(Object obj);

    public abstract TrackSelectorResult selectTracks(RendererCapabilities[] rendererCapabilitiesArr, TrackGroupArray trackGroupArray);
}
