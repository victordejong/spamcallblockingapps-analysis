package com.verizon.ads.vastcontroller;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VideoTrackingEvent.class */
public class VideoTrackingEvent extends TrackingEvent {

    /* renamed from: a */
    private int f61878a;

    public VideoTrackingEvent(String str, String str2, int i) {
        super(str, str2);
        this.f61878a = i;
    }

    @Override // com.verizon.ads.vastcontroller.TrackingEvent
    public String toString() {
        return super.toString() + "(position:" + this.f61878a + ")";
    }
}
