package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.RendererConfiguration;
import com.google.android.exoplayer2.util.Util;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/TrackSelectorResult.class */
public final class TrackSelectorResult {
    public final Object info;
    public final int length;
    public final RendererConfiguration[] rendererConfigurations;
    public final TrackSelectionArray selections;

    public TrackSelectorResult(RendererConfiguration[] rendererConfigurationArr, TrackSelection[] trackSelectionArr, Object obj) {
        this.rendererConfigurations = rendererConfigurationArr;
        this.selections = new TrackSelectionArray(trackSelectionArr);
        this.info = obj;
        this.length = rendererConfigurationArr.length;
    }

    public boolean isEquivalent(TrackSelectorResult trackSelectorResult) {
        if (trackSelectorResult == null || trackSelectorResult.selections.length != this.selections.length) {
            return false;
        }
        for (int i = 0; i < this.selections.length; i++) {
            if (!isEquivalent(trackSelectorResult, i)) {
                return false;
            }
        }
        return true;
    }

    public boolean isEquivalent(TrackSelectorResult trackSelectorResult, int i) {
        if (trackSelectorResult == null) {
            return false;
        }
        boolean z = false;
        if (Util.areEqual(this.rendererConfigurations[i], trackSelectorResult.rendererConfigurations[i])) {
            z = false;
            if (Util.areEqual(this.selections.get(i), trackSelectorResult.selections.get(i))) {
                z = true;
            }
        }
        return z;
    }

    public boolean isRendererEnabled(int i) {
        return this.rendererConfigurations[i] != null;
    }
}
