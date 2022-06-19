package com.callapp.contacts.manager.preferences.prefs;

import com.callapp.common.model.json.JSONDate;
import com.callapp.contacts.manager.preferences.BasePref;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/prefs/JSONDatePref.class */
public class JSONDatePref extends BasePref<JSONDate> {
    private static final int MAX_LOG_JSONDATE = 200;
    private ObjectMapper jsonObjectMapper = new ObjectMapper();

    public JSONDatePref(String str) {
        super(str);
    }

    public JSONDatePref(String str, JSONDate jSONDate) {
        super(str, jSONDate);
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public JSONDate stringToValue(String str) {
        if (StringUtils.m26059a((CharSequence) str)) {
            return null;
        }
        try {
            return (JSONDate) this.jsonObjectMapper.readValue(str, JSONDate.class);
        } catch (IOException e) {
            Class<?> cls = getClass();
            CLog.m27611a(cls, "Unable to serialize JSONDate: " + str.substring(0, 200));
            return null;
        }
    }

    public String valueToString(JSONDate jSONDate) {
        if (jSONDate == null) {
            return null;
        }
        try {
            return this.jsonObjectMapper.writeValueAsString(jSONDate);
        } catch (Exception e) {
            Class<?> cls = getClass();
            CLog.m27611a(cls, "Unable to deserialize JSONDate: " + jSONDate.toString().substring(0, 200));
            return null;
        }
    }
}
