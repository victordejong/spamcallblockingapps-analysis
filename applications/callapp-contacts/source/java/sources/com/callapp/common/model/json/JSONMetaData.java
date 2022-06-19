package com.callapp.common.model.json;

import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONMetaData.class */
public class JSONMetaData extends CallAppJSONObject {
    private static final long serialVersionUID = 9178916671684498322L;
    private ArrayList<JSONAccount> accounts;
    private String androidId;
    private String carrier;
    private String countryISO;
    private String device;
    private String gender;
    private String googleAdvertisingId;
    private String googleServiceFrameworkId;
    private String imei;
    private ArrayList<JSONInstalledApp> installedApps;
    private String language;
    private String manufacturer;
    private String model;
    private String osVersion;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONMetaData jSONMetaData = (JSONMetaData) obj;
        String str = this.androidId;
        if (str != null) {
            if (!str.equals(jSONMetaData.androidId)) {
                return false;
            }
        } else if (jSONMetaData.androidId != null) {
            return false;
        }
        String str2 = this.googleAdvertisingId;
        if (str2 != null) {
            if (!str2.equals(jSONMetaData.googleAdvertisingId)) {
                return false;
            }
        } else if (jSONMetaData.googleAdvertisingId != null) {
            return false;
        }
        String str3 = this.googleServiceFrameworkId;
        if (str3 != null) {
            if (!str3.equals(jSONMetaData.googleServiceFrameworkId)) {
                return false;
            }
        } else if (jSONMetaData.googleServiceFrameworkId != null) {
            return false;
        }
        String str4 = this.imei;
        if (str4 != null) {
            if (!str4.equals(jSONMetaData.imei)) {
                return false;
            }
        } else if (jSONMetaData.imei != null) {
            return false;
        }
        String str5 = this.osVersion;
        if (str5 != null) {
            if (!str5.equals(jSONMetaData.osVersion)) {
                return false;
            }
        } else if (jSONMetaData.osVersion != null) {
            return false;
        }
        String str6 = this.manufacturer;
        if (str6 != null) {
            if (!str6.equals(jSONMetaData.manufacturer)) {
                return false;
            }
        } else if (jSONMetaData.manufacturer != null) {
            return false;
        }
        String str7 = this.model;
        if (str7 != null) {
            if (!str7.equals(jSONMetaData.model)) {
                return false;
            }
        } else if (jSONMetaData.model != null) {
            return false;
        }
        String str8 = this.device;
        if (str8 != null) {
            if (!str8.equals(jSONMetaData.device)) {
                return false;
            }
        } else if (jSONMetaData.device != null) {
            return false;
        }
        String str9 = this.countryISO;
        if (str9 != null) {
            if (!str9.equals(jSONMetaData.countryISO)) {
                return false;
            }
        } else if (jSONMetaData.countryISO != null) {
            return false;
        }
        ArrayList<JSONInstalledApp> arrayList = this.installedApps;
        if (arrayList != null) {
            if (!arrayList.equals(jSONMetaData.installedApps)) {
                return false;
            }
        } else if (jSONMetaData.installedApps != null) {
            return false;
        }
        ArrayList<JSONAccount> arrayList2 = this.accounts;
        if (arrayList2 != null) {
            if (!arrayList2.equals(jSONMetaData.accounts)) {
                return false;
            }
        } else if (jSONMetaData.accounts != null) {
            return false;
        }
        String str10 = this.carrier;
        if (str10 != null) {
            if (!str10.equals(jSONMetaData.carrier)) {
                return false;
            }
        } else if (jSONMetaData.carrier != null) {
            return false;
        }
        String str11 = this.gender;
        if (str11 != null) {
            if (!str11.equals(jSONMetaData.gender)) {
                return false;
            }
        } else if (jSONMetaData.gender != null) {
            return false;
        }
        String str12 = this.language;
        String str13 = jSONMetaData.language;
        return str12 != null ? str12.equals(str13) : str13 == null;
    }

    public ArrayList<JSONAccount> getAccounts() {
        return this.accounts;
    }

    public String getAndroidId() {
        return this.androidId;
    }

    public String getCarrier() {
        return this.carrier;
    }

    public String getCountryISO() {
        return this.countryISO;
    }

    public String getDevice() {
        return this.device;
    }

    public String getGender() {
        return this.gender;
    }

    public String getGoogleAdvertisingId() {
        return this.googleAdvertisingId;
    }

    public String getGoogleServiceFrameworkId() {
        return this.googleServiceFrameworkId;
    }

    public String getImei() {
        return this.imei;
    }

    public ArrayList<JSONInstalledApp> getInstalledApps() {
        return this.installedApps;
    }

    public String getLanguage() {
        return this.language;
    }

    public String getManufacturer() {
        return this.manufacturer;
    }

    public String getModel() {
        return this.model;
    }

    public String getOsVersion() {
        return this.osVersion;
    }

    public int hashCode() {
        String str = this.androidId;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.googleAdvertisingId;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.googleServiceFrameworkId;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.imei;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.osVersion;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.manufacturer;
        int hashCode6 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.model;
        int hashCode7 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.device;
        int hashCode8 = str8 != null ? str8.hashCode() : 0;
        String str9 = this.countryISO;
        int hashCode9 = str9 != null ? str9.hashCode() : 0;
        ArrayList<JSONInstalledApp> arrayList = this.installedApps;
        int hashCode10 = arrayList != null ? arrayList.hashCode() : 0;
        ArrayList<JSONAccount> arrayList2 = this.accounts;
        int hashCode11 = arrayList2 != null ? arrayList2.hashCode() : 0;
        String str10 = this.carrier;
        int hashCode12 = str10 != null ? str10.hashCode() : 0;
        String str11 = this.gender;
        int hashCode13 = str11 != null ? str11.hashCode() : 0;
        String str12 = this.language;
        if (str12 != null) {
            i = str12.hashCode();
        }
        return (((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + i;
    }

    public void setAccounts(ArrayList<JSONAccount> arrayList) {
        this.accounts = arrayList;
    }

    public void setAndroidId(String str) {
        this.androidId = str;
    }

    public void setCarrier(String str) {
        this.carrier = str;
    }

    public void setCountryISO(String str) {
        this.countryISO = str;
    }

    public void setDevice(String str) {
        this.device = str;
    }

    public void setGender(String str) {
        this.gender = str;
    }

    public void setGoogleAdvertisingId(String str) {
        this.googleAdvertisingId = str;
    }

    public void setGoogleServiceFrameworkId(String str) {
        this.googleServiceFrameworkId = str;
    }

    public void setImei(String str) {
        this.imei = str;
    }

    public void setInstalledApps(ArrayList<JSONInstalledApp> arrayList) {
        this.installedApps = arrayList;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setManufacturer(String str) {
        this.manufacturer = str;
    }

    public void setModel(String str) {
        this.model = str;
    }

    public void setOsVersion(String str) {
        this.osVersion = str;
    }

    public String toString() {
        return "JSONMetaData{androidId='" + this.androidId + "', googleAdvertisingId='" + this.googleAdvertisingId + "', googleServiceFrameworkId='" + this.googleServiceFrameworkId + "', imei='" + this.imei + "', osVersion='" + this.osVersion + "', manufacturer='" + this.manufacturer + "', model='" + this.model + "', device='" + this.device + "', countryISO='" + this.countryISO + "', installedApps=" + this.installedApps + ", accounts=" + this.accounts + ", carrier='" + this.carrier + "', gender='" + this.gender + "', language='" + this.language + "'}";
    }
}
