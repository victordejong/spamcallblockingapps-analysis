package com.callapp.contacts.model.contact;

import com.callapp.framework.util.StringUtils;
import com.google.common.base.C15386j;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/GooglePlacesData.class */
public class GooglePlacesData extends ExtendedPlaceData {
    private static final String GOOGLE_PLACES_WEB_URL_BY_PLACE_ID_PREFIX = "https://www.google.com/maps/place/?q=place_id:";
    private static final long serialVersionUID = -11254193597692496L;
    private String googlePlaceId;
    private String seeInsidePanoId;

    @Override // com.callapp.contacts.model.contact.ExtendedPlaceData, com.callapp.contacts.model.contact.PlaceData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        GooglePlacesData googlePlacesData = (GooglePlacesData) obj;
        return C15386j.m8951a(this.seeInsidePanoId, googlePlacesData.seeInsidePanoId) && C15386j.m8951a(this.googlePlaceId, googlePlacesData.googlePlaceId);
    }

    public String getGooglePlaceId() {
        return this.googlePlaceId;
    }

    public String getSeeInsidePanoId() {
        return this.seeInsidePanoId;
    }

    public String getUrlOrBuildUrl() {
        String url = getUrl();
        String str = url;
        if (StringUtils.m26059a((CharSequence) url)) {
            str = url;
            if (StringUtils.m26045b((CharSequence) getGooglePlaceId())) {
                str = GOOGLE_PLACES_WEB_URL_BY_PLACE_ID_PREFIX + getGooglePlaceId();
            }
        }
        return str;
    }

    @Override // com.callapp.contacts.model.contact.ExtendedPlaceData, com.callapp.contacts.model.contact.PlaceData
    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(super.hashCode()), this.seeInsidePanoId, this.googlePlaceId});
    }

    public void setGooglePlaceId(String str) {
        this.googlePlaceId = str;
    }

    public void setSeeInsidePanoId(String str) {
        this.seeInsidePanoId = str;
    }
}
