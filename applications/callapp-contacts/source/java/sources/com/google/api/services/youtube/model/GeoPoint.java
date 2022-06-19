package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/GeoPoint.class */
public final class GeoPoint extends GenericJson {
    @AbstractC15247q
    private Double altitude;
    @AbstractC15247q
    private Double latitude;
    @AbstractC15247q
    private Double longitude;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final GeoPoint clone() {
        return (GeoPoint) super.clone();
    }

    public final Double getAltitude() {
        return this.altitude;
    }

    public final Double getLatitude() {
        return this.latitude;
    }

    public final Double getLongitude() {
        return this.longitude;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final GeoPoint set(String str, Object obj) {
        return (GeoPoint) super.set(str, obj);
    }

    public final GeoPoint setAltitude(Double d) {
        this.altitude = d;
        return this;
    }

    public final GeoPoint setLatitude(Double d) {
        this.latitude = d;
        return this;
    }

    public final GeoPoint setLongitude(Double d) {
        this.longitude = d;
        return this;
    }
}
