package com.verizon.ads.verizonnativecontroller;

import com.verizon.ads.AdContent;
import com.verizon.ads.AdSession;
import com.verizon.ads.Component;
import com.verizon.ads.ComponentRegistry;
import com.verizon.ads.ErrorInfo;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeController.class */
public class VerizonNativeController {
    public static final int ERROR_INCORRECT_COMPONENT_TYPE = -2;
    public static final int ERROR_VNAPS_RESPONSE_ERROR = -1;

    /* renamed from: a  reason: collision with root package name */
    private static final String f35746a = "com.verizon.ads.verizonnativecontroller.VerizonNativeController";

    /* renamed from: b  reason: collision with root package name */
    private VerizonNativeAd f35747b;

    public static boolean accepts(AdContent adContent) {
        if (adContent == null || adContent.getContent() == null) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(adContent.getContent());
            int i = jSONObject.getInt("ver");
            if (i <= 0) {
                return false;
            }
            int i2 = jSONObject.getInt("rev");
            if ((i != 1 || i2 >= 0) && jSONObject.getJSONObject("adInfo") != null) {
                return jSONObject.getJSONObject("components") != null;
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    public VerizonNativeAd getVerizonNativeAd() {
        return this.f35747b;
    }

    public ErrorInfo prepare(AdSession adSession, AdContent adContent) {
        if (adContent == null || adContent.getContent() == null) {
            return new ErrorInfo(f35746a, "Ad content was null.", -1);
        }
        try {
            Component component = ComponentRegistry.getComponent(VerizonNativeAd.CONTENT_TYPE, null, new JSONObject(adContent.getContent()), adSession);
            if (component == null) {
                return new ErrorInfo(f35746a, "Error creating VerizonNativeAd from VNAPS response.", -1);
            }
            if (!(component instanceof VerizonNativeAd)) {
                return new ErrorInfo(f35746a, "Expected Verizon Native Ad Component for type verizon/nativeAd", -2);
            }
            this.f35747b = (VerizonNativeAd) component;
            return null;
        } catch (JSONException e) {
            return new ErrorInfo(f35746a, "Error Parsing Verizon Native Ad Response", -1);
        }
    }
}
