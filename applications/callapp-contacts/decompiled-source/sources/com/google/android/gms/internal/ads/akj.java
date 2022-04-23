package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/akj.class */
public final class akj {
    public static JSONObject a(cov covVar) {
        try {
            return new JSONObject(covVar.y);
        } catch (JSONException e) {
            return null;
        }
    }
}
