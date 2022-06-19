package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.Format;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore.class */
public final class DefaultTrackSelector$AudioTrackScore implements Comparable<DefaultTrackSelector$AudioTrackScore> {
    private final int bitrate;
    private final int channelCount;
    private final int defaultSelectionFlagScore;
    private final int matchLanguageScore;
    private final DefaultTrackSelector$Parameters parameters;
    private final int sampleRate;
    private final int withinRendererCapabilitiesScore;

    public DefaultTrackSelector$AudioTrackScore(Format format, DefaultTrackSelector$Parameters defaultTrackSelector$Parameters, int i) {
        this.parameters = defaultTrackSelector$Parameters;
        this.withinRendererCapabilitiesScore = DefaultTrackSelector.isSupported(i, false) ? 1 : 0;
        this.matchLanguageScore = DefaultTrackSelector.formatHasLanguage(format, defaultTrackSelector$Parameters.preferredAudioLanguage) ? 1 : 0;
        this.defaultSelectionFlagScore = (format.selectionFlags & 1) != 0 ? 1 : 0;
        this.channelCount = format.channelCount;
        this.sampleRate = format.sampleRate;
        this.bitrate = format.bitrate;
    }

    public int compareTo(DefaultTrackSelector$AudioTrackScore defaultTrackSelector$AudioTrackScore) {
        int access$300;
        int i = this.withinRendererCapabilitiesScore;
        int i2 = defaultTrackSelector$AudioTrackScore.withinRendererCapabilitiesScore;
        if (i != i2) {
            return DefaultTrackSelector.access$300(i, i2);
        }
        int i3 = this.matchLanguageScore;
        int i4 = defaultTrackSelector$AudioTrackScore.matchLanguageScore;
        if (i3 != i4) {
            return DefaultTrackSelector.access$300(i3, i4);
        }
        int i5 = this.defaultSelectionFlagScore;
        int i6 = defaultTrackSelector$AudioTrackScore.defaultSelectionFlagScore;
        if (i5 != i6) {
            return DefaultTrackSelector.access$300(i5, i6);
        }
        if (this.parameters.forceLowestBitrate) {
            return DefaultTrackSelector.access$300(defaultTrackSelector$AudioTrackScore.bitrate, this.bitrate);
        }
        int i7 = 1;
        if (i != 1) {
            i7 = -1;
        }
        int i8 = this.channelCount;
        int i9 = defaultTrackSelector$AudioTrackScore.channelCount;
        if (i8 == i9) {
            i8 = this.sampleRate;
            i9 = defaultTrackSelector$AudioTrackScore.sampleRate;
            if (i8 == i9) {
                access$300 = DefaultTrackSelector.access$300(this.bitrate, defaultTrackSelector$AudioTrackScore.bitrate);
                return i7 * access$300;
            }
        }
        access$300 = DefaultTrackSelector.access$300(i8, i9);
        return i7 * access$300;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || DefaultTrackSelector$AudioTrackScore.class != obj.getClass()) {
            return false;
        }
        DefaultTrackSelector$AudioTrackScore defaultTrackSelector$AudioTrackScore = (DefaultTrackSelector$AudioTrackScore) obj;
        if (this.withinRendererCapabilitiesScore != defaultTrackSelector$AudioTrackScore.withinRendererCapabilitiesScore || this.matchLanguageScore != defaultTrackSelector$AudioTrackScore.matchLanguageScore || this.defaultSelectionFlagScore != defaultTrackSelector$AudioTrackScore.defaultSelectionFlagScore || this.channelCount != defaultTrackSelector$AudioTrackScore.channelCount || this.sampleRate != defaultTrackSelector$AudioTrackScore.sampleRate || this.bitrate != defaultTrackSelector$AudioTrackScore.bitrate) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((((((((this.withinRendererCapabilitiesScore * 31) + this.matchLanguageScore) * 31) + this.defaultSelectionFlagScore) * 31) + this.channelCount) * 31) + this.sampleRate) * 31) + this.bitrate;
    }
}
