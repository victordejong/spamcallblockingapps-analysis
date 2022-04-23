package com.bytedance.sdk.openadsdk;

import com.bytedance.sdk.openadsdk.core.g;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.mopub.mobileads.PangleAdapterConfiguration;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTSecAbs.class */
public abstract class TTSecAbs {
    public String NM_getAppKey() {
        return "911f060a-e7b9-40d3-ae95-e5fa5d32a312";
    }

    public Map<String, Object> NM_getCustomInfo() {
        if (g.b().d() == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, g.b().d());
        return hashMap;
    }

    public String NM_getDeviceId() {
        return i.a(n.a());
    }

    public String NM_getInstallId() {
        return null;
    }

    public abstract String NM_pullSg();

    public abstract String NM_pullVer(String str);

    public abstract void NM_reportNow(String str);

    public abstract void NM_setParams(String str);
}
