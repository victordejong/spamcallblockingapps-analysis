package com.amazon.device.ads;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbGooglePlayServices.class */
class DtbGooglePlayServices {

    /* renamed from: a */
    static final String f11878a = "DtbGooglePlayServices";

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo.class */
    static class AdvertisingInfo {

        /* renamed from: a */
        boolean f11879a = true;

        /* renamed from: b */
        String f11880b;

        /* renamed from: c */
        Boolean f11881c;

        /* renamed from: a */
        public static AdvertisingInfo m38840a() {
            AdvertisingInfo advertisingInfo = new AdvertisingInfo();
            advertisingInfo.f11879a = false;
            return advertisingInfo;
        }

        /* renamed from: b */
        public final boolean m38839b() {
            return this.f11880b != null;
        }
    }

    /* renamed from: a */
    public static void m38842a(boolean z) {
        DtbSharedPreferences.m38797c();
        DtbSharedPreferences.m38790d(!z);
    }

    /* renamed from: a */
    public static boolean m38843a() {
        DtbSharedPreferences.m38797c();
        return !DtbSharedPreferences.m38780i();
    }

    /* renamed from: b */
    public static boolean m38841b() {
        return DtbCommonUtils.m38894a("com.google.android.gms.ads.identifier.AdvertisingIdClient");
    }
}
