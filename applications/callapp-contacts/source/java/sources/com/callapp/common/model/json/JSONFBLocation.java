package com.callapp.common.model.json;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONFBLocation.class */
public class JSONFBLocation extends CallAppJSONObject {
    private static final long serialVersionUID = 5617359441049036586L;
    @JsonProperty("city")
    private String city;
    @JsonProperty("country")
    private String country;
    @JsonProperty("latitude")
    private Double latitude;
    @JsonProperty("locatedIn")
    private String locatedIn;
    @JsonProperty("longitude")
    private Double longitude;
    @JsonProperty("name")
    private String name;
    @JsonProperty("region")
    private String region;
    @JsonProperty(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY)
    private String state;
    @JsonProperty("street")
    private String street;
    @JsonProperty("zip")
    private String zip;

    public String getCity() {
        return this.city;
    }

    public String getCountry() {
        return this.country;
    }

    public Double getLatitude() {
        return this.latitude;
    }

    public String getLocatedIn() {
        return this.locatedIn;
    }

    public Double getLongitude() {
        return this.longitude;
    }

    public String getName() {
        return this.name;
    }

    public String getRegion() {
        return this.region;
    }

    public String getState() {
        return this.state;
    }

    public String getStreet() {
        return this.street;
    }

    public String getZip() {
        return this.zip;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public void setLatitude(Double d) {
        this.latitude = d;
    }

    public void setLocatedIn(String str) {
        this.locatedIn = str;
    }

    public void setLongitude(Double d) {
        this.longitude = d;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setRegion(String str) {
        this.region = str;
    }

    public void setState(String str) {
        this.state = str;
    }

    public void setStreet(String str) {
        this.street = str;
    }

    public void setZip(String str) {
        this.zip = str;
    }
}
