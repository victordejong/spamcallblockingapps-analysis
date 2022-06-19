package com.callapp.common.model.json;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONGooglePlacesIDsCandidates.class */
public class JSONGooglePlacesIDsCandidates extends CallAppJSONObject {
    private static final long serialVersionUID = 8939237932254214581L;
    private List<JSONGooglePlaceId> candidates;

    public List<JSONGooglePlaceId> getCandidates() {
        return this.candidates;
    }

    public void setCandidates(List<JSONGooglePlaceId> list) {
        this.candidates = list;
    }
}
