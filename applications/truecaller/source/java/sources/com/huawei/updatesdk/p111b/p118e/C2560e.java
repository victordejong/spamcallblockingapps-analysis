package com.huawei.updatesdk.p111b.p118e;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.updatesdk.p097a.p098a.C2511a;
import com.tenor.android.core.constant.StringConstant;
import java.io.InputStream;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.huawei.updatesdk.b.e.e */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/e/e.class */
public class C2560e {
    /* renamed from: a */
    private static String m36619a(Context context, String str) {
        InputStream open = context.getAssets().open(str);
        byte[] bArr = new byte[open.available()];
        int read = open.read(bArr);
        C2511a.m36862b("JsonPareUrl", "loadJSONFromAsset code: " + read);
        open.close();
        return new String(bArr, StringConstant.UTF8);
    }

    /* renamed from: b */
    public static String m36618b(Context context, String str) {
        String str2;
        String str3 = "";
        try {
            int i = 0;
            JSONArray jSONArray = new JSONObject(m36619a(context, str)).getJSONArray("services").getJSONObject(0).getJSONArray("servings");
            String str4 = "";
            while (true) {
                String str5 = str4;
                str3 = str5;
                str2 = str5;
                if (i >= jSONArray.length()) {
                    break;
                }
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String str6 = str5;
                if (TextUtils.equals("DR3", jSONObject.getString("countryOrAreaGroup"))) {
                    str6 = jSONObject.getJSONObject("addresses").getString("ROOT");
                }
                i++;
                str4 = str6;
            }
        } catch (Exception e) {
            C2511a.m36863a("JsonPareUrl", "Failed to obtain the default url.");
            str2 = str3;
        }
        return str2;
    }
}
