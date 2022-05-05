package com.airbnb.lottie.model;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/Marker.class */
public class Marker {

    /* renamed from: d */
    private static String f6083d = "\r";

    /* renamed from: a */
    private final String f6084a;

    /* renamed from: b */
    public final float f6085b;

    /* renamed from: c */
    public final float f6086c;

    public Marker(String str, float f, float f2) {
        this.f6084a = str;
        this.f6086c = f2;
        this.f6085b = f;
    }

    /* renamed from: a */
    public boolean m16077a(String str) {
        if (this.f6084a.equalsIgnoreCase(str)) {
            return true;
        }
        if (!this.f6084a.endsWith(f6083d)) {
            return false;
        }
        String str2 = this.f6084a;
        return str2.substring(0, str2.length() - 1).equalsIgnoreCase(str);
    }
}
