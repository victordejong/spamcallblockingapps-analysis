package com.razorpay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import org.json.JSONObject;
import proguard.annotation.Keep;
import proguard.annotation.KeepClassMembers;
@Keep
@KeepClassMembers
/* loaded from: classes3-dex2jar.jar:com/razorpay/RzpPlugin.class */
public interface RzpPlugin {
    boolean doesHandlePayload(String str, JSONObject jSONObject, Activity activity);

    RzpPluginCompatibilityResponse isCompatible(String str, int i, String str2);

    @Deprecated
    void isRegistered(Context context);

    void isRegistered(Context context, RzpPluginRegisterCallback rzpPluginRegisterCallback);

    void onActivityResult(String str, int i, int i2, Intent intent);

    void processPayment(String str, JSONObject jSONObject, Activity activity, RzpInternalCallback rzpInternalCallback);
}
