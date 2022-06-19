package com.iab.omid.library.mopub.adsession.media;

import com.iab.omid.library.mopub.adsession.AdSession;
import com.iab.omid.library.mopub.adsession.a;
import com.iab.omid.library.mopub.b.f;
import com.iab.omid.library.mopub.p127d.C2614b;
import com.iab.omid.library.mopub.p127d.C2618e;
import com.mopub.mobileads.VastIconXmlManager;
import com.razorpay.AnalyticsConstants;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/adsession/media/MediaEvents.class */
public final class MediaEvents {
    private final a adSession;

    private MediaEvents(a aVar) {
        this.adSession = aVar;
    }

    private void confirmValidDuration(float f) {
        if (f > 0.0f) {
            return;
        }
        throw new IllegalArgumentException("Invalid Media duration");
    }

    private void confirmValidVolume(float f) {
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("Invalid Media volume");
        }
    }

    public static MediaEvents createMediaEvents(AdSession adSession) {
        a aVar = (a) adSession;
        C2618e.m36398a(adSession, "AdSession is null");
        C2618e.m36390g(aVar);
        C2618e.m36399a(aVar);
        C2618e.m36395b(aVar);
        C2618e.m36392e(aVar);
        MediaEvents mediaEvents = new MediaEvents(aVar);
        aVar.getAdSessionStatePublisher().m36375a(mediaEvents);
        return mediaEvents;
    }

    public void adUserInteraction(InteractionType interactionType) {
        C2618e.m36398a(interactionType, "InteractionType is null");
        C2618e.m36394c(this.adSession);
        JSONObject jSONObject = new JSONObject();
        C2614b.m36413a(jSONObject, "interactionType", interactionType);
        this.adSession.getAdSessionStatePublisher().m36372a("adUserInteraction", jSONObject);
    }

    public void bufferFinish() {
        C2618e.m36394c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m36374a("bufferFinish");
    }

    public void bufferStart() {
        C2618e.m36394c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m36374a("bufferStart");
    }

    public void complete() {
        C2618e.m36394c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m36374a(AnalyticsConstants.COMPLETE);
    }

    public void firstQuartile() {
        C2618e.m36394c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m36374a("firstQuartile");
    }

    public void midpoint() {
        C2618e.m36394c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m36374a("midpoint");
    }

    public void pause() {
        C2618e.m36394c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m36374a("pause");
    }

    public void playerStateChange(PlayerState playerState) {
        C2618e.m36398a(playerState, "PlayerState is null");
        C2618e.m36394c(this.adSession);
        JSONObject jSONObject = new JSONObject();
        C2614b.m36413a(jSONObject, "state", playerState);
        this.adSession.getAdSessionStatePublisher().m36372a("playerStateChange", jSONObject);
    }

    public void resume() {
        C2618e.m36394c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m36374a("resume");
    }

    public void skipped() {
        C2618e.m36394c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m36374a("skipped");
    }

    public void start(float f, float f2) {
        confirmValidDuration(f);
        confirmValidVolume(f2);
        C2618e.m36394c(this.adSession);
        JSONObject jSONObject = new JSONObject();
        C2614b.m36413a(jSONObject, VastIconXmlManager.DURATION, Float.valueOf(f));
        C2614b.m36413a(jSONObject, "mediaPlayerVolume", Float.valueOf(f2));
        C2614b.m36413a(jSONObject, "deviceVolume", Float.valueOf(f.a().d()));
        this.adSession.getAdSessionStatePublisher().m36372a(AnalyticsConstants.START, jSONObject);
    }

    public void thirdQuartile() {
        C2618e.m36394c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m36374a("thirdQuartile");
    }

    public void volumeChange(float f) {
        confirmValidVolume(f);
        C2618e.m36394c(this.adSession);
        JSONObject jSONObject = new JSONObject();
        C2614b.m36413a(jSONObject, "mediaPlayerVolume", Float.valueOf(f));
        C2614b.m36413a(jSONObject, "deviceVolume", Float.valueOf(f.a().d()));
        this.adSession.getAdSessionStatePublisher().m36372a("volumeChange", jSONObject);
    }
}
