package com.huawei.hms.framework.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/common/PLSharedPreferences.class */
public class PLSharedPreferences {
    private static final String MOVE_TO_DE_RECORDS = "grs_move2DE_records";
    private static final String TAG = "PLSharedPreferences";

    /* renamed from: sp */
    private final SharedPreferences f7367sp;

    public PLSharedPreferences(Context context, String str) {
        this.f7367sp = getSharedPreferences(context, str);
    }

    private SharedPreferences getSharedPreferences(Context context, String str) {
        if (context == null) {
            Logger.m38047e(TAG, "context is null, must call init method to set context");
            return null;
        }
        Context context2 = context;
        if (Build.VERSION.SDK_INT >= 24) {
            context2 = context.createDeviceProtectedStorageContext();
            SharedPreferences sharedPreferences = context2.getSharedPreferences(MOVE_TO_DE_RECORDS, 0);
            if (!sharedPreferences.getBoolean(str, false)) {
                if (!context2.moveSharedPreferencesFrom(context, str)) {
                    context2 = context;
                } else {
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putBoolean(str, true);
                    edit.apply();
                }
            }
        }
        return context2.getSharedPreferences(str, 0);
    }

    public void clear() {
        SharedPreferences sharedPreferences = this.f7367sp;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().clear().apply();
    }

    public SharedPreferences.Editor edit() {
        SharedPreferences sharedPreferences = this.f7367sp;
        if (sharedPreferences == null) {
            return null;
        }
        return sharedPreferences.edit();
    }

    public Map<String, ?> getAll() {
        SharedPreferences sharedPreferences = this.f7367sp;
        if (sharedPreferences == null) {
            return null;
        }
        Map<String, ?> all = sharedPreferences.getAll();
        StringBuilder m8728C = C22128a.m8728C("sp size ");
        m8728C.append(all == null ? 0 : all.size());
        Logger.m38044i(TAG, m8728C.toString());
        return all;
    }

    public Map<String, String> getHashMap(String str) {
        HashMap hashMap = new HashMap();
        SharedPreferences sharedPreferences = this.f7367sp;
        if (sharedPreferences == null) {
            return hashMap;
        }
        try {
            JSONArray jSONArray = new JSONArray(sharedPreferences.getString(str, ""));
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                JSONArray names = jSONObject.names();
                if (names != null) {
                    for (int i2 = 0; i2 < names.length(); i2++) {
                        String string = names.getString(i2);
                        hashMap.put(string, jSONObject.getString(string));
                    }
                }
            }
        } catch (JSONException e) {
            Logger.m38038w(TAG, "getHashMap parse Json to map error: %s", StringUtils.anonymizeMessage(e.getMessage()));
        }
        return hashMap;
    }

    public long getLong(String str, long j) {
        SharedPreferences sharedPreferences = this.f7367sp;
        return sharedPreferences == null ? j : sharedPreferences.getLong(str, j);
    }

    public String getString(String str) {
        return getString(str, "");
    }

    public String getString(String str, String str2) {
        SharedPreferences sharedPreferences = this.f7367sp;
        return sharedPreferences == null ? str2 : sharedPreferences.getString(str, str2);
    }

    public void putHashMap(String str, Map<String, String> map) {
        if (this.f7367sp == null || map == null) {
            return;
        }
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            try {
                jSONObject.put(entry.getKey(), entry.getValue());
            } catch (JSONException e) {
                Logger.m38038w(TAG, "putHashMap one object error: %s", StringUtils.anonymizeMessage(e.getMessage()));
            }
        }
        jSONArray.put(jSONObject);
        this.f7367sp.edit().putString(str, jSONArray.toString()).apply();
    }

    public void putLong(String str, long j) {
        SharedPreferences sharedPreferences = this.f7367sp;
        if (sharedPreferences == null) {
            return;
        }
        C22128a.m8589o0(sharedPreferences, str, j);
    }

    public void putString(String str, String str2) {
        SharedPreferences sharedPreferences = this.f7367sp;
        if (sharedPreferences == null) {
            return;
        }
        C22128a.m8585p0(sharedPreferences, str, str2);
    }

    public void remove(String str) {
        SharedPreferences sharedPreferences = this.f7367sp;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().remove(str).apply();
    }

    public void removeKeyValue(String str) {
        SharedPreferences sharedPreferences = this.f7367sp;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().remove(str).apply();
    }
}
