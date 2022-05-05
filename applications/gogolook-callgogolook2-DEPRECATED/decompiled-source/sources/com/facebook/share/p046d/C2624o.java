package com.facebook.share.p046d;

import androidx.annotation.Nullable;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.SharePhoto;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.share.d.o */
/* loaded from: classes-dex2jar.jar:com/facebook/share/d/o.class */
public final class C2624o {

    /* renamed from: com.facebook.share.d.o$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/o$a.class */
    public interface AbstractC2625a {
        /* renamed from: a */
        JSONObject mo34027a(SharePhoto sharePhoto);
    }

    /* renamed from: a */
    public static Object m34130a(@Nullable Object obj, AbstractC2625a aVar) throws JSONException {
        if (obj == null) {
            return JSONObject.NULL;
        }
        if ((obj instanceof String) || (obj instanceof Boolean) || (obj instanceof Double) || (obj instanceof Float) || (obj instanceof Integer) || (obj instanceof Long)) {
            return obj;
        }
        if (obj instanceof SharePhoto) {
            if (aVar != null) {
                return aVar.mo34027a((SharePhoto) obj);
            }
            return null;
        } else if (obj instanceof ShareOpenGraphObject) {
            return m34131a((ShareOpenGraphObject) obj, aVar);
        } else {
            if (obj instanceof List) {
                return m34129a((List) obj, aVar);
            }
            throw new IllegalArgumentException("Invalid object found for JSON serialization: " + obj.toString());
        }
    }

    /* renamed from: a */
    public static JSONArray m34129a(List list, AbstractC2625a aVar) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (Object obj : list) {
            jSONArray.put(m34130a(obj, aVar));
        }
        return jSONArray;
    }

    /* renamed from: a */
    public static JSONObject m34132a(ShareOpenGraphAction shareOpenGraphAction, AbstractC2625a aVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : shareOpenGraphAction.m33859b()) {
            jSONObject.put(str, m34130a(shareOpenGraphAction.m33860a(str), aVar));
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static JSONObject m34131a(ShareOpenGraphObject shareOpenGraphObject, AbstractC2625a aVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : shareOpenGraphObject.m33859b()) {
            jSONObject.put(str, m34130a(shareOpenGraphObject.m33860a(str), aVar));
        }
        return jSONObject;
    }
}
