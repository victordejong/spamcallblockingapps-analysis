package com.callapp.common.model.json;

import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONProfileViewed.class */
public class JSONProfileViewed implements Serializable {
    private static final long serialVersionUID = 2026083024724230937L;
    private String source;
    private String viewedProfilePhoneNumber;
    private String viewerName;

    public JSONProfileViewed() {
    }

    public JSONProfileViewed(String str, String str2, String str3) {
        this.viewedProfilePhoneNumber = str;
        this.source = str3;
        this.viewerName = str2;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONProfileViewed jSONProfileViewed = (JSONProfileViewed) obj;
        return Objects.equals(this.viewedProfilePhoneNumber, jSONProfileViewed.viewedProfilePhoneNumber) && Objects.equals(this.viewerName, jSONProfileViewed.viewerName) && Objects.equals(this.source, jSONProfileViewed.source);
    }

    public String getSource() {
        return this.source;
    }

    public String getViewedProfilePhoneNumber() {
        return this.viewedProfilePhoneNumber;
    }

    public String getViewerName() {
        return this.viewerName;
    }

    public int hashCode() {
        return Objects.hash(this.viewedProfilePhoneNumber, this.viewerName, this.source);
    }

    public void setSource(String str) {
        this.source = str;
    }

    public void setViewedProfilePhoneNumber(String str) {
        this.viewedProfilePhoneNumber = str;
    }

    public void setViewerName(String str) {
        this.viewerName = str;
    }
}
