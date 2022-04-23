package com.google.api.services.youtube.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoRecordingDetails.class */
public final class VideoRecordingDetails extends GenericJson {
    @q
    private GeoPoint location;
    @q
    private String locationDescription;
    @q
    private l recordingDate;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final VideoRecordingDetails clone() {
        return (VideoRecordingDetails) super.clone();
    }

    public final GeoPoint getLocation() {
        return this.location;
    }

    public final String getLocationDescription() {
        return this.locationDescription;
    }

    public final l getRecordingDate() {
        return this.recordingDate;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final VideoRecordingDetails set(String str, Object obj) {
        return (VideoRecordingDetails) super.set(str, obj);
    }

    public final VideoRecordingDetails setLocation(GeoPoint geoPoint) {
        this.location = geoPoint;
        return this;
    }

    public final VideoRecordingDetails setLocationDescription(String str) {
        this.locationDescription = str;
        return this;
    }

    public final VideoRecordingDetails setRecordingDate(l lVar) {
        this.recordingDate = lVar;
        return this;
    }
}
