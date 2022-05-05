package com.apptentive.android.sdk.migration.v4_0_0;

import com.apptentive.android.sdk.Apptentive;
import com.apptentive.android.sdk.storage.EventRecord;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/migration/v4_0_0/CodePointStore.class */
public class CodePointStore {
    private JSONObject store;

    public CodePointStore(String str) throws JSONException {
        this.store = new JSONObject(str);
    }

    public Map<String, EventRecord> migrateCodePoints() throws JSONException {
        return migrateRecords(false);
    }

    public Map<String, EventRecord> migrateInteractions() throws JSONException {
        return migrateRecords(true);
    }

    public Map<String, EventRecord> migrateRecords(boolean z) throws JSONException {
        JSONObject optJSONObject = this.store.optJSONObject(z ? "interactions" : "code_point");
        if (optJSONObject == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        Iterator<String> keys = optJSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONObject jSONObject = optJSONObject.getJSONObject(next);
            EventRecord eventRecord = new EventRecord();
            eventRecord.setLast(jSONObject.getDouble("last"));
            eventRecord.setTotal(jSONObject.getLong("total"));
            HashMap hashMap2 = new HashMap();
            JSONObject jSONObject2 = jSONObject.getJSONObject("build");
            if (jSONObject2 != null) {
                Iterator<String> keys2 = jSONObject2.keys();
                if (keys2 != null) {
                    while (keys2.hasNext()) {
                        String next2 = keys2.next();
                        hashMap2.put(Integer.valueOf(Integer.parseInt(next2)), Long.valueOf(jSONObject2.getLong(next2)));
                    }
                }
                eventRecord.setVersionCodes(hashMap2);
            }
            HashMap hashMap3 = new HashMap();
            JSONObject jSONObject3 = jSONObject.getJSONObject(Apptentive.Version.TYPE);
            if (jSONObject3 != null) {
                Iterator<String> keys3 = jSONObject3.keys();
                if (keys3 != null) {
                    while (keys3.hasNext()) {
                        String next3 = keys3.next();
                        hashMap3.put(next3, Long.valueOf(jSONObject3.getLong(next3)));
                    }
                }
                eventRecord.setVersionNames(hashMap3);
            }
            hashMap.put(next, eventRecord);
        }
        return hashMap;
    }
}
