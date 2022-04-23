package com.facebook.share.internal;

import com.facebook.internal.b.b.a;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.SharePhoto;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/OpenGraphJSONUtility.class */
public final class OpenGraphJSONUtility {

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor.class */
    public interface PhotoJSONProcessor {
        JSONObject toJSONObject(SharePhoto sharePhoto);
    }

    private OpenGraphJSONUtility() {
    }

    private static JSONArray toJSONArray(List list, PhotoJSONProcessor photoJSONProcessor) throws JSONException {
        if (a.a(OpenGraphJSONUtility.class)) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray();
            for (Object obj : list) {
                jSONArray.put(toJSONValue(obj, photoJSONProcessor));
            }
            return jSONArray;
        } catch (Throwable th) {
            a.a(th, OpenGraphJSONUtility.class);
            return null;
        }
    }

    public static JSONObject toJSONObject(ShareOpenGraphAction shareOpenGraphAction, PhotoJSONProcessor photoJSONProcessor) throws JSONException {
        if (a.a(OpenGraphJSONUtility.class)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : shareOpenGraphAction.keySet()) {
                jSONObject.put(str, toJSONValue(shareOpenGraphAction.get(str), photoJSONProcessor));
            }
            return jSONObject;
        } catch (Throwable th) {
            a.a(th, OpenGraphJSONUtility.class);
            return null;
        }
    }

    private static JSONObject toJSONObject(ShareOpenGraphObject shareOpenGraphObject, PhotoJSONProcessor photoJSONProcessor) throws JSONException {
        if (a.a(OpenGraphJSONUtility.class)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : shareOpenGraphObject.keySet()) {
                jSONObject.put(str, toJSONValue(shareOpenGraphObject.get(str), photoJSONProcessor));
            }
            return jSONObject;
        } catch (Throwable th) {
            a.a(th, OpenGraphJSONUtility.class);
            return null;
        }
    }

    public static Object toJSONValue(Object obj, PhotoJSONProcessor photoJSONProcessor) throws JSONException {
        if (a.a(OpenGraphJSONUtility.class)) {
            return null;
        }
        try {
            if (obj == null) {
                return JSONObject.NULL;
            }
            if (!(obj instanceof String) && !(obj instanceof Boolean) && !(obj instanceof Double) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Long)) {
                if (obj instanceof SharePhoto) {
                    if (photoJSONProcessor != null) {
                        return photoJSONProcessor.toJSONObject((SharePhoto) obj);
                    }
                    return null;
                } else if (obj instanceof ShareOpenGraphObject) {
                    return toJSONObject((ShareOpenGraphObject) obj, photoJSONProcessor);
                } else {
                    if (obj instanceof List) {
                        return toJSONArray((List) obj, photoJSONProcessor);
                    }
                    throw new IllegalArgumentException("Invalid object found for JSON serialization: " + obj.toString());
                }
            }
            return obj;
        } catch (Throwable th) {
            a.a(th, OpenGraphJSONUtility.class);
            return null;
        }
    }
}
