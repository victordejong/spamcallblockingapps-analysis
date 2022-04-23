package com.callapp.common.model.json;

import java.io.Serializable;
import java.util.Collection;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONXingWebProfiles.class */
public class JSONXingWebProfiles implements Serializable {
    private static final long serialVersionUID = -5803410778556071563L;
    private Collection<String> blog;
    private Collection<String> facebook;
    private Collection<String> foursquare;
    private Collection<String> google_plus;
    private Collection<String> homepage;
    private Collection<String> twitter;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof JSONXingWebProfiles)) {
            return false;
        }
        JSONXingWebProfiles jSONXingWebProfiles = (JSONXingWebProfiles) obj;
        Collection<String> collection = this.blog;
        if (collection == null) {
            if (jSONXingWebProfiles.blog != null) {
                return false;
            }
        } else if (!collection.equals(jSONXingWebProfiles.blog)) {
            return false;
        }
        Collection<String> collection2 = this.facebook;
        if (collection2 == null) {
            if (jSONXingWebProfiles.facebook != null) {
                return false;
            }
        } else if (!collection2.equals(jSONXingWebProfiles.facebook)) {
            return false;
        }
        Collection<String> collection3 = this.foursquare;
        if (collection3 == null) {
            if (jSONXingWebProfiles.foursquare != null) {
                return false;
            }
        } else if (!collection3.equals(jSONXingWebProfiles.foursquare)) {
            return false;
        }
        Collection<String> collection4 = this.google_plus;
        if (collection4 == null) {
            if (jSONXingWebProfiles.google_plus != null) {
                return false;
            }
        } else if (!collection4.equals(jSONXingWebProfiles.google_plus)) {
            return false;
        }
        Collection<String> collection5 = this.homepage;
        if (collection5 == null) {
            if (jSONXingWebProfiles.homepage != null) {
                return false;
            }
        } else if (!collection5.equals(jSONXingWebProfiles.homepage)) {
            return false;
        }
        Collection<String> collection6 = this.twitter;
        return collection6 == null ? jSONXingWebProfiles.twitter == null : collection6.equals(jSONXingWebProfiles.twitter);
    }

    public Collection<String> getBlog() {
        return this.blog;
    }

    public Collection<String> getFacebook() {
        return this.facebook;
    }

    public Collection<String> getFoursquare() {
        return this.foursquare;
    }

    public Collection<String> getGoogle_plus() {
        return this.google_plus;
    }

    public Collection<String> getHomepage() {
        return this.homepage;
    }

    public Collection<String> getTwitter() {
        return this.twitter;
    }

    public int hashCode() {
        Collection<String> collection = this.blog;
        int i = 0;
        int hashCode = collection == null ? 0 : collection.hashCode();
        Collection<String> collection2 = this.facebook;
        int hashCode2 = collection2 == null ? 0 : collection2.hashCode();
        Collection<String> collection3 = this.foursquare;
        int hashCode3 = collection3 == null ? 0 : collection3.hashCode();
        Collection<String> collection4 = this.google_plus;
        int hashCode4 = collection4 == null ? 0 : collection4.hashCode();
        Collection<String> collection5 = this.homepage;
        int hashCode5 = collection5 == null ? 0 : collection5.hashCode();
        Collection<String> collection6 = this.twitter;
        if (collection6 != null) {
            i = collection6.hashCode();
        }
        return ((((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    public void setBlog(Collection<String> collection) {
        this.blog = collection;
    }

    public void setFacebook(Collection<String> collection) {
        this.facebook = collection;
    }

    public void setFoursquare(Collection<String> collection) {
        this.foursquare = collection;
    }

    public void setGoogle_plus(Collection<String> collection) {
        this.google_plus = collection;
    }

    public void setHomepage(Collection<String> collection) {
        this.homepage = collection;
    }

    public void setTwitter(Collection<String> collection) {
        this.twitter = collection;
    }
}
