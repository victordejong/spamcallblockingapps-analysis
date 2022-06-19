package com.appnext.core;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.appnext.base.C0472a;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/appnext/core/SettingsManager.class */
public abstract class SettingsManager {

    /* renamed from: ec */
    private ArrayList<ConfigCallback> f1727ec;

    /* renamed from: eb */
    public HashMap<String, Object> f1726eb = null;

    /* renamed from: w */
    public HashMap<String, String> f1729w = null;

    /* renamed from: m */
    private int f1728m = 0;

    /* loaded from: classes-dex2jar.jar:com/appnext/core/SettingsManager$ConfigCallback.class */
    public interface ConfigCallback {
        void error(String str);

        void loaded(HashMap<String, Object> hashMap);
    }

    /* renamed from: com.appnext.core.SettingsManager$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/core/SettingsManager$a.class */
    public final class AsyncTaskC0518a extends AsyncTask<Object, Void, String> {
        private AsyncTaskC0518a() {
            SettingsManager.this = r4;
        }

        /* renamed from: a */
        public static String m42474a(Object... objArr) {
            if (objArr == null) {
                return "error: Internal error";
            }
            try {
                int length = objArr.length;
                String str = null;
                Context context = length >= 0 ? (Context) objArr[0] : null;
                if (context == null) {
                    return "error: Internal error";
                }
                String str2 = length > 0 ? (String) objArr[1] : null;
                if (TextUtils.isEmpty(str2)) {
                    return "error: Internal error";
                }
                HashMap hashMap = length >= 2 ? (HashMap) objArr[2] : null;
                if (length >= 3) {
                    str = (String) objArr[3];
                }
                C0563n.m42345ay();
                return C0563n.m42346a(context, str2, hashMap, str);
            } catch (Throwable th) {
                return "error: Internal error";
            }
        }

        @Override // android.os.AsyncTask
        public final /* synthetic */ String doInBackground(Object[] objArr) {
            return m42474a(objArr);
        }

        @Override // android.os.AsyncTask
        public final /* synthetic */ void onPostExecute(String str) {
            String str2 = str;
            super.onPostExecute(str2);
            if (str2 == null) {
                SettingsManager.this.f1728m = 0;
                SettingsManager.this.m42484A("unknown error");
            } else if (str2.startsWith("error:")) {
                SettingsManager.this.f1728m = 0;
                SettingsManager.this.m42484A(str2.substring(7));
            } else {
                try {
                    HashMap<String, Object> m42475z = SettingsManager.m42475z(str2);
                    SettingsManager settingsManager = SettingsManager.this;
                    HashMap<String, Object> hashMap = settingsManager.f1726eb;
                    if (hashMap == null) {
                        settingsManager.f1726eb = m42475z;
                    } else {
                        hashMap.putAll(m42475z);
                    }
                    SettingsManager.this.f1728m = 2;
                    SettingsManager settingsManager2 = SettingsManager.this;
                    SettingsManager.m42480a(settingsManager2, settingsManager2.f1726eb);
                } catch (Throwable th) {
                    C0472a.m42577a("SettingsManager$onPostExecute", th);
                    SettingsManager.this.f1728m = 0;
                    SettingsManager.this.m42484A("parsing error");
                }
            }
        }
    }

    /* renamed from: A */
    public void m42484A(String str) {
        synchronized ("https://cdn.appnext.com/tools/sdk/confign") {
            try {
                Iterator it = new ArrayList(this.f1727ec).iterator();
                while (it.hasNext()) {
                    ConfigCallback configCallback = (ConfigCallback) it.next();
                    if (configCallback != null) {
                        configCallback.error(str);
                    }
                }
                this.f1727ec.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m42480a(SettingsManager settingsManager, HashMap hashMap) {
        synchronized ("https://cdn.appnext.com/tools/sdk/confign") {
            try {
                Iterator it = new ArrayList(settingsManager.f1727ec).iterator();
                while (it.hasNext()) {
                    ((ConfigCallback) it.next()).loaded(hashMap);
                }
                settingsManager.f1727ec.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: z */
    public static HashMap<String, Object> m42475z(String str) throws JSONException {
        HashMap<String, Object> hashMap = new HashMap<>();
        JSONObject jSONObject = new JSONObject(str);
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String string = jSONObject.getString(next);
            try {
                JSONObject jSONObject2 = new JSONObject(string);
                Iterator<String> keys2 = jSONObject2.keys();
                while (keys2.hasNext()) {
                    String next2 = keys2.next();
                    String string2 = jSONObject2.getString(next2);
                    hashMap.put(next + AnalyticsConstants.DELIMITER_MAIN + next2, string2);
                }
            } catch (Throwable th) {
                hashMap.put(next, string);
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public final void m42483a(Context context, String str, ConfigCallback configCallback) {
        synchronized (this) {
            if (!C0551g.m42368k(context)) {
                this.f1728m = 0;
                if (configCallback != null) {
                    configCallback.error(AppnextError.CONNECTION_ERROR);
                }
                return;
            }
            if (this.f1727ec == null) {
                this.f1727ec = new ArrayList<>();
            }
            int i = this.f1728m;
            if (i != 2) {
                if (i == 0) {
                    this.f1728m = 1;
                    String str2 = mo42107j() + "?packageId=" + context.getPackageName() + "&id=" + str;
                    m42479h("pck", context.getPackageName());
                    m42479h("vid", C0551g.m42382av());
                    new StringBuilder("start loading config from ").append(str2);
                    new AsyncTaskC0518a().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, context, str2, mo42106k(), mo42104m());
                }
                if (configCallback != null) {
                    this.f1727ec.add(configCallback);
                }
            } else if (configCallback != null) {
                configCallback.loaded(this.f1726eb);
            }
        }
    }

    /* renamed from: h */
    public final void m42479h(String str, String str2) {
        if (this.f1729w == null) {
            this.f1729w = new HashMap<>();
        }
        this.f1729w.put(str, str2);
    }

    /* renamed from: i */
    public final void m42478i(String str, String str2) {
        if (this.f1729w == null) {
            this.f1729w = new HashMap<>();
        }
        if (!this.f1729w.containsKey(str)) {
            this.f1729w.put(str, str2);
        }
    }

    /* renamed from: j */
    public abstract String mo42107j();

    /* renamed from: j */
    public final void m42477j(String str, String str2) {
        if (this.f1726eb == null) {
            this.f1726eb = new HashMap<>();
        }
        this.f1726eb.put(str, str2);
    }

    /* renamed from: k */
    public abstract HashMap<String, String> mo42106k();

    /* renamed from: l */
    public abstract HashMap<String, String> mo42105l();

    /* renamed from: m */
    public abstract String mo42104m();

    /* renamed from: y */
    public final String m42476y(String str) {
        HashMap<String, Object> hashMap = this.f1726eb;
        String str2 = (hashMap == null || !hashMap.containsKey(str)) ? null : (String) this.f1726eb.get(str);
        if (str2 != null) {
            return str2;
        }
        if (!mo42105l().containsKey(str)) {
            return null;
        }
        return mo42105l().get(str);
    }
}
