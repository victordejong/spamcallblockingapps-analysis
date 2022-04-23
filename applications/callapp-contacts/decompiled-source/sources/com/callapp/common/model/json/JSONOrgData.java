package com.callapp.common.model.json;

import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.annotation.JsonIgnore;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONOrgData.class */
public class JSONOrgData extends CallAppJSONObject {
    private static final long serialVersionUID = -5241394518875967260L;
    private String company;
    private String title;

    public JSONOrgData() {
    }

    public JSONOrgData(JSONOrgData jSONOrgData) {
        this.company = jSONOrgData.company;
        this.title = jSONOrgData.title;
    }

    public JSONOrgData(String str, String str2) {
        this.company = str;
        this.title = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof JSONOrgData)) {
            return false;
        }
        JSONOrgData jSONOrgData = (JSONOrgData) obj;
        String str = this.company;
        if (str == null) {
            if (jSONOrgData.company != null) {
                return false;
            }
        } else if (!str.equalsIgnoreCase(jSONOrgData.company)) {
            return false;
        }
        String str2 = this.title;
        return str2 == null ? jSONOrgData.title == null : str2.equalsIgnoreCase(jSONOrgData.title);
    }

    public String getCompany() {
        return this.company;
    }

    @JsonIgnore
    public String getFullOrgData() {
        StringBuilder sb = new StringBuilder();
        if (StringUtils.b((CharSequence) getTitle())) {
            sb.append(getTitle());
        }
        if (StringUtils.b((CharSequence) getCompany())) {
            if (sb.length() > 0) {
                sb.append(" @ ");
            }
            sb.append(getCompany());
        }
        return sb.toString();
    }

    public String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.company;
        int i = 0;
        int hashCode = str == null ? 0 : str.toLowerCase().hashCode();
        String str2 = this.title;
        if (str2 != null) {
            i = str2.toLowerCase().hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    @JsonIgnore
    public boolean isEmpty() {
        return this.title == null && this.company == null;
    }

    public void setCompany(String str) {
        this.company = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "JSONOrgData{title='" + this.title + "', company='" + this.company + "'}";
    }
}
