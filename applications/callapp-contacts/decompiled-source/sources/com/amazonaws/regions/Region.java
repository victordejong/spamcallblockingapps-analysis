package com.amazonaws.regions;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/regions/Region.class */
public final class Region {

    /* renamed from: a  reason: collision with root package name */
    public final String f6757a;

    /* renamed from: b  reason: collision with root package name */
    public final String f6758b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, String> f6759c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    final Map<String, Boolean> f6760d = new HashMap();
    final Map<String, Boolean> e = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public Region(String str, String str2) {
        this.f6757a = str;
        if (str2 == null || str2.isEmpty()) {
            this.f6758b = "amazonaws.com";
        } else {
            this.f6758b = str2;
        }
    }

    public static Region a(Regions regions) {
        return RegionUtils.a(regions.getName());
    }

    public static Region a(String str) {
        return RegionUtils.a(str);
    }

    public final String b(String str) {
        return this.f6759c.get(str);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Region)) {
            return false;
        }
        return this.f6757a.equals(((Region) obj).f6757a);
    }

    public final int hashCode() {
        return this.f6757a.hashCode();
    }

    public final String toString() {
        return this.f6757a;
    }
}
