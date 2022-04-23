package com.google.api.services.youtube.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoLiveStreamingDetails.class */
public final class VideoLiveStreamingDetails extends GenericJson {
    @q
    private String activeLiveChatId;
    @q
    private l actualEndTime;
    @q
    private l actualStartTime;
    @q
    @JsonString
    private BigInteger concurrentViewers;
    @q
    private l scheduledEndTime;
    @q
    private l scheduledStartTime;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final VideoLiveStreamingDetails clone() {
        return (VideoLiveStreamingDetails) super.clone();
    }

    public final String getActiveLiveChatId() {
        return this.activeLiveChatId;
    }

    public final l getActualEndTime() {
        return this.actualEndTime;
    }

    public final l getActualStartTime() {
        return this.actualStartTime;
    }

    public final BigInteger getConcurrentViewers() {
        return this.concurrentViewers;
    }

    public final l getScheduledEndTime() {
        return this.scheduledEndTime;
    }

    public final l getScheduledStartTime() {
        return this.scheduledStartTime;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final VideoLiveStreamingDetails set(String str, Object obj) {
        return (VideoLiveStreamingDetails) super.set(str, obj);
    }

    public final VideoLiveStreamingDetails setActiveLiveChatId(String str) {
        this.activeLiveChatId = str;
        return this;
    }

    public final VideoLiveStreamingDetails setActualEndTime(l lVar) {
        this.actualEndTime = lVar;
        return this;
    }

    public final VideoLiveStreamingDetails setActualStartTime(l lVar) {
        this.actualStartTime = lVar;
        return this;
    }

    public final VideoLiveStreamingDetails setConcurrentViewers(BigInteger bigInteger) {
        this.concurrentViewers = bigInteger;
        return this;
    }

    public final VideoLiveStreamingDetails setScheduledEndTime(l lVar) {
        this.scheduledEndTime = lVar;
        return this;
    }

    public final VideoLiveStreamingDetails setScheduledStartTime(l lVar) {
        this.scheduledStartTime = lVar;
        return this;
    }
}
