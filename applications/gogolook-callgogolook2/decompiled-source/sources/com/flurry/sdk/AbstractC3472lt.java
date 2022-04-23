package com.flurry.sdk;
/* renamed from: com.flurry.sdk.lt */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/lt.class */
public interface AbstractC3472lt {

    /* renamed from: com.flurry.sdk.lt$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/lt$a.class */
    public enum EnumC3473a {
        SDK_NAME("sdk_name"),
        SDK_VERSION("sdk_ver"),
        APP_ID("ym_src"),
        API_KEY("ym_key"),
        AD_TYPE("ym_atype"),
        CREATIVE_TYPE("ym_cc"),
        AD_ID("ym_adid"),
        ADUNIT_ID("ym_adu"),
        STATUS_CODE("ym_code"),
        STATUS_VALUE("ym_value"),
        URL("ym_url"),
        REQUEST_ID("ym_rid"),
        AD_TEMPLATE("ym_tmpl"),
        AD_UNIT_DISPLAY_TYPE("ym_audt"),
        AD_INVENTORY_SOURCE_ID("ym_ivsrc"),
        AD_MEDIA_TYPE("ym_mtype");
        

        /* renamed from: q */
        public final String f5974q;

        EnumC3473a(String str) {
            this.f5974q = str;
        }
    }

    /* renamed from: com.flurry.sdk.lt$b */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/lt$b.class */
    public enum EnumC3474b {
        BEACON_ERROR_CODE("beaconErrorCode"),
        DELTA_ON_CLICK("deltaOnClick"),
        DIALER_URL("dialerUrl"),
        URL("url");
        

        /* renamed from: e */
        public final String f5980e;

        EnumC3474b(String str) {
            this.f5980e = str;
        }
    }

    /* renamed from: a */
    String m32384a();

    /* renamed from: b */
    String m32383b();

    /* renamed from: c */
    String m32382c();

    /* renamed from: d */
    String m32381d();
}
