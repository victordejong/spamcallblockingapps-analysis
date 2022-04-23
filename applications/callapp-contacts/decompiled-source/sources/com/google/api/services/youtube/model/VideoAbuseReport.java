package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoAbuseReport.class */
public final class VideoAbuseReport extends GenericJson {
    @q
    private String comments;
    @q
    private String language;
    @q
    private String reasonId;
    @q
    private String secondaryReasonId;
    @q
    private String videoId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final VideoAbuseReport clone() {
        return (VideoAbuseReport) super.clone();
    }

    public final String getComments() {
        return this.comments;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final String getReasonId() {
        return this.reasonId;
    }

    public final String getSecondaryReasonId() {
        return this.secondaryReasonId;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final VideoAbuseReport set(String str, Object obj) {
        return (VideoAbuseReport) super.set(str, obj);
    }

    public final VideoAbuseReport setComments(String str) {
        this.comments = str;
        return this;
    }

    public final VideoAbuseReport setLanguage(String str) {
        this.language = str;
        return this;
    }

    public final VideoAbuseReport setReasonId(String str) {
        this.reasonId = str;
        return this;
    }

    public final VideoAbuseReport setSecondaryReasonId(String str) {
        this.secondaryReasonId = str;
        return this;
    }

    public final VideoAbuseReport setVideoId(String str) {
        this.videoId = str;
        return this;
    }
}
