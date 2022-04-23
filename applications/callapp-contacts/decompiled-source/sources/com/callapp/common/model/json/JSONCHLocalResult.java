package com.callapp.common.model.json;

import com.callapp.framework.util.StringUtils;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONCHLocalResult.class */
public class JSONCHLocalResult implements Serializable {
    private static final String ENTRY_TYPE_ORGANISATION = "Organisation";
    private static final String ENTRY_TYPE_PERSON = "Person";
    private static final long serialVersionUID = -2747834026692147579L;
    private List<JSONCHLocalAction> actions;
    private List<JSONCHLocalResultsAddress> addresses;
    private JSONCHLocalBusiness business;
    private List<JSONCHLocalPhone> contacts;
    private JSONCHLocalContentAds content_ads;
    private String description;
    private String entry_type;
    private JSONCHLocalResultsLocation location;
    private String subtitle;
    private String title;
    private String web_permalink;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONCHLocalResult jSONCHLocalResult = (JSONCHLocalResult) obj;
        String str = this.web_permalink;
        if (str != null) {
            if (!str.equals(jSONCHLocalResult.web_permalink)) {
                return false;
            }
        } else if (jSONCHLocalResult.web_permalink != null) {
            return false;
        }
        String str2 = this.title;
        if (str2 != null) {
            if (!str2.equals(jSONCHLocalResult.title)) {
                return false;
            }
        } else if (jSONCHLocalResult.title != null) {
            return false;
        }
        String str3 = this.subtitle;
        if (str3 != null) {
            if (!str3.equals(jSONCHLocalResult.subtitle)) {
                return false;
            }
        } else if (jSONCHLocalResult.subtitle != null) {
            return false;
        }
        String str4 = this.description;
        if (str4 != null) {
            if (!str4.equals(jSONCHLocalResult.description)) {
                return false;
            }
        } else if (jSONCHLocalResult.description != null) {
            return false;
        }
        List<JSONCHLocalResultsAddress> list = this.addresses;
        if (list != null) {
            if (!list.equals(jSONCHLocalResult.addresses)) {
                return false;
            }
        } else if (jSONCHLocalResult.addresses != null) {
            return false;
        }
        JSONCHLocalResultsLocation jSONCHLocalResultsLocation = this.location;
        if (jSONCHLocalResultsLocation != null) {
            if (!jSONCHLocalResultsLocation.equals(jSONCHLocalResult.location)) {
                return false;
            }
        } else if (jSONCHLocalResult.location != null) {
            return false;
        }
        List<JSONCHLocalPhone> list2 = this.contacts;
        if (list2 != null) {
            if (!list2.equals(jSONCHLocalResult.contacts)) {
                return false;
            }
        } else if (jSONCHLocalResult.contacts != null) {
            return false;
        }
        JSONCHLocalContentAds jSONCHLocalContentAds = this.content_ads;
        if (jSONCHLocalContentAds != null) {
            if (!jSONCHLocalContentAds.equals(jSONCHLocalResult.content_ads)) {
                return false;
            }
        } else if (jSONCHLocalResult.content_ads != null) {
            return false;
        }
        List<JSONCHLocalAction> list3 = this.actions;
        if (list3 != null) {
            if (!list3.equals(jSONCHLocalResult.actions)) {
                return false;
            }
        } else if (jSONCHLocalResult.actions != null) {
            return false;
        }
        String str5 = this.entry_type;
        if (str5 != null) {
            if (!str5.equals(jSONCHLocalResult.entry_type)) {
                return false;
            }
        } else if (jSONCHLocalResult.entry_type != null) {
            return false;
        }
        JSONCHLocalBusiness jSONCHLocalBusiness = this.business;
        JSONCHLocalBusiness jSONCHLocalBusiness2 = jSONCHLocalResult.business;
        return jSONCHLocalBusiness != null ? jSONCHLocalBusiness.equals(jSONCHLocalBusiness2) : jSONCHLocalBusiness2 == null;
    }

    public List<JSONCHLocalAction> getActions() {
        return this.actions;
    }

    public List<JSONCHLocalResultsAddress> getAddresses() {
        return this.addresses;
    }

    public JSONCHLocalBusiness getBusiness() {
        return this.business;
    }

    public List<JSONCHLocalPhone> getContacts() {
        return this.contacts;
    }

    public JSONCHLocalContentAds getContent_ads() {
        return this.content_ads;
    }

    public String getDescription() {
        return this.description;
    }

    public String getEntry_type() {
        return this.entry_type;
    }

    public JSONCHLocalResultsLocation getLocation() {
        return this.location;
    }

    public String getSubtitle() {
        return this.subtitle;
    }

    public String getTitle() {
        return this.title;
    }

    public String getWeb_permalink() {
        return this.web_permalink;
    }

    public int hashCode() {
        String str = this.web_permalink;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.title;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.subtitle;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.description;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        List<JSONCHLocalResultsAddress> list = this.addresses;
        int hashCode5 = list != null ? list.hashCode() : 0;
        JSONCHLocalResultsLocation jSONCHLocalResultsLocation = this.location;
        int hashCode6 = jSONCHLocalResultsLocation != null ? jSONCHLocalResultsLocation.hashCode() : 0;
        List<JSONCHLocalPhone> list2 = this.contacts;
        int hashCode7 = list2 != null ? list2.hashCode() : 0;
        JSONCHLocalContentAds jSONCHLocalContentAds = this.content_ads;
        int hashCode8 = jSONCHLocalContentAds != null ? jSONCHLocalContentAds.hashCode() : 0;
        List<JSONCHLocalAction> list3 = this.actions;
        int hashCode9 = list3 != null ? list3.hashCode() : 0;
        String str5 = this.entry_type;
        int hashCode10 = str5 != null ? str5.hashCode() : 0;
        JSONCHLocalBusiness jSONCHLocalBusiness = this.business;
        if (jSONCHLocalBusiness != null) {
            i = jSONCHLocalBusiness.hashCode();
        }
        return (((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + i;
    }

    public boolean isOrganisation() {
        return StringUtils.b(this.entry_type, ENTRY_TYPE_ORGANISATION);
    }
}
