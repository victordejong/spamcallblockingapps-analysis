package com.razorpay;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/razorpay/RzpTokenReceiver.class */
public class RzpTokenReceiver extends BroadcastReceiver {
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0071 -> B:9:0x003f). Please submit an issue!!! */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String m36081b = f$_G$.m36081b(context);
        if (!TextUtils.isEmpty(m36081b)) {
            Bundle resultExtras = getResultExtras(true);
            JSONArray jSONArray = new JSONArray();
            JSONArray jSONArray2 = jSONArray;
            if (resultExtras != null) {
                String string = resultExtras.getString("device_token_info_list");
                jSONArray2 = jSONArray;
                if (string != null) {
                    try {
                        jSONArray2 = new JSONArray(string);
                    } catch (Exception e) {
                        jSONArray2 = jSONArray;
                    }
                }
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("rzp_device_token", m36081b);
                jSONObject.put("card_saving_token_source", context.getPackageName());
                jSONArray2.put(jSONObject);
            } catch (Throwable th) {
            }
            resultExtras.putString("device_token_info_list", jSONArray2.toString());
        }
    }
}
