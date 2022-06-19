package com.callapp.contacts.util;

import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.analytics.AbTestUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.JSONExperiment;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.core.type.TypeReference;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/JSONGroupTypePreference.class */
public class JSONGroupTypePreference {
    public static JSONGroupType getGroupTypePreference(String str) {
        JSONGroupType jSONGroupType;
        String m28703a = StringUtils.m26045b((CharSequence) str) ? CallAppRemoteConfigManager.get().m28703a(str) : null;
        if (StringUtils.m26045b((CharSequence) m28703a)) {
            try {
                JSONExperiment jSONExperiment = (JSONExperiment) Parser.m26917a(m28703a, new TypeReference<JSONExperiment<JSONGroupType>>() { // from class: com.callapp.contacts.util.JSONGroupTypePreference.1
                });
                if (jSONExperiment == null || !CollectionUtils.m26068b(jSONExperiment.getExperiments())) {
                    return null;
                }
                int groupDimension = AbTestUtils.getGroupDimension();
                Iterator it2 = jSONExperiment.getExperiments().iterator();
                do {
                    if (!it2.hasNext()) {
                        return null;
                    }
                    jSONGroupType = (JSONGroupType) it2.next();
                } while (groupDimension != jSONGroupType.getGroup());
                return jSONGroupType;
            } catch (Exception e) {
                CLog.m27609a(AdUtils.class, e);
                return null;
            }
        }
        return null;
    }
}
