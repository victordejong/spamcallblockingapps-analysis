package com.mikepenz.aboutlibraries.entity;
/* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/entity/License.class */
public class License {
    private String definedName;
    private String licenseDescription;
    private String licenseName;
    private String licenseShortDescription;
    private String licenseWebsite;

    public License() {
    }

    public License(String str, String str2, String str3, String str4) {
        this.licenseName = str;
        this.licenseWebsite = str2;
        this.licenseShortDescription = str3;
        this.licenseDescription = str4;
    }

    public License copy() {
        return new License(this.licenseName, this.licenseWebsite, this.licenseShortDescription, this.licenseDescription);
    }

    public String getDefinedName() {
        return this.definedName;
    }

    public String getLicenseDescription() {
        return this.licenseDescription;
    }

    public String getLicenseName() {
        return this.licenseName;
    }

    public String getLicenseShortDescription() {
        return this.licenseShortDescription;
    }

    public String getLicenseWebsite() {
        return this.licenseWebsite;
    }

    public void setDefinedName(String str) {
        this.definedName = str;
    }

    public void setLicenseDescription(String str) {
        this.licenseDescription = str;
    }

    public void setLicenseName(String str) {
        this.licenseName = str;
    }

    public void setLicenseShortDescription(String str) {
        this.licenseShortDescription = str;
    }

    public void setLicenseWebsite(String str) {
        this.licenseWebsite = str;
    }
}
