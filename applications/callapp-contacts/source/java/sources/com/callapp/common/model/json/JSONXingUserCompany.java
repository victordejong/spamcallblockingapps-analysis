package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONXingUserCompany.class */
public class JSONXingUserCompany implements Serializable {
    private static final long serialVersionUID = 2505672721157113445L;
    private String begin_date;
    private String career_level;
    private String company_size;
    private String description;
    private String end_date;
    private String industry;
    private String name;
    private String tag;
    private String title;
    private String url;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof JSONXingUserCompany)) {
            return false;
        }
        JSONXingUserCompany jSONXingUserCompany = (JSONXingUserCompany) obj;
        String str = this.begin_date;
        if (str == null) {
            if (jSONXingUserCompany.begin_date != null) {
                return false;
            }
        } else if (!str.equals(jSONXingUserCompany.begin_date)) {
            return false;
        }
        String str2 = this.career_level;
        if (str2 == null) {
            if (jSONXingUserCompany.career_level != null) {
                return false;
            }
        } else if (!str2.equals(jSONXingUserCompany.career_level)) {
            return false;
        }
        String str3 = this.company_size;
        if (str3 == null) {
            if (jSONXingUserCompany.company_size != null) {
                return false;
            }
        } else if (!str3.equals(jSONXingUserCompany.company_size)) {
            return false;
        }
        String str4 = this.description;
        if (str4 == null) {
            if (jSONXingUserCompany.description != null) {
                return false;
            }
        } else if (!str4.equals(jSONXingUserCompany.description)) {
            return false;
        }
        String str5 = this.end_date;
        if (str5 == null) {
            if (jSONXingUserCompany.end_date != null) {
                return false;
            }
        } else if (!str5.equals(jSONXingUserCompany.end_date)) {
            return false;
        }
        String str6 = this.industry;
        if (str6 == null) {
            if (jSONXingUserCompany.industry != null) {
                return false;
            }
        } else if (!str6.equals(jSONXingUserCompany.industry)) {
            return false;
        }
        String str7 = this.name;
        if (str7 == null) {
            if (jSONXingUserCompany.name != null) {
                return false;
            }
        } else if (!str7.equals(jSONXingUserCompany.name)) {
            return false;
        }
        String str8 = this.tag;
        if (str8 == null) {
            if (jSONXingUserCompany.tag != null) {
                return false;
            }
        } else if (!str8.equals(jSONXingUserCompany.tag)) {
            return false;
        }
        String str9 = this.title;
        if (str9 == null) {
            if (jSONXingUserCompany.title != null) {
                return false;
            }
        } else if (!str9.equals(jSONXingUserCompany.title)) {
            return false;
        }
        String str10 = this.url;
        return str10 == null ? jSONXingUserCompany.url == null : str10.equals(jSONXingUserCompany.url);
    }

    public String getBegin_date() {
        return this.begin_date;
    }

    public String getCareer_level() {
        return this.career_level;
    }

    public String getCompany_size() {
        return this.company_size;
    }

    public String getDescription() {
        return this.description;
    }

    public String getEnd_date() {
        return this.end_date;
    }

    public String getIndustry() {
        return this.industry;
    }

    public String getName() {
        return this.name;
    }

    public String getTag() {
        return this.tag;
    }

    public String getTitle() {
        return this.title;
    }

    public String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.begin_date;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.career_level;
        int hashCode2 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.company_size;
        int hashCode3 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.description;
        int hashCode4 = str4 == null ? 0 : str4.hashCode();
        String str5 = this.end_date;
        int hashCode5 = str5 == null ? 0 : str5.hashCode();
        String str6 = this.industry;
        int hashCode6 = str6 == null ? 0 : str6.hashCode();
        String str7 = this.name;
        int hashCode7 = str7 == null ? 0 : str7.hashCode();
        String str8 = this.tag;
        int hashCode8 = str8 == null ? 0 : str8.hashCode();
        String str9 = this.title;
        int hashCode9 = str9 == null ? 0 : str9.hashCode();
        String str10 = this.url;
        if (str10 != null) {
            i = str10.hashCode();
        }
        return ((((((((((((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i;
    }

    public void setBegin_date(String str) {
        this.begin_date = str;
    }

    public void setCareer_level(String str) {
        this.career_level = str;
    }

    public void setCompany_size(String str) {
        this.company_size = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setEnd_date(String str) {
        this.end_date = str;
    }

    public void setIndustry(String str) {
        this.industry = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
