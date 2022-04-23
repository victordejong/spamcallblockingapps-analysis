package com.callapp.common.model.json;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONXingUser.class */
public class JSONXingUser extends JSONXingCompactUser {
    private static final long serialVersionUID = 5104854396667531567L;
    private JSONXingUserBirthday birth_date;
    private String first_name;
    private String gender;
    private Map<String, String> instant_messaging_accounts;
    private String last_name;
    private JSONXingProfessionalExperience professional_experience;
    private JSONXingWebProfiles web_profiles;

    @Override // com.callapp.common.model.json.JSONXingCompactUser
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || !(obj instanceof JSONXingUser)) {
            return false;
        }
        JSONXingUser jSONXingUser = (JSONXingUser) obj;
        JSONXingUserBirthday jSONXingUserBirthday = this.birth_date;
        if (jSONXingUserBirthday == null) {
            if (jSONXingUser.birth_date != null) {
                return false;
            }
        } else if (!jSONXingUserBirthday.equals(jSONXingUser.birth_date)) {
            return false;
        }
        String str = this.first_name;
        if (str == null) {
            if (jSONXingUser.first_name != null) {
                return false;
            }
        } else if (!str.equals(jSONXingUser.first_name)) {
            return false;
        }
        String str2 = this.gender;
        if (str2 == null) {
            if (jSONXingUser.gender != null) {
                return false;
            }
        } else if (!str2.equals(jSONXingUser.gender)) {
            return false;
        }
        Map<String, String> map = this.instant_messaging_accounts;
        if (map == null) {
            if (jSONXingUser.instant_messaging_accounts != null) {
                return false;
            }
        } else if (!map.equals(jSONXingUser.instant_messaging_accounts)) {
            return false;
        }
        String str3 = this.last_name;
        if (str3 == null) {
            if (jSONXingUser.last_name != null) {
                return false;
            }
        } else if (!str3.equals(jSONXingUser.last_name)) {
            return false;
        }
        JSONXingProfessionalExperience jSONXingProfessionalExperience = this.professional_experience;
        if (jSONXingProfessionalExperience == null) {
            if (jSONXingUser.professional_experience != null) {
                return false;
            }
        } else if (!jSONXingProfessionalExperience.equals(jSONXingUser.professional_experience)) {
            return false;
        }
        JSONXingWebProfiles jSONXingWebProfiles = this.web_profiles;
        return jSONXingWebProfiles == null ? jSONXingUser.web_profiles == null : jSONXingWebProfiles.equals(jSONXingUser.web_profiles);
    }

    public JSONXingUserBirthday getBirth_date() {
        return this.birth_date;
    }

    public String getFirst_name() {
        return this.first_name;
    }

    public String getGender() {
        return this.gender;
    }

    public Map<String, String> getInstant_messaging_accounts() {
        return this.instant_messaging_accounts;
    }

    public String getLast_name() {
        return this.last_name;
    }

    public JSONXingProfessionalExperience getProfessional_experience() {
        return this.professional_experience;
    }

    public JSONXingWebProfiles getWeb_profiles() {
        return this.web_profiles;
    }

    @Override // com.callapp.common.model.json.JSONXingCompactUser
    public int hashCode() {
        int hashCode = super.hashCode();
        JSONXingUserBirthday jSONXingUserBirthday = this.birth_date;
        int i = 0;
        int hashCode2 = jSONXingUserBirthday == null ? 0 : jSONXingUserBirthday.hashCode();
        String str = this.first_name;
        int hashCode3 = str == null ? 0 : str.hashCode();
        String str2 = this.gender;
        int hashCode4 = str2 == null ? 0 : str2.hashCode();
        Map<String, String> map = this.instant_messaging_accounts;
        int hashCode5 = map == null ? 0 : map.hashCode();
        String str3 = this.last_name;
        int hashCode6 = str3 == null ? 0 : str3.hashCode();
        JSONXingProfessionalExperience jSONXingProfessionalExperience = this.professional_experience;
        int hashCode7 = jSONXingProfessionalExperience == null ? 0 : jSONXingProfessionalExperience.hashCode();
        JSONXingWebProfiles jSONXingWebProfiles = this.web_profiles;
        if (jSONXingWebProfiles != null) {
            i = jSONXingWebProfiles.hashCode();
        }
        return (((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
    }

    public void setBirth_date(JSONXingUserBirthday jSONXingUserBirthday) {
        this.birth_date = jSONXingUserBirthday;
    }

    public void setFirst_name(String str) {
        this.first_name = str;
    }

    public void setGender(String str) {
        this.gender = str;
    }

    public void setInstant_messaging_accounts(Map<String, String> map) {
        this.instant_messaging_accounts = map;
    }

    public void setLast_name(String str) {
        this.last_name = str;
    }

    public void setProfessional_experience(JSONXingProfessionalExperience jSONXingProfessionalExperience) {
        this.professional_experience = jSONXingProfessionalExperience;
    }

    public void setWeb_profiles(JSONXingWebProfiles jSONXingWebProfiles) {
        this.web_profiles = jSONXingWebProfiles;
    }
}
