package com.callapp.common.model.json;

import com.fasterxml.jackson.annotation.JsonProperty;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONGooglePlaceId.class */
public class JSONGooglePlaceId extends CallAppJSONObject {
    private static final long serialVersionUID = 6498681163722887855L;
    @JsonProperty("place_id")
    private String placeId;

    public String getPlaceId() {
        return this.placeId;
    }

    public void setPlaceId(String str) {
        this.placeId = str;
    }
}
