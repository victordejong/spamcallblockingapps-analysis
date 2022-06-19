package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.AbstractC15952b;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/Place.class */
public class Place {
    @AbstractC15952b(m7988a = "attributes")
    public final Map<String, String> attributes;
    @AbstractC15952b(m7988a = "bounding_box")
    public final BoundingBox boundingBox;
    @AbstractC15952b(m7988a = "country")
    public final String country;
    @AbstractC15952b(m7988a = "country_code")
    public final String countryCode;
    @AbstractC15952b(m7988a = "full_name")
    public final String fullName;
    @AbstractC15952b(m7988a = "id")

    /* renamed from: id */
    public final String f61043id;
    @AbstractC15952b(m7988a = "name")
    public final String name;
    @AbstractC15952b(m7988a = "place_type")
    public final String placeType;
    @AbstractC15952b(m7988a = "url")
    public final String url;

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/Place$BoundingBox.class */
    public static class BoundingBox {
        @AbstractC15952b(m7988a = "coordinates")
        public final List<List<List<Double>>> coordinates;
        @AbstractC15952b(m7988a = "type")
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
        this.f61043id = str4;
        this.name = str5;
        this.placeType = str6;
        this.url = str7;
    }
}
