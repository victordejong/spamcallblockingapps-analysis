package com.google.android.exoplayer2.trackselection;

import android.content.Context;
import android.graphics.Point;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.util.Util;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder.class */
public final class DefaultTrackSelector$ParametersBuilder {
    private boolean allowMixedMimeAdaptiveness;
    private boolean allowNonSeamlessAdaptiveness;
    private int disabledTextTrackSelectionFlags;
    private boolean exceedRendererCapabilitiesIfNecessary;
    private boolean exceedVideoConstraintsIfNecessary;
    private boolean forceLowestBitrate;
    private int maxVideoBitrate;
    private int maxVideoHeight;
    private int maxVideoWidth;
    private String preferredAudioLanguage;
    private String preferredTextLanguage;
    private final SparseBooleanArray rendererDisabledFlags;
    private boolean selectUndeterminedTextLanguage;
    private final SparseArray<Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride>> selectionOverrides;
    private int tunnelingAudioSessionId;
    private int viewportHeight;
    private boolean viewportOrientationMayChange;
    private int viewportWidth;

    public DefaultTrackSelector$ParametersBuilder() {
        this(DefaultTrackSelector$Parameters.DEFAULT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DefaultTrackSelector$ParametersBuilder(DefaultTrackSelector$Parameters defaultTrackSelector$Parameters) {
        this.selectionOverrides = cloneSelectionOverrides(DefaultTrackSelector$Parameters.access$000(defaultTrackSelector$Parameters));
        this.rendererDisabledFlags = DefaultTrackSelector$Parameters.access$100(defaultTrackSelector$Parameters).clone();
        this.preferredAudioLanguage = defaultTrackSelector$Parameters.preferredAudioLanguage;
        this.preferredTextLanguage = defaultTrackSelector$Parameters.preferredTextLanguage;
        this.selectUndeterminedTextLanguage = defaultTrackSelector$Parameters.selectUndeterminedTextLanguage;
        this.disabledTextTrackSelectionFlags = defaultTrackSelector$Parameters.disabledTextTrackSelectionFlags;
        this.forceLowestBitrate = defaultTrackSelector$Parameters.forceLowestBitrate;
        this.allowMixedMimeAdaptiveness = defaultTrackSelector$Parameters.allowMixedMimeAdaptiveness;
        this.allowNonSeamlessAdaptiveness = defaultTrackSelector$Parameters.allowNonSeamlessAdaptiveness;
        this.maxVideoWidth = defaultTrackSelector$Parameters.maxVideoWidth;
        this.maxVideoHeight = defaultTrackSelector$Parameters.maxVideoHeight;
        this.maxVideoBitrate = defaultTrackSelector$Parameters.maxVideoBitrate;
        this.exceedVideoConstraintsIfNecessary = defaultTrackSelector$Parameters.exceedVideoConstraintsIfNecessary;
        this.exceedRendererCapabilitiesIfNecessary = defaultTrackSelector$Parameters.exceedRendererCapabilitiesIfNecessary;
        this.viewportWidth = defaultTrackSelector$Parameters.viewportWidth;
        this.viewportHeight = defaultTrackSelector$Parameters.viewportHeight;
        this.viewportOrientationMayChange = defaultTrackSelector$Parameters.viewportOrientationMayChange;
        this.tunnelingAudioSessionId = defaultTrackSelector$Parameters.tunnelingAudioSessionId;
    }

    private static SparseArray<Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride>> cloneSelectionOverrides(SparseArray<Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride>> sparseArray) {
        SparseArray<Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride>> sparseArray2 = new SparseArray<>();
        for (int i = 0; i < sparseArray.size(); i++) {
            sparseArray2.put(sparseArray.keyAt(i), new HashMap(sparseArray.valueAt(i)));
        }
        return sparseArray2;
    }

    public DefaultTrackSelector$Parameters build() {
        return new DefaultTrackSelector$Parameters(this.selectionOverrides, this.rendererDisabledFlags, this.preferredAudioLanguage, this.preferredTextLanguage, this.selectUndeterminedTextLanguage, this.disabledTextTrackSelectionFlags, this.forceLowestBitrate, this.allowMixedMimeAdaptiveness, this.allowNonSeamlessAdaptiveness, this.maxVideoWidth, this.maxVideoHeight, this.maxVideoBitrate, this.exceedVideoConstraintsIfNecessary, this.exceedRendererCapabilitiesIfNecessary, this.viewportWidth, this.viewportHeight, this.viewportOrientationMayChange, this.tunnelingAudioSessionId);
    }

    public final DefaultTrackSelector$ParametersBuilder clearSelectionOverride(int i, TrackGroupArray trackGroupArray) {
        Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride> map = this.selectionOverrides.get(i);
        if (map != null && map.containsKey(trackGroupArray)) {
            map.remove(trackGroupArray);
            if (map.isEmpty()) {
                this.selectionOverrides.remove(i);
            }
        }
        return this;
    }

    public final DefaultTrackSelector$ParametersBuilder clearSelectionOverrides() {
        if (this.selectionOverrides.size() == 0) {
            return this;
        }
        this.selectionOverrides.clear();
        return this;
    }

    public final DefaultTrackSelector$ParametersBuilder clearSelectionOverrides(int i) {
        Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride> map = this.selectionOverrides.get(i);
        if (map != null && !map.isEmpty()) {
            this.selectionOverrides.remove(i);
        }
        return this;
    }

    public DefaultTrackSelector$ParametersBuilder clearVideoSizeConstraints() {
        return setMaxVideoSize(Integer.MAX_VALUE, Integer.MAX_VALUE);
    }

    public DefaultTrackSelector$ParametersBuilder clearViewportSizeConstraints() {
        return setViewportSize(Integer.MAX_VALUE, Integer.MAX_VALUE, true);
    }

    public DefaultTrackSelector$ParametersBuilder setAllowMixedMimeAdaptiveness(boolean z) {
        this.allowMixedMimeAdaptiveness = z;
        return this;
    }

    public DefaultTrackSelector$ParametersBuilder setAllowNonSeamlessAdaptiveness(boolean z) {
        this.allowNonSeamlessAdaptiveness = z;
        return this;
    }

    public DefaultTrackSelector$ParametersBuilder setDisabledTextTrackSelectionFlags(int i) {
        this.disabledTextTrackSelectionFlags = i;
        return this;
    }

    public DefaultTrackSelector$ParametersBuilder setExceedRendererCapabilitiesIfNecessary(boolean z) {
        this.exceedRendererCapabilitiesIfNecessary = z;
        return this;
    }

    public DefaultTrackSelector$ParametersBuilder setExceedVideoConstraintsIfNecessary(boolean z) {
        this.exceedVideoConstraintsIfNecessary = z;
        return this;
    }

    public DefaultTrackSelector$ParametersBuilder setForceLowestBitrate(boolean z) {
        this.forceLowestBitrate = z;
        return this;
    }

    public DefaultTrackSelector$ParametersBuilder setMaxVideoBitrate(int i) {
        this.maxVideoBitrate = i;
        return this;
    }

    public DefaultTrackSelector$ParametersBuilder setMaxVideoSize(int i, int i2) {
        this.maxVideoWidth = i;
        this.maxVideoHeight = i2;
        return this;
    }

    public DefaultTrackSelector$ParametersBuilder setMaxVideoSizeSd() {
        return setMaxVideoSize(1279, 719);
    }

    public DefaultTrackSelector$ParametersBuilder setPreferredAudioLanguage(String str) {
        this.preferredAudioLanguage = str;
        return this;
    }

    public DefaultTrackSelector$ParametersBuilder setPreferredTextLanguage(String str) {
        this.preferredTextLanguage = str;
        return this;
    }

    public final DefaultTrackSelector$ParametersBuilder setRendererDisabled(int i, boolean z) {
        if (this.rendererDisabledFlags.get(i) == z) {
            return this;
        }
        if (z) {
            this.rendererDisabledFlags.put(i, true);
        } else {
            this.rendererDisabledFlags.delete(i);
        }
        return this;
    }

    public DefaultTrackSelector$ParametersBuilder setSelectUndeterminedTextLanguage(boolean z) {
        this.selectUndeterminedTextLanguage = z;
        return this;
    }

    public final DefaultTrackSelector$ParametersBuilder setSelectionOverride(int i, TrackGroupArray trackGroupArray, DefaultTrackSelector$SelectionOverride defaultTrackSelector$SelectionOverride) {
        Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride> map = this.selectionOverrides.get(i);
        HashMap hashMap = map;
        if (map == null) {
            hashMap = new HashMap();
            this.selectionOverrides.put(i, hashMap);
        }
        if (!hashMap.containsKey(trackGroupArray) || !Util.areEqual(hashMap.get(trackGroupArray), defaultTrackSelector$SelectionOverride)) {
            hashMap.put(trackGroupArray, defaultTrackSelector$SelectionOverride);
            return this;
        }
        return this;
    }

    public DefaultTrackSelector$ParametersBuilder setTunnelingAudioSessionId(int i) {
        if (this.tunnelingAudioSessionId != i) {
            this.tunnelingAudioSessionId = i;
        }
        return this;
    }

    public DefaultTrackSelector$ParametersBuilder setViewportSize(int i, int i2, boolean z) {
        this.viewportWidth = i;
        this.viewportHeight = i2;
        this.viewportOrientationMayChange = z;
        return this;
    }

    public DefaultTrackSelector$ParametersBuilder setViewportSizeToPhysicalDisplaySize(Context context, boolean z) {
        Point physicalDisplaySize = Util.getPhysicalDisplaySize(context);
        return setViewportSize(physicalDisplaySize.x, physicalDisplaySize.y, z);
    }
}
