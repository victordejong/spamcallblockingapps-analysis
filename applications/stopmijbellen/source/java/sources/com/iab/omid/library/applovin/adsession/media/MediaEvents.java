package com.iab.omid.library.applovin.adsession.media;

import com.iab.omid.library.applovin.adsession.AdSession;
import com.iab.omid.library.applovin.adsession.C1929a;
import com.iab.omid.library.applovin.p060b.C1938f;
import com.iab.omid.library.applovin.p062d.C1946b;
import com.iab.omid.library.applovin.p062d.C1950e;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/adsession/media/MediaEvents.class */
public final class MediaEvents {
    private final C1929a adSession;

    private MediaEvents(C1929a c1929a) {
        this.adSession = c1929a;
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
        C1929a c1929a = (C1929a) adSession;
        C1950e.m4083a(adSession, "AdSession is null");
        C1950e.m4075g(c1929a);
        C1950e.m4084a(c1929a);
        C1950e.m4080b(c1929a);
        C1950e.m4077e(c1929a);
        MediaEvents mediaEvents = new MediaEvents(c1929a);
        c1929a.getAdSessionStatePublisher().m4062a(mediaEvents);
        return mediaEvents;
    }

    public void adUserInteraction(InteractionType interactionType) {
        C1950e.m4083a(interactionType, "InteractionType is null");
        C1950e.m4079c(this.adSession);
        JSONObject jSONObject = new JSONObject();
        C1946b.m4099a(jSONObject, "interactionType", interactionType);
        this.adSession.getAdSessionStatePublisher().m4059a("adUserInteraction", jSONObject);
    }

    public void bufferFinish() {
        C1950e.m4079c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m4061a("bufferFinish");
    }

    public void bufferStart() {
        C1950e.m4079c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m4061a("bufferStart");
    }

    public void complete() {
        C1950e.m4079c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m4061a("complete");
    }

    public void firstQuartile() {
        C1950e.m4079c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m4061a("firstQuartile");
    }

    public void midpoint() {
        C1950e.m4079c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m4061a("midpoint");
    }

    public void pause() {
        C1950e.m4079c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m4061a("pause");
    }

    public void playerStateChange(PlayerState playerState) {
        C1950e.m4083a(playerState, "PlayerState is null");
        C1950e.m4079c(this.adSession);
        JSONObject jSONObject = new JSONObject();
        C1946b.m4099a(jSONObject, "state", playerState);
        this.adSession.getAdSessionStatePublisher().m4059a("playerStateChange", jSONObject);
    }

    public void resume() {
        C1950e.m4079c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m4061a("resume");
    }

    public void skipped() {
        C1950e.m4079c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m4061a("skipped");
    }

    public void start(float f, float f2) {
        confirmValidDuration(f);
        confirmValidVolume(f2);
        C1950e.m4079c(this.adSession);
        JSONObject jSONObject = new JSONObject();
        C1946b.m4099a(jSONObject, "duration", Float.valueOf(f));
        C1946b.m4099a(jSONObject, "mediaPlayerVolume", Float.valueOf(f2));
        C1946b.m4099a(jSONObject, "deviceVolume", Float.valueOf(C1938f.m4132a().m4126d()));
        this.adSession.getAdSessionStatePublisher().m4059a("start", jSONObject);
    }

    public void thirdQuartile() {
        C1950e.m4079c(this.adSession);
        this.adSession.getAdSessionStatePublisher().m4061a("thirdQuartile");
    }

    public void volumeChange(float f) {
        confirmValidVolume(f);
        C1950e.m4079c(this.adSession);
        JSONObject jSONObject = new JSONObject();
        C1946b.m4099a(jSONObject, "mediaPlayerVolume", Float.valueOf(f));
        C1946b.m4099a(jSONObject, "deviceVolume", Float.valueOf(C1938f.m4132a().m4126d()));
        this.adSession.getAdSessionStatePublisher().m4059a("volumeChange", jSONObject);
    }
}
