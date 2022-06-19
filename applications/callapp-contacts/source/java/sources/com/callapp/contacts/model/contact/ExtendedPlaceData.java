package com.callapp.contacts.model.contact;

import com.callapp.common.model.json.JSONOpeningHours;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Calendar;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/ExtendedPlaceData.class */
public class ExtendedPlaceData extends PlaceData {
    private static final long serialVersionUID = 8591061698077685164L;
    private String atAGlance;
    private String description;
    private String menuUrl;
    private JSONOpeningHours openingHours;
    private int priceRange = -1;
    private String reserveUrl;

    @Override // com.callapp.contacts.model.contact.PlaceData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || getClass() != obj.getClass()) {
            return false;
        }
        ExtendedPlaceData extendedPlaceData = (ExtendedPlaceData) obj;
        String str = this.atAGlance;
        if (str == null) {
            if (extendedPlaceData.atAGlance != null) {
                return false;
            }
        } else if (!str.equals(extendedPlaceData.atAGlance)) {
            return false;
        }
        String str2 = this.description;
        if (str2 == null) {
            if (extendedPlaceData.description != null) {
                return false;
            }
        } else if (!str2.equals(extendedPlaceData.description)) {
            return false;
        }
        String str3 = this.menuUrl;
        if (str3 == null) {
            if (extendedPlaceData.menuUrl != null) {
                return false;
            }
        } else if (!str3.equals(extendedPlaceData.menuUrl)) {
            return false;
        }
        JSONOpeningHours jSONOpeningHours = this.openingHours;
        if (jSONOpeningHours == null) {
            if (extendedPlaceData.openingHours != null) {
                return false;
            }
        } else if (!jSONOpeningHours.equals(extendedPlaceData.openingHours)) {
            return false;
        }
        if (this.priceRange != extendedPlaceData.priceRange) {
            return false;
        }
        String str4 = this.reserveUrl;
        return str4 == null ? extendedPlaceData.reserveUrl == null : str4.equals(extendedPlaceData.reserveUrl);
    }

    public String getAtAGlance() {
        return this.atAGlance;
    }

    public String getDescription() {
        return this.description;
    }

    public String getMenuUrl() {
        return this.menuUrl;
    }

    public JSONOpeningHours getOpeningHours() {
        return this.openingHours;
    }

    public int getPriceRange() {
        return this.priceRange;
    }

    public String getReserveUrl() {
        return this.reserveUrl;
    }

    public String getTodayOpeningHours() {
        return DateUtils.m27132a(this.openingHours);
    }

    @Override // com.callapp.contacts.model.contact.PlaceData
    public int hashCode() {
        int hashCode = super.hashCode();
        String str = this.atAGlance;
        int i = 0;
        int hashCode2 = str == null ? 0 : str.hashCode();
        String str2 = this.description;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.menuUrl;
        int hashCode4 = str3 == null ? 0 : str3.hashCode();
        JSONOpeningHours jSONOpeningHours = this.openingHours;
        int hashCode5 = jSONOpeningHours == null ? 0 : jSONOpeningHours.hashCode();
        int i2 = this.priceRange;
        String str4 = this.reserveUrl;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i2) * 31) + i;
    }

    public Boolean isOpenNow() {
        Boolean bool;
        String[] m26017k;
        int i = Calendar.getInstance().get(11);
        int i2 = Calendar.getInstance().get(12);
        String todayOpeningHours = getTodayOpeningHours();
        if (StringUtils.m26045b((CharSequence) todayOpeningHours) && (m26017k = StringUtils.m26017k(todayOpeningHours, org.apache.commons.lang3.StringUtils.SPACE)) != null && m26017k.length == 4) {
            String m26021i = StringUtils.m26021i(m26017k[1], ":");
            String m26021i2 = StringUtils.m26021i(m26017k[3], ":");
            String m26023h = StringUtils.m26023h(m26017k[3], ":");
            try {
                int intValue = Integer.valueOf(m26021i).intValue();
                int intValue2 = Integer.valueOf(m26021i2).intValue();
                bool = (intValue > i || (i >= intValue2 && ((i != intValue2 || i2 >= Integer.valueOf(m26023h).intValue()) && intValue2 != 0 && intValue2 >= intValue))) ? Boolean.FALSE : Boolean.TRUE;
            } catch (NumberFormatException e) {
            }
            return bool;
        }
        bool = null;
        return bool;
    }

    public void setAtAGlance(String str) {
        this.atAGlance = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setMenuUrl(String str) {
        this.menuUrl = str;
    }

    public void setOpeningHours(JSONOpeningHours jSONOpeningHours) {
        this.openingHours = jSONOpeningHours;
    }

    public void setPriceRange(int i) {
        this.priceRange = i;
    }

    public void setReserveUrl(String str) {
        this.reserveUrl = str;
    }
}
