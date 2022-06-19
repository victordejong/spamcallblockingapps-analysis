package com.millennialmedia.internal.utils;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/VideoTrackingEvent.class */
public class VideoTrackingEvent extends TrackingEvent {
    private static final String TAG = "VideoTrackingEvent";
    public int position;

    public VideoTrackingEvent(TrackingEvent trackingEvent, int i) {
        this(trackingEvent.name, trackingEvent.url, i);
    }

    public VideoTrackingEvent(String str, String str2, int i) {
        super(str, str2);
        this.position = i;
    }

    @Override // com.millennialmedia.internal.utils.TrackingEvent
    public String toString() {
        return super.toString() + "(position:" + this.position + ")";
    }
}
