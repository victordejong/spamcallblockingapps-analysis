package com.callapp.common.model.json;

import com.callapp.framework.util.StringUtils;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONCHLocalAction.class */
public class JSONCHLocalAction implements Serializable {
    private static final String ACTION_TYPE_MOVIE = "movie";
    private static final long serialVersionUID = 6870717990872941708L;
    private String adType;
    private String image;
    private String label;
    private String order;
    private String url;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONCHLocalAction jSONCHLocalAction = (JSONCHLocalAction) obj;
        String str = this.label;
        if (str != null) {
            if (!str.equals(jSONCHLocalAction.label)) {
                return false;
            }
        } else if (jSONCHLocalAction.label != null) {
            return false;
        }
        String str2 = this.url;
        if (str2 != null) {
            if (!str2.equals(jSONCHLocalAction.url)) {
                return false;
            }
        } else if (jSONCHLocalAction.url != null) {
            return false;
        }
        String str3 = this.image;
        if (str3 != null) {
            if (!str3.equals(jSONCHLocalAction.image)) {
                return false;
            }
        } else if (jSONCHLocalAction.image != null) {
            return false;
        }
        String str4 = this.adType;
        if (str4 != null) {
            if (!str4.equals(jSONCHLocalAction.adType)) {
                return false;
            }
        } else if (jSONCHLocalAction.adType != null) {
            return false;
        }
        String str5 = this.order;
        String str6 = jSONCHLocalAction.order;
        return str5 != null ? str5.equals(str6) : str6 == null;
    }

    public String getAdType() {
        return this.adType;
    }

    public String getImage() {
        return this.image;
    }

    public String getLabel() {
        return this.label;
    }

    public String getOrder() {
        return this.order;
    }

    public String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.label;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.url;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.image;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.adType;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.order;
        if (str5 != null) {
            i = str5.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public boolean isMovieAction() {
        return StringUtils.b(this.adType, ACTION_TYPE_MOVIE);
    }
}
