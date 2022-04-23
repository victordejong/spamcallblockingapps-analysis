package com.callapp.common.model.json;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONXingProfessionalExperience.class */
public class JSONXingProfessionalExperience implements Serializable {
    private static final long serialVersionUID = 6442548363951772215L;
    private List<JSONXingUserCompany> non_primary_companies;
    private JSONXingUserCompany primary_company;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof JSONXingProfessionalExperience)) {
            return false;
        }
        JSONXingProfessionalExperience jSONXingProfessionalExperience = (JSONXingProfessionalExperience) obj;
        List<JSONXingUserCompany> list = this.non_primary_companies;
        if (list == null) {
            if (jSONXingProfessionalExperience.non_primary_companies != null) {
                return false;
            }
        } else if (!list.equals(jSONXingProfessionalExperience.non_primary_companies)) {
            return false;
        }
        JSONXingUserCompany jSONXingUserCompany = this.primary_company;
        return jSONXingUserCompany == null ? jSONXingProfessionalExperience.primary_company == null : jSONXingUserCompany.equals(jSONXingProfessionalExperience.primary_company);
    }

    public List<JSONXingUserCompany> getNon_primary_companies() {
        return this.non_primary_companies;
    }

    public JSONXingUserCompany getPrimary_company() {
        return this.primary_company;
    }

    public int hashCode() {
        List<JSONXingUserCompany> list = this.non_primary_companies;
        int i = 0;
        int hashCode = list == null ? 0 : list.hashCode();
        JSONXingUserCompany jSONXingUserCompany = this.primary_company;
        if (jSONXingUserCompany != null) {
            i = jSONXingUserCompany.hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void setNon_primary_companies(List<JSONXingUserCompany> list) {
        this.non_primary_companies = list;
    }

    public void setPrimary_company(JSONXingUserCompany jSONXingUserCompany) {
        this.primary_company = jSONXingUserCompany;
    }
}
