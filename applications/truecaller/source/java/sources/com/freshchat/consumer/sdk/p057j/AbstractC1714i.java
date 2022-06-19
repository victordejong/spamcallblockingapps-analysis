package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.freshchat.consumer.sdk.p047b.SharedPreferencesC1469h;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.freshchat.consumer.sdk.j.i */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/i.class */
public abstract class AbstractC1714i<T> {

    /* renamed from: hy */
    private SharedPreferencesC1469h f4513hy;

    /* renamed from: jh */
    private Map<String, String> f4514jh;

    public AbstractC1714i(Context context) {
        m39920ap(context);
    }

    /* renamed from: ap */
    private void m39920ap(Context context) {
        synchronized (this) {
            if (!isReady()) {
                SharedPreferencesC1469h sharedPreferencesC1469h = new SharedPreferencesC1469h(context, mo39916bf());
                this.f4513hy = sharedPreferencesC1469h;
                this.f4514jh = sharedPreferencesC1469h.getAll();
            }
        }
    }

    /* renamed from: iy */
    private void m39912iy() {
        SharedPreferencesC1469h sharedPreferencesC1469h = this.f4513hy;
        if (sharedPreferencesC1469h != null) {
            sharedPreferencesC1469h.edit().clear().commit();
        }
    }

    private void put(String str, String str2) {
        if (str == null || str2 == null || !isReady()) {
            return;
        }
        SharedPreferencesC1469h.SharedPreferences$EditorC1470a edit = this.f4513hy.edit();
        if (edit != null) {
            edit.putString(str, str2).apply();
        }
        this.f4514jh.put(str, str2);
    }

    /* renamed from: a */
    public void m39923a(String str, JSONArray jSONArray) {
        putString(str, jSONArray.toString());
    }

    /* renamed from: a */
    public void m39922a(String str, JSONObject jSONObject) {
        if (jSONObject != null) {
            putString(str, jSONObject.toString());
        }
    }

    /* renamed from: a */
    public void m39921a(String[] strArr) {
        SharedPreferencesC1469h.SharedPreferences$EditorC1470a edit = this.f4513hy.edit();
        for (String str : strArr) {
            if (this.f4514jh.containsKey(str)) {
                this.f4514jh.remove(str);
            }
            if (this.f4513hy.contains(str)) {
                edit.remove(str);
            }
        }
        edit.commit();
    }

    /* renamed from: aq */
    public void m39919aq(Context context) {
        m39912iy();
        Map<String, String> map = this.f4514jh;
        if (map != null) {
            map.clear();
        }
        if (context != null) {
            m39920ap(context);
        }
    }

    /* renamed from: as */
    public boolean m39918as(String str) {
        return this.f4514jh.containsKey(str);
    }

    /* renamed from: at */
    public void m39917at(String str) {
        putString(str, Long.toString(System.currentTimeMillis()));
    }

    /* renamed from: bf */
    public abstract String mo39916bf();

    /* renamed from: bo */
    public void m39915bo(Context context) {
        m39912iy();
        this.f4513hy = new SharedPreferencesC1469h(context, mo39916bf());
        if (C1716k.m39894d(this.f4514jh)) {
            for (Map.Entry<String, String> entry : this.f4514jh.entrySet()) {
                putString(entry.getKey(), entry.getValue());
            }
        }
    }

    /* renamed from: c */
    public void m39914c(String str, String str2, boolean z) {
        if (!z) {
            try {
                if (!C1626as.m40233a(str2)) {
                    return;
                }
            } catch (Exception e) {
                C1723q.m39823a(e);
                return;
            }
        }
        put(str, str2);
    }

    /* renamed from: eO */
    public boolean m39913eO() {
        return this.f4513hy.m40863eO();
    }

    public boolean getBoolean(String str) {
        return getBoolean(str, false);
    }

    public boolean getBoolean(String str, boolean z) {
        String string = getString(str);
        return C1626as.m40233a(string) ? Boolean.valueOf(string).booleanValue() : z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [double] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    public double getDouble(String str, double d) {
        Double d2;
        try {
            String string = getString(str);
            d2 = null;
            if (C1626as.m40233a(string)) {
                d2 = Double.valueOf(string);
            }
        } catch (NumberFormatException e) {
            d2 = null;
        }
        ?? r5 = d;
        if (d2 != null) {
            r5 = d2.doubleValue();
        }
        return r5;
    }

    public int getInt(String str, int i) {
        String string = getString(str);
        if (string.isEmpty()) {
            return i;
        }
        try {
            return Integer.valueOf(string).intValue();
        } catch (NumberFormatException e) {
            return i;
        }
    }

    public JSONArray getJSONArray(String str) {
        try {
            return new JSONArray(getString(str, "[]"));
        } catch (JSONException e) {
            C1613ai.m40282e("FRESHCHAT", "Exception occured", e);
            return new JSONArray();
        }
    }

    public JSONObject getJSONObject(String str) {
        try {
            return new JSONObject(getString(str, "{}"));
        } catch (JSONException e) {
            C1613ai.m40282e("FRESHCHAT", "Exception occured", e);
            return new JSONObject();
        }
    }

    public long getLong(String str) {
        return getLong(str, Long.MIN_VALUE);
    }

    public long getLong(String str, long j) {
        String string = getString(str);
        try {
            if (C1626as.m40233a(string)) {
                return Long.valueOf(string).longValue();
            }
        } catch (NumberFormatException e) {
        }
        return j;
    }

    public String getString(String str) {
        return getString(str, "");
    }

    public String getString(String str, String str2) {
        String str3 = null;
        try {
            if (isReady()) {
                str3 = null;
                if (this.f4514jh.containsKey(str)) {
                    str3 = this.f4514jh.get(str);
                }
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
            str3 = null;
        }
        if (str3 != null) {
            str2 = str3;
        }
        return str2;
    }

    public boolean isReady() {
        return (this.f4513hy == null || this.f4514jh == null) ? false : true;
    }

    /* renamed from: jO */
    public boolean m39911jO() {
        return this.f4513hy.m40858jM();
    }

    public void putBoolean(String str, boolean z) {
        putString(str, Boolean.toString(z));
    }

    public void putDouble(String str, double d) {
        putString(str, Double.toString(d));
    }

    public void putInt(String str, int i) {
        putString(str, Integer.toString(i));
    }

    public void putLong(String str, long j) {
        putString(str, String.valueOf(j));
    }

    public void putString(String str, String str2) {
        m39914c(str, str2, true);
    }

    public void remove(String str) {
        if (isReady()) {
            if (this.f4514jh.containsKey(str)) {
                this.f4514jh.remove(str);
            }
            if (!this.f4513hy.contains(str)) {
                return;
            }
            this.f4513hy.edit().remove(str).commit();
        }
    }
}
