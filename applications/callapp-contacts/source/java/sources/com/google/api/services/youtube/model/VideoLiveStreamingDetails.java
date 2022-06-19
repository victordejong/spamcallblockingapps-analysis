package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15237l;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoLiveStreamingDetails.class */
public final class VideoLiveStreamingDetails extends GenericJson {
    @AbstractC15247q
    private String activeLiveChatId;
    @AbstractC15247q
    private C15237l actualEndTime;
    @AbstractC15247q
    private C15237l actualStartTime;
    @AbstractC15247q
    @JsonString
    private BigInteger concurrentViewers;
    @AbstractC15247q
    private C15237l scheduledEndTime;
    @AbstractC15247q
    private C15237l scheduledStartTime;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final VideoLiveStreamingDetails clone() {
        return (VideoLiveStreamingDetails) super.clone();
    }

    public final String getActiveLiveChatId() {
        return this.activeLiveChatId;
    }

    public final C15237l getActualEndTime() {
        return this.actualEndTime;
    }

    public final C15237l getActualStartTime() {
        return this.actualStartTime;
    }

    public final BigInteger getConcurrentViewers() {
        return this.concurrentViewers;
    }

    public final C15237l getScheduledEndTime() {
        return this.scheduledEndTime;
    }

    public final C15237l getScheduledStartTime() {
        return this.scheduledStartTime;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final VideoLiveStreamingDetails set(String str, Object obj) {
        return (VideoLiveStreamingDetails) super.set(str, obj);
    }

    public final VideoLiveStreamingDetails setActiveLiveChatId(String str) {
        this.activeLiveChatId = str;
        return this;
    }

    public final VideoLiveStreamingDetails setActualEndTime(C15237l c15237l) {
        this.actualEndTime = c15237l;
        return this;
    }

    public final VideoLiveStreamingDetails setActualStartTime(C15237l c15237l) {
        this.actualStartTime = c15237l;
        return this;
    }

    public final VideoLiveStreamingDetails setConcurrentViewers(BigInteger bigInteger) {
        this.concurrentViewers = bigInteger;
        return this;
    }

    public final VideoLiveStreamingDetails setScheduledEndTime(C15237l c15237l) {
        this.scheduledEndTime = c15237l;
        return this;
    }

    public final VideoLiveStreamingDetails setScheduledStartTime(C15237l c15237l) {
        this.scheduledStartTime = c15237l;
        return this;
    }
}
