package com.iab.omid.library.pubmatic.adsession.media;

import com.iab.omid.library.pubmatic.adsession.AdSession;
import com.iab.omid.library.pubmatic.adsession.C1753a;
import com.iab.omid.library.pubmatic.p012b.C1762f;
import com.iab.omid.library.pubmatic.p014d.C1770b;
import com.iab.omid.library.pubmatic.p014d.C1774e;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/adsession/media/MediaEvents.class */
public final class MediaEvents {
    private final C1753a adSession;

    private MediaEvents(C1753a c1753a) {
        this.adSession = c1753a;
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
        C1753a c1753a = (C1753a) adSession;
        C1774e.m1222a(adSession, "AdSession is null");
        C1774e.m1214g(c1753a);
        C1774e.m1223a(c1753a);
        C1774e.m1219b(c1753a);
        C1774e.m1216e(c1753a);
        MediaEvents mediaEvents = new MediaEvents(c1753a);
        c1753a.getAdSessionStatePublisher().m1201a(mediaEvents);
        return mediaEvents;
    }

    public void adUserInteraction(InteractionType interactionType) {
        C1774e.m1222a(interactionType, "InteractionType is null");
        C1774e.m1218c(this.adSession);
        JSONObject jSONObject = new JSONObject();
        C1770b.m1237a(jSONObject, "interactionType", interactionType);
        this.adSession.getAdSessionStatePublisher().m1198a("adUserInteraction", jSONObject);
    }

    public void bufferFinish() {
        C1774e.m1218c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m1200a("bufferFinish");
    }

    public void bufferStart() {
        C1774e.m1218c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m1200a("bufferStart");
    }

    public void complete() {
        C1774e.m1218c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m1200a("complete");
    }

    public void firstQuartile() {
        C1774e.m1218c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m1200a("firstQuartile");
    }

    public void midpoint() {
        C1774e.m1218c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m1200a("midpoint");
    }

    public void pause() {
        C1774e.m1218c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m1200a("pause");
    }

    public void playerStateChange(PlayerState playerState) {
        C1774e.m1222a(playerState, "PlayerState is null");
        C1774e.m1218c(this.adSession);
        JSONObject jSONObject = new JSONObject();
        C1770b.m1237a(jSONObject, "state", playerState);
        this.adSession.getAdSessionStatePublisher().m1198a("playerStateChange", jSONObject);
    }

    public void resume() {
        C1774e.m1218c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m1200a("resume");
    }

    public void skipped() {
        C1774e.m1218c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m1200a("skipped");
    }

    public void start(float f, float f2) {
        confirmValidDuration(f);
        confirmValidVolume(f2);
        C1774e.m1218c(this.adSession);
        JSONObject jSONObject = new JSONObject();
        C1770b.m1237a(jSONObject, "duration", Float.valueOf(f));
        C1770b.m1237a(jSONObject, "mediaPlayerVolume", Float.valueOf(f2));
        C1770b.m1237a(jSONObject, "deviceVolume", Float.valueOf(C1762f.m1268a().m1263d()));
        this.adSession.getAdSessionStatePublisher().m1198a("start", jSONObject);
    }

    public void thirdQuartile() {
        C1774e.m1218c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m1200a("thirdQuartile");
    }

    public void volumeChange(float f) {
        confirmValidVolume(f);
        C1774e.m1218c(this.adSession);
        JSONObject jSONObject = new JSONObject();
        C1770b.m1237a(jSONObject, "mediaPlayerVolume", Float.valueOf(f));
        C1770b.m1237a(jSONObject, "deviceVolume", Float.valueOf(C1762f.m1268a().m1263d()));
        this.adSession.getAdSessionStatePublisher().m1198a("volumeChange", jSONObject);
    }
}
