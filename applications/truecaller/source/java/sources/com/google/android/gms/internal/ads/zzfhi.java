package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.view.WindowManager;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfhi.class */
public final class zzfhi {
    private static WindowManager zzb;
    private static final String[] zzc = {"x", "y", "width", "height"};
    public static float zza = Resources.getSystem().getDisplayMetrics().density;

    public static void zza(Context context) {
        if (context != null) {
            zza = context.getResources().getDisplayMetrics().density;
            zzb = (WindowManager) context.getSystemService("window");
        }
    }

    public static JSONObject zzb(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", i / zza);
            jSONObject.put("y", i2 / zza);
            jSONObject.put("width", i3 / zza);
            jSONObject.put("height", i4 / zza);
        } catch (JSONException e) {
            zzfhj.zza("Error with creating viewStateObject", e);
        }
        return jSONObject;
    }

    public static void zzc(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 47);
            sb.append("JSONException during JSONObject.put for name [");
            sb.append(str);
            sb.append("]");
            zzfhj.zza(sb.toString(), e);
        }
    }

    public static void zzd(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("adSessionId", str);
        } catch (JSONException e) {
            zzfhj.zza("Error with setting ad session id", e);
        }
    }

    public static void zze(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("notVisibleReason", str);
        } catch (JSONException e) {
            zzfhj.zza("Error with setting not visible reason", e);
        }
    }

    public static void zzf(JSONObject jSONObject, zzfhm zzfhmVar) {
        zzfgu zzb2 = zzfhmVar.zzb();
        JSONArray jSONArray = new JSONArray();
        ArrayList<String> zzc2 = zzfhmVar.zzc();
        int size = zzc2.size();
        for (int i = 0; i < size; i++) {
            jSONArray.put(zzc2.get(i));
        }
        try {
            jSONObject.put("isFriendlyObstructionFor", jSONArray);
            jSONObject.put("friendlyObstructionClass", zzb2.zzb());
            jSONObject.put("friendlyObstructionPurpose", zzb2.zzc());
            jSONObject.put("friendlyObstructionReason", zzb2.zzd());
        } catch (JSONException e) {
            zzfhj.zza("Error with setting friendly obstruction", e);
        }
    }

    public static void zzg(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
            JSONArray jSONArray = optJSONArray;
            if (optJSONArray == null) {
                jSONArray = new JSONArray();
                jSONObject.put("childViews", jSONArray);
            }
            jSONArray.put(jSONObject2);
        } catch (JSONException e) {
            zzged.zzb(e);
        }
    }

    public static void zzh(JSONObject jSONObject) {
        float f;
        float f2 = 0.0f;
        if (zzb != null) {
            Point point = new Point(0, 0);
            zzb.getDefaultDisplay().getRealSize(point);
            float f3 = point.x;
            float f4 = zza;
            f2 = f3 / f4;
            f = point.y / f4;
        } else {
            f = 0.0f;
        }
        try {
            jSONObject.put("width", f2);
            jSONObject.put("height", f);
        } catch (JSONException e) {
            zzged.zzb(e);
        }
    }

    public static boolean zzi(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null && jSONObject2 == null) {
            return true;
        }
        if (jSONObject == null || jSONObject2 == null) {
            return false;
        }
        String[] strArr = zzc;
        for (int i = 0; i < 4; i++) {
            String str = strArr[i];
            if (jSONObject.optDouble(str) != jSONObject2.optDouble(str)) {
                return false;
            }
        }
        if (!jSONObject.optString("adSessionId", "").equals(jSONObject2.optString("adSessionId", ""))) {
            return false;
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("isFriendlyObstructionFor");
        JSONArray optJSONArray2 = jSONObject2.optJSONArray("isFriendlyObstructionFor");
        if (optJSONArray != null || optJSONArray2 != null) {
            if (!zzj(optJSONArray, optJSONArray2)) {
                return false;
            }
            for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                if (!optJSONArray.optString(i2, "").equals(optJSONArray2.optString(i2, ""))) {
                    return false;
                }
            }
        }
        JSONArray optJSONArray3 = jSONObject.optJSONArray("childViews");
        JSONArray optJSONArray4 = jSONObject2.optJSONArray("childViews");
        if (optJSONArray3 == null && optJSONArray4 == null) {
            return true;
        }
        if (!zzj(optJSONArray3, optJSONArray4)) {
            return false;
        }
        for (int i3 = 0; i3 < optJSONArray3.length(); i3++) {
            if (!zzi(optJSONArray3.optJSONObject(i3), optJSONArray4.optJSONObject(i3))) {
                return false;
            }
        }
        return true;
    }

    private static boolean zzj(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        return (jSONArray == null || jSONArray2 == null || jSONArray.length() != jSONArray2.length()) ? false : true;
    }
}
