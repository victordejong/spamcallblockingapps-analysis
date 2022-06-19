package com.bytedance.sdk.openadsdk;

import com.bytedance.sdk.openadsdk.core.C4570g;
import com.bytedance.sdk.openadsdk.core.C4590i;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.mopub.mobileads.PangleAdapterConfiguration;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTSecAbs.class */
public abstract class TTSecAbs {
    public String NM_getAppKey() {
        return "911f060a-e7b9-40d3-ae95-e5fa5d32a312";
    }

    public Map<String, Object> NM_getCustomInfo() {
        if (C4570g.m35020b().m35012d() != null) {
            HashMap hashMap = new HashMap();
            hashMap.put(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, C4570g.m35020b().m35012d());
            return hashMap;
        }
        return null;
    }

    public String NM_getDeviceId() {
        return C4590i.m34846a(C4600n.m34815a());
    }

    public String NM_getInstallId() {
        return null;
    }

    public abstract String NM_pullSg();

    public abstract String NM_pullVer(String str);

    public abstract void NM_reportNow(String str);

    public abstract void NM_setParams(String str);
}
