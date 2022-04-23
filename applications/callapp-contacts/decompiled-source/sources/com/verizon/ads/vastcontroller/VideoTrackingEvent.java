package com.verizon.ads.vastcontroller;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VideoTrackingEvent.class */
public class VideoTrackingEvent extends TrackingEvent {

    /* renamed from: a  reason: collision with root package name */
    private int f35719a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoTrackingEvent(String str, String str2, int i) {
        super(str, str2);
        this.f35719a = i;
    }

    @Override // com.verizon.ads.vastcontroller.TrackingEvent
    public String toString() {
        return super.toString() + "(position:" + this.f35719a + ")";
    }
}
