package com.facebook.appevents.p026i0.p027n;

import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONObject;
import s1.z.c.l;
@Metadata(d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\u0018�� \u00122\u00020\u0001:\u0001\u0012B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\bR\u0011\u0010\u0010\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/facebook/appevents/codeless/internal/ParameterComponent;", "", "component", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)V", AnalyticsConstants.NAME, "", "getName", "()Ljava/lang/String;", "path", "", "Lcom/facebook/appevents/codeless/internal/PathComponent;", "getPath", "()Ljava/util/List;", "pathType", "getPathType", "value", "getValue", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.i0.n.b */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/n/b.class */
public final class C0996b {

    /* renamed from: a */
    public final String f2742a;

    /* renamed from: b */
    public final String f2743b;

    /* renamed from: c */
    public final List<C0997c> f2744c;

    /* renamed from: d */
    public final String f2745d;

    public C0996b(JSONObject jSONObject) {
        l.e(jSONObject, "component");
        String string = jSONObject.getString(AnalyticsConstants.NAME);
        l.d(string, "component.getString(PARAMETER_NAME_KEY)");
        this.f2742a = string;
        String optString = jSONObject.optString("value");
        l.d(optString, "component.optString(PARAMETER_VALUE_KEY)");
        this.f2743b = optString;
        String optString2 = jSONObject.optString("path_type", "absolute");
        l.d(optString2, "component.optString(Constants.EVENT_MAPPING_PATH_TYPE_KEY, Constants.PATH_TYPE_ABSOLUTE)");
        this.f2745d = optString2;
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("path");
        if (optJSONArray != null) {
            int i = 0;
            int length = optJSONArray.length();
            if (length > 0) {
                while (true) {
                    int i2 = i + 1;
                    JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                    l.d(jSONObject2, "jsonPathArray.getJSONObject(i)");
                    arrayList.add(new C0997c(jSONObject2));
                    if (i2 >= length) {
                        break;
                    }
                    i = i2;
                }
            }
        }
        this.f2744c = arrayList;
    }
}
