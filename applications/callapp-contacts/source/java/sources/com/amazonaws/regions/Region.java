package com.amazonaws.regions;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/regions/Region.class */
public final class Region {

    /* renamed from: a */
    public final String f12268a;

    /* renamed from: b */
    public final String f12269b;

    /* renamed from: c */
    public final Map<String, String> f12270c = new HashMap();

    /* renamed from: d */
    final Map<String, Boolean> f12271d = new HashMap();

    /* renamed from: e */
    final Map<String, Boolean> f12272e = new HashMap();

    public Region(String str, String str2) {
        this.f12268a = str;
        if (str2 == null || str2.isEmpty()) {
            this.f12269b = "amazonaws.com";
        } else {
            this.f12269b = str2;
        }
    }

    /* renamed from: a */
    public static Region m38508a(Regions regions) {
        return RegionUtils.m38498a(regions.getName());
    }

    /* renamed from: a */
    public static Region m38507a(String str) {
        return RegionUtils.m38498a(str);
    }

    /* renamed from: b */
    public final String m38506b(String str) {
        return this.f12270c.get(str);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Region)) {
            return false;
        }
        return this.f12268a.equals(((Region) obj).f12268a);
    }

    public final int hashCode() {
        return this.f12268a.hashCode();
    }

    public final String toString() {
        return this.f12268a;
    }
}
