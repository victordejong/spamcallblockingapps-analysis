package com.callapp.common.model.json;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONCHLocalContentAds.class */
public class JSONCHLocalContentAds implements Serializable {
    private static final long serialVersionUID = 6962901143309235012L;
    private String background_image;
    private JSONCHLocalFoursquare foursquare;
    private List<JSONCHLocalImages> images;
    private JSONCHLocalLogo logo;
    private JSONCHLocalOpeningHours opening_hours;
    private JSONCHLocalVenue venue;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONCHLocalContentAds jSONCHLocalContentAds = (JSONCHLocalContentAds) obj;
        JSONCHLocalVenue jSONCHLocalVenue = this.venue;
        if (jSONCHLocalVenue != null) {
            if (!jSONCHLocalVenue.equals(jSONCHLocalContentAds.venue)) {
                return false;
            }
        } else if (jSONCHLocalContentAds.venue != null) {
            return false;
        }
        List<JSONCHLocalImages> list = this.images;
        if (list != null) {
            if (!list.equals(jSONCHLocalContentAds.images)) {
                return false;
            }
        } else if (jSONCHLocalContentAds.images != null) {
            return false;
        }
        JSONCHLocalFoursquare jSONCHLocalFoursquare = this.foursquare;
        if (jSONCHLocalFoursquare != null) {
            if (!jSONCHLocalFoursquare.equals(jSONCHLocalContentAds.foursquare)) {
                return false;
            }
        } else if (jSONCHLocalContentAds.foursquare != null) {
            return false;
        }
        String str = this.background_image;
        if (str != null) {
            if (!str.equals(jSONCHLocalContentAds.background_image)) {
                return false;
            }
        } else if (jSONCHLocalContentAds.background_image != null) {
            return false;
        }
        JSONCHLocalOpeningHours jSONCHLocalOpeningHours = this.opening_hours;
        if (jSONCHLocalOpeningHours != null) {
            if (!jSONCHLocalOpeningHours.equals(jSONCHLocalContentAds.opening_hours)) {
                return false;
            }
        } else if (jSONCHLocalContentAds.opening_hours != null) {
            return false;
        }
        JSONCHLocalLogo jSONCHLocalLogo = this.logo;
        JSONCHLocalLogo jSONCHLocalLogo2 = jSONCHLocalContentAds.logo;
        return jSONCHLocalLogo != null ? jSONCHLocalLogo.equals(jSONCHLocalLogo2) : jSONCHLocalLogo2 == null;
    }

    public String getBackground_image() {
        return this.background_image;
    }

    public JSONCHLocalFoursquare getFoursquare() {
        return this.foursquare;
    }

    public List<JSONCHLocalImages> getImages() {
        return this.images;
    }

    public JSONCHLocalLogo getLogo() {
        return this.logo;
    }

    public JSONCHLocalOpeningHours getOpening_hours() {
        return this.opening_hours;
    }

    public JSONCHLocalVenue getVenue() {
        return this.venue;
    }

    public int hashCode() {
        JSONCHLocalVenue jSONCHLocalVenue = this.venue;
        int i = 0;
        int hashCode = jSONCHLocalVenue != null ? jSONCHLocalVenue.hashCode() : 0;
        List<JSONCHLocalImages> list = this.images;
        int hashCode2 = list != null ? list.hashCode() : 0;
        JSONCHLocalFoursquare jSONCHLocalFoursquare = this.foursquare;
        int hashCode3 = jSONCHLocalFoursquare != null ? jSONCHLocalFoursquare.hashCode() : 0;
        String str = this.background_image;
        int hashCode4 = str != null ? str.hashCode() : 0;
        JSONCHLocalOpeningHours jSONCHLocalOpeningHours = this.opening_hours;
        int hashCode5 = jSONCHLocalOpeningHours != null ? jSONCHLocalOpeningHours.hashCode() : 0;
        JSONCHLocalLogo jSONCHLocalLogo = this.logo;
        if (jSONCHLocalLogo != null) {
            i = jSONCHLocalLogo.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }
}
