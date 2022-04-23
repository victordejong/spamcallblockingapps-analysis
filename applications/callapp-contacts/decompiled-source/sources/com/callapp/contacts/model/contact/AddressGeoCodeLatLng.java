package com.callapp.contacts.model.contact;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/AddressGeoCodeLatLng.class */
public class AddressGeoCodeLatLng extends CacheableData {
    private static final long serialVersionUID = -5843269960951220345L;
    public double lat;
    public double lng;
    public float zoom;

    public AddressGeoCodeLatLng(double d2, double d3, float f) {
        this.lat = d2;
        this.lng = d3;
        this.zoom = f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AddressGeoCodeLatLng addressGeoCodeLatLng = (AddressGeoCodeLatLng) obj;
        return Double.compare(addressGeoCodeLatLng.lat, this.lat) == 0 && Double.compare(addressGeoCodeLatLng.lng, this.lng) == 0 && Float.compare(addressGeoCodeLatLng.zoom, this.zoom) == 0;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Double.valueOf(this.lat), Double.valueOf(this.lng), Float.valueOf(this.zoom)});
    }
}
