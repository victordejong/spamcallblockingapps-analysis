package com.verizon.ads;

import android.content.Context;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/ComponentFactory.class */
public interface ComponentFactory {
    Component newInstance(Context context, JSONObject jSONObject, Object... objArr);
}
