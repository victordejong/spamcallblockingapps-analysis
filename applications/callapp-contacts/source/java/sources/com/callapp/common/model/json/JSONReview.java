package com.callapp.common.model.json;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONReview.class */
public class JSONReview extends CallAppJSONObject {
    public static final transient int DAS_ORTLICHE_TYPE_ID = 3;
    public static final transient int GOOGLE_PLACES_TYPE_ID = 1;
    public static final transient int REVIEW_OTHER_TYPE_ID = 5;
    public static final transient int VENUE_FOURSQUARE_TYPE_ID = 3;
    public static final transient int YAHOO_LOCAL_TYPE_ID = 2;
    private static final long serialVersionUID = -2952154015006277192L;
    private String excerpt;
    private int type;
    private String url;

    public JSONReview() {
    }

    public JSONReview(JSONReview jSONReview) {
        this.excerpt = jSONReview.excerpt;
        this.url = jSONReview.url;
        setType(jSONReview.getType());
    }

    public JSONReview(String str, String str2, int i) {
        this.excerpt = str;
        this.url = str2;
        setType(i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONReview jSONReview = (JSONReview) obj;
        String str = this.excerpt;
        if (str == null) {
            if (jSONReview.excerpt != null) {
                return false;
            }
        } else if (!str.equals(jSONReview.excerpt)) {
            return false;
        }
        if (getType() != jSONReview.getType()) {
            return false;
        }
        String str2 = this.url;
        return str2 == null ? jSONReview.url == null : str2.equals(jSONReview.url);
    }

    public String getExcerpt() {
        return this.excerpt;
    }

    public int getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.excerpt;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        int type = getType();
        String str2 = this.url;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((hashCode + 31) * 31) + type) * 31) + i;
    }

    public void setExcerpt(String str) {
        this.excerpt = str;
    }

    public void setType(int i) {
        this.type = i;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "JSONReview{excerpt='" + this.excerpt + "', url='" + this.url + "'type='" + getType() + "'}";
    }
}
