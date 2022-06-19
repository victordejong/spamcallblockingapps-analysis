package com.callapp.contacts.activity.calllog.stickyBanner;

import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.core.type.TypeReference;
import java.util.List;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/stickyBanner/JSONStickyDataObject.class */
public class JSONStickyDataObject {
    @JsonProperty("JsonStickyData")
    private List<JsonStickyData> jsonStickyData;

    public static List<JsonStickyData> getDataFromRemoteConfig(String str) {
        String m28703a = CallAppRemoteConfigManager.get().m28703a(str);
        if (StringUtils.m26045b((CharSequence) m28703a)) {
            try {
                JSONStickyDataObject jSONStickyDataObject = (JSONStickyDataObject) Parser.m26917a(m28703a, new TypeReference<JSONStickyDataObject>() { // from class: com.callapp.contacts.activity.calllog.stickyBanner.JSONStickyDataObject.1
                });
                if (jSONStickyDataObject == null) {
                    return null;
                }
                return jSONStickyDataObject.getJsonStickyData();
            } catch (Exception e) {
                return null;
            }
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return Objects.equals(this.jsonStickyData, ((JSONStickyDataObject) obj).jsonStickyData);
        }
        return false;
    }

    public List<JsonStickyData> getJsonStickyData() {
        return this.jsonStickyData;
    }

    public int hashCode() {
        return Objects.hash(this.jsonStickyData);
    }
}
