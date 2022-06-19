package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
import java.math.BigInteger;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoFileDetails.class */
public final class VideoFileDetails extends GenericJson {
    @AbstractC15247q
    private List<VideoFileDetailsAudioStream> audioStreams;
    @AbstractC15247q
    @JsonString
    private BigInteger bitrateBps;
    @AbstractC15247q
    private String container;
    @AbstractC15247q
    private String creationTime;
    @AbstractC15247q
    @JsonString
    private BigInteger durationMs;
    @AbstractC15247q
    private String fileName;
    @AbstractC15247q
    @JsonString
    private BigInteger fileSize;
    @AbstractC15247q
    private String fileType;
    @AbstractC15247q
    private List<VideoFileDetailsVideoStream> videoStreams;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final VideoFileDetails clone() {
        return (VideoFileDetails) super.clone();
    }

    public final List<VideoFileDetailsAudioStream> getAudioStreams() {
        return this.audioStreams;
    }

    public final BigInteger getBitrateBps() {
        return this.bitrateBps;
    }

    public final String getContainer() {
        return this.container;
    }

    public final String getCreationTime() {
        return this.creationTime;
    }

    public final BigInteger getDurationMs() {
        return this.durationMs;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final BigInteger getFileSize() {
        return this.fileSize;
    }

    public final String getFileType() {
        return this.fileType;
    }

    public final List<VideoFileDetailsVideoStream> getVideoStreams() {
        return this.videoStreams;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final VideoFileDetails set(String str, Object obj) {
        return (VideoFileDetails) super.set(str, obj);
    }

    public final VideoFileDetails setAudioStreams(List<VideoFileDetailsAudioStream> list) {
        this.audioStreams = list;
        return this;
    }

    public final VideoFileDetails setBitrateBps(BigInteger bigInteger) {
        this.bitrateBps = bigInteger;
        return this;
    }

    public final VideoFileDetails setContainer(String str) {
        this.container = str;
        return this;
    }

    public final VideoFileDetails setCreationTime(String str) {
        this.creationTime = str;
        return this;
    }

    public final VideoFileDetails setDurationMs(BigInteger bigInteger) {
        this.durationMs = bigInteger;
        return this;
    }

    public final VideoFileDetails setFileName(String str) {
        this.fileName = str;
        return this;
    }

    public final VideoFileDetails setFileSize(BigInteger bigInteger) {
        this.fileSize = bigInteger;
        return this;
    }

    public final VideoFileDetails setFileType(String str) {
        this.fileType = str;
        return this;
    }

    public final VideoFileDetails setVideoStreams(List<VideoFileDetailsVideoStream> list) {
        this.videoStreams = list;
        return this;
    }
}
