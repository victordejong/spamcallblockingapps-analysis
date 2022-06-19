package com.google.android.exoplayer2.trackselection;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple.class */
public final class DefaultTrackSelector$AudioConfigurationTuple {
    public final int channelCount;
    public final String mimeType;
    public final int sampleRate;

    public DefaultTrackSelector$AudioConfigurationTuple(int i, int i2, String str) {
        this.channelCount = i;
        this.sampleRate = i2;
        this.mimeType = str;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || DefaultTrackSelector$AudioConfigurationTuple.class != obj.getClass()) {
            return false;
        }
        DefaultTrackSelector$AudioConfigurationTuple defaultTrackSelector$AudioConfigurationTuple = (DefaultTrackSelector$AudioConfigurationTuple) obj;
        if (this.channelCount != defaultTrackSelector$AudioConfigurationTuple.channelCount || this.sampleRate != defaultTrackSelector$AudioConfigurationTuple.sampleRate || !TextUtils.equals(this.mimeType, defaultTrackSelector$AudioConfigurationTuple.mimeType)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.channelCount;
        int i2 = this.sampleRate;
        String str = this.mimeType;
        return (((i * 31) + i2) * 31) + (str != null ? str.hashCode() : 0);
    }
}
