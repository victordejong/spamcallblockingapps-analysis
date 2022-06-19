package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15237l;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoRecordingDetails.class */
public final class VideoRecordingDetails extends GenericJson {
    @AbstractC15247q
    private GeoPoint location;
    @AbstractC15247q
    private String locationDescription;
    @AbstractC15247q
    private C15237l recordingDate;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final VideoRecordingDetails clone() {
        return (VideoRecordingDetails) super.clone();
    }

    public final GeoPoint getLocation() {
        return this.location;
    }

    public final String getLocationDescription() {
        return this.locationDescription;
    }

    public final C15237l getRecordingDate() {
        return this.recordingDate;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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

    public final VideoRecordingDetails setRecordingDate(C15237l c15237l) {
        this.recordingDate = c15237l;
        return this;
    }
}
