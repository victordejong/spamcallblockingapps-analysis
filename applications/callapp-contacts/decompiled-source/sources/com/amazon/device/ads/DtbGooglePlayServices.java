package com.amazon.device.ads;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbGooglePlayServices.class */
class DtbGooglePlayServices {

    /* renamed from: a  reason: collision with root package name */
    static final String f6482a = "DtbGooglePlayServices";

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo.class */
    static class AdvertisingInfo {

        /* renamed from: a  reason: collision with root package name */
        boolean f6483a = true;

        /* renamed from: b  reason: collision with root package name */
        String f6484b;

        /* renamed from: c  reason: collision with root package name */
        Boolean f6485c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public static AdvertisingInfo a() {
            AdvertisingInfo advertisingInfo = new AdvertisingInfo();
            advertisingInfo.f6483a = false;
            return advertisingInfo;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean b() {
            return this.f6484b != null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(boolean z) {
        DtbSharedPreferences.c();
        DtbSharedPreferences.d(!z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        DtbSharedPreferences.c();
        return !DtbSharedPreferences.i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b() {
        return DtbCommonUtils.a("com.google.android.gms.ads.identifier.AdvertisingIdClient");
    }
}
