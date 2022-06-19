package com.google.android.exoplayer2.source.dash;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo.class */
public final class DashMediaPeriod$TrackGroupInfo {
    private static final int CATEGORY_EMBEDDED = 1;
    private static final int CATEGORY_MANIFEST_EVENTS = 2;
    private static final int CATEGORY_PRIMARY = 0;
    public final int[] adaptationSetIndices;
    public final int embeddedCea608TrackGroupIndex;
    public final int embeddedEventMessageTrackGroupIndex;
    public final int eventStreamGroupIndex;
    public final int primaryTrackGroupIndex;
    public final int trackGroupCategory;
    public final int trackType;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo$TrackGroupCategory.class */
    public @interface TrackGroupCategory {
    }

    private DashMediaPeriod$TrackGroupInfo(int i, int i2, int[] iArr, int i3, int i4, int i5, int i6) {
        this.trackType = i;
        this.adaptationSetIndices = iArr;
        this.trackGroupCategory = i2;
        this.primaryTrackGroupIndex = i3;
        this.embeddedEventMessageTrackGroupIndex = i4;
        this.embeddedCea608TrackGroupIndex = i5;
        this.eventStreamGroupIndex = i6;
    }

    public static DashMediaPeriod$TrackGroupInfo embeddedCea608Track(int[] iArr, int i) {
        return new DashMediaPeriod$TrackGroupInfo(3, 1, iArr, i, -1, -1, -1);
    }

    public static DashMediaPeriod$TrackGroupInfo embeddedEmsgTrack(int[] iArr, int i) {
        return new DashMediaPeriod$TrackGroupInfo(4, 1, iArr, i, -1, -1, -1);
    }

    public static DashMediaPeriod$TrackGroupInfo mpdEventTrack(int i) {
        return new DashMediaPeriod$TrackGroupInfo(4, 2, null, -1, -1, -1, i);
    }

    public static DashMediaPeriod$TrackGroupInfo primaryTrack(int i, int[] iArr, int i2, int i3, int i4) {
        return new DashMediaPeriod$TrackGroupInfo(i, 0, iArr, i2, i3, i4, -1);
    }
}
