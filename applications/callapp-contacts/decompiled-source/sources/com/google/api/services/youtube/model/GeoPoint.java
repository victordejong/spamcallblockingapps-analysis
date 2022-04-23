package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/GeoPoint.class */
public final class GeoPoint extends GenericJson {
    @q
    private Double altitude;
    @q
    private Double latitude;
    @q
    private Double longitude;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final GeoPoint set(String str, Object obj) {
        return (GeoPoint) super.set(str, obj);
    }

    public final GeoPoint setAltitude(Double d2) {
        this.altitude = d2;
        return this;
    }

    public final GeoPoint setLatitude(Double d2) {
        this.latitude = d2;
        return this;
    }

    public final GeoPoint setLongitude(Double d2) {
        this.longitude = d2;
        return this;
    }
}
