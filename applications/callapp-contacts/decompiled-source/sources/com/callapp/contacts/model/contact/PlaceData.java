package com.callapp.contacts.model.contact;

import com.callapp.common.model.json.JSONAddress;
import com.callapp.common.model.json.JSONCategory;
import com.callapp.common.model.json.JSONReview;
import com.callapp.common.model.json.JSONWebsite;
import java.util.Collection;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/PlaceData.class */
public class PlaceData extends ExternalSourceData {
    private static final long serialVersionUID = -4947881868992904415L;
    private JSONAddress address;
    private Set<JSONCategory> categories;
    private String photoUrl;
    private Collection<JSONReview> reviews;
    private String url;
    private JSONWebsite website;
    private double lat = 0.0d;
    private double lng = 0.0d;
    private double avgRating = -1.0d;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof PlaceData)) {
            return false;
        }
        PlaceData placeData = (PlaceData) obj;
        JSONAddress jSONAddress = this.address;
        if (jSONAddress == null) {
            if (placeData.address != null) {
                return false;
            }
        } else if (!jSONAddress.equals(placeData.address)) {
            return false;
        }
        if (Double.doubleToLongBits(this.avgRating) != Double.doubleToLongBits(placeData.avgRating)) {
            return false;
        }
        Set<JSONCategory> set = this.categories;
        if (set == null) {
            if (placeData.categories != null) {
                return false;
            }
        } else if (!set.equals(placeData.categories)) {
            return false;
        }
        if (getFullName() == null) {
            if (placeData.getFullName() != null) {
                return false;
            }
        } else if (!getFullName().equals(placeData.getFullName())) {
            return false;
        }
        if (Double.doubleToLongBits(this.lat) != Double.doubleToLongBits(placeData.lat) || Double.doubleToLongBits(this.lng) != Double.doubleToLongBits(placeData.lng)) {
            return false;
        }
        String str = this.photoUrl;
        if (str == null) {
            if (placeData.photoUrl != null) {
                return false;
            }
        } else if (!str.equals(placeData.photoUrl)) {
            return false;
        }
        Collection<JSONReview> collection = this.reviews;
        if (collection == null) {
            if (placeData.reviews != null) {
                return false;
            }
        } else if (!collection.equals(placeData.reviews)) {
            return false;
        }
        String str2 = this.url;
        if (str2 == null) {
            if (placeData.url != null) {
                return false;
            }
        } else if (!str2.equals(placeData.url)) {
            return false;
        }
        JSONWebsite jSONWebsite = this.website;
        return jSONWebsite == null ? placeData.website == null : jSONWebsite.equals(placeData.website);
    }

    public JSONAddress getAddress() {
        return this.address;
    }

    public double getAvgRating() {
        return this.avgRating;
    }

    public Set<JSONCategory> getCategories() {
        return this.categories;
    }

    public double getLat() {
        return this.lat;
    }

    public double getLng() {
        return this.lng;
    }

    public String getPhotoUrl() {
        return this.photoUrl;
    }

    public Collection<JSONReview> getReviews() {
        return this.reviews;
    }

    public String getUrl() {
        return this.url;
    }

    public JSONWebsite getWebsite() {
        return this.website;
    }

    public int hashCode() {
        JSONAddress jSONAddress = this.address;
        int i = 0;
        int hashCode = jSONAddress == null ? 0 : jSONAddress.hashCode();
        long doubleToLongBits = Double.doubleToLongBits(this.avgRating);
        int i2 = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        Set<JSONCategory> set = this.categories;
        int hashCode2 = set == null ? 0 : set.hashCode();
        int hashCode3 = getFullName() == null ? 0 : getFullName().hashCode();
        long doubleToLongBits2 = Double.doubleToLongBits(this.lat);
        int i3 = (int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32));
        long doubleToLongBits3 = Double.doubleToLongBits(this.lng);
        int i4 = (int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32));
        String str = this.photoUrl;
        int hashCode4 = str == null ? 0 : str.hashCode();
        Collection<JSONReview> collection = this.reviews;
        int hashCode5 = collection == null ? 0 : collection.hashCode();
        String str2 = this.url;
        int hashCode6 = str2 == null ? 0 : str2.hashCode();
        JSONWebsite jSONWebsite = this.website;
        if (jSONWebsite != null) {
            i = jSONWebsite.hashCode();
        }
        return ((((((((((((((((((hashCode + 31) * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + i3) * 31) + i4) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
    }

    public void setAddress(JSONAddress jSONAddress) {
        this.address = jSONAddress;
    }

    public void setAvgRating(double d2) {
        this.avgRating = d2;
    }

    public void setCategories(Set<JSONCategory> set) {
        this.categories = set;
    }

    public void setLat(double d2) {
        this.lat = d2;
    }

    public void setLng(double d2) {
        this.lng = d2;
    }

    public void setPhotoUrl(String str) {
        this.photoUrl = str;
    }

    public void setReviews(Collection<JSONReview> collection) {
        this.reviews = collection;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setWebsite(JSONWebsite jSONWebsite) {
        this.website = jSONWebsite;
    }
}
