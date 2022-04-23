package com.amazonaws.regions;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/regions/Region.class */
public final class Region {
    public final String domain;
    public final String name;
    public final Map<String, String> serviceEndpoints = new HashMap();
    public final Map<String, Boolean> httpSupport = new HashMap();
    public final Map<String, Boolean> httpsSupport = new HashMap();

    public Region(String str, String str2) {
        this.name = str;
        if (str2 == null || str2.isEmpty()) {
            this.domain = "amazonaws.com";
        } else {
            this.domain = str2;
        }
    }

    public static Region getRegion(Regions regions) {
        return RegionUtils.getRegion(regions.getName());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Region)) {
            return false;
        }
        return getName().equals(((Region) obj).getName());
    }

    public String getDomain() {
        return this.domain;
    }

    public Map<String, Boolean> getHttpSupport() {
        return this.httpSupport;
    }

    public Map<String, Boolean> getHttpsSupport() {
        return this.httpsSupport;
    }

    public String getName() {
        return this.name;
    }

    public String getServiceEndpoint(String str) {
        return this.serviceEndpoints.get(str);
    }

    public Map<String, String> getServiceEndpoints() {
        return this.serviceEndpoints;
    }

    public int hashCode() {
        return getName().hashCode();
    }

    public boolean isServiceSupported(String str) {
        return this.serviceEndpoints.containsKey(str);
    }

    public String toString() {
        return getName();
    }
}
