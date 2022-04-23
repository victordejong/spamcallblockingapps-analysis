package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.b;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/Place.class */
public class Place {
    @b(a = "attributes")
    public final Map<String, String> attributes;
    @b(a = "bounding_box")
    public final BoundingBox boundingBox;
    @b(a = "country")
    public final String country;
    @b(a = "country_code")
    public final String countryCode;
    @b(a = "full_name")
    public final String fullName;
    @b(a = "id")
    public final String id;
    @b(a = "name")
    public final String name;
    @b(a = "place_type")
    public final String placeType;
    @b(a = "url")
    public final String url;

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/Place$BoundingBox.class */
    public static class BoundingBox {
        @b(a = "coordinates")
        public final List<List<List<Double>>> coordinates;
        @b(a = "type")
        public final String type;

        private BoundingBox() {
            this(null, null);
        }

        public BoundingBox(List<List<List<Double>>> list, String str) {
            this.coordinates = ModelUtils.getSafeList(list);
            this.type = str;
        }
    }

    public Place(Map<String, String> map, BoundingBox boundingBox, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.attributes = ModelUtils.getSafeMap(map);
        this.boundingBox = boundingBox;
        this.country = str;
        this.countryCode = str2;
        this.fullName = str3;
        this.id = str4;
        this.name = str5;
        this.placeType = str6;
        this.url = str7;
    }
}
