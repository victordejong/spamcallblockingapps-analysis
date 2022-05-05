package com.appsflyer.internal;

import android.content.pm.PackageManager;
import android.os.Build;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.ServerParameters;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import java.text.SimpleDateFormat;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.appsflyer.internal.ai */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ai.class */
public final class C1830ai {

    /* renamed from: ɩ */
    public static C1830ai f1791;

    /* renamed from: ǃ */
    public JSONObject f1793;

    /* renamed from: ɹ */
    public int f1794;

    /* renamed from: Ι */
    public boolean f1795 = true;

    /* renamed from: Ӏ */
    public String f1799 = FavoriteGroupRealmObject.PARENDID_DELETED;

    /* renamed from: І */
    public boolean f1797 = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DPM, false);

    /* renamed from: ι */
    public boolean f1796 = true ^ this.f1797;

    /* renamed from: ı */
    public JSONArray f1792 = new JSONArray();

    /* renamed from: і */
    public boolean f1798 = false;

    public C1830ai() {
        this.f1794 = 0;
        this.f1794 = 0;
    }

    /* renamed from: ǃ */
    private void m36170(String str, String str2, String str3, String str4) {
        synchronized (this) {
            try {
                this.f1793.put("sdk_version", str);
                if (str2 != null && str2.length() > 0) {
                    this.f1793.put("devkey", str2);
                }
                if (str3 != null && str3.length() > 0) {
                    this.f1793.put("originalAppsFlyerId", str3);
                }
                if (str4 != null && str4.length() > 0) {
                    this.f1793.put("uid", str4);
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: ɩ */
    private void m36167(String str, String str2, String str3, String str4) {
        synchronized (this) {
            if (str != null) {
                try {
                    if (str.length() > 0) {
                        this.f1793.put("app_id", str);
                    }
                } catch (Throwable th) {
                    return;
                }
            }
            if (str2 != null && str2.length() > 0) {
                this.f1793.put("app_version", str2);
            }
            if (str3 != null && str3.length() > 0) {
                this.f1793.put(AppsFlyerProperties.CHANNEL, str3);
            }
            if (str4 != null && str4.length() > 0) {
                this.f1793.put("preInstall", str4);
            }
        }
    }

    /* renamed from: ɹ */
    private boolean m36166() {
        if (this.f1796) {
            return this.f1795 || this.f1798;
        }
        return false;
    }

    /* renamed from: ι */
    private void m36162(String str, String str2, String str3, String str4, String str5, String str6) {
        synchronized (this) {
            try {
                this.f1793.put("brand", str);
                this.f1793.put("model", str2);
                this.f1793.put("platform", "Android");
                this.f1793.put("platform_version", str3);
                if (str4 != null && str4.length() > 0) {
                    this.f1793.put(ServerParameters.ADVERTISING_ID_PARAM, str4);
                }
                if (str5 != null && str5.length() > 0) {
                    this.f1793.put("imei", str5);
                }
                if (str6 != null && str6.length() > 0) {
                    this.f1793.put("android_id", str6);
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: і */
    private void m36160() {
        synchronized (this) {
            this.f1792 = null;
            this.f1792 = new JSONArray();
            this.f1794 = 0;
        }
    }

    /* renamed from: ı */
    public final void m36173() {
        synchronized (this) {
            this.f1795 = false;
            m36160();
        }
    }

    /* renamed from: ı */
    public final void m36172(String str, String str2, String... strArr) {
        synchronized (this) {
            if (m36166()) {
                if (this.f1794 < 98304) {
                    try {
                        long currentTimeMillis = System.currentTimeMillis();
                        String str3 = "";
                        if (strArr.length > 0) {
                            StringBuilder sb = new StringBuilder();
                            for (int length = strArr.length - 1; length > 0; length--) {
                                sb.append(strArr[length]);
                                sb.append(UserProfile.CARD_CATE_SEPARATOR);
                            }
                            sb.append(strArr[0]);
                            str3 = sb.toString();
                        }
                        String format = new SimpleDateFormat("MM-dd HH:mm:ss.SSS", Locale.ENGLISH).format(Long.valueOf(currentTimeMillis));
                        String format2 = str != null ? String.format("%18s %5s _/%s [%s] %s %s", format, Long.valueOf(Thread.currentThread().getId()), AppsFlyerLibCore.LOG_TAG, str, str2, str3) : String.format("%18s %5s %s/%s %s", format, Long.valueOf(Thread.currentThread().getId()), str2, AppsFlyerLibCore.LOG_TAG, str3);
                        this.f1792.put(format2);
                        this.f1794 += format2.getBytes().length;
                    } catch (Throwable th) {
                    }
                }
            }
        }
    }

    /* renamed from: ǃ */
    public final void m36171() {
        synchronized (this) {
            this.f1798 = true;
            m36172("r_debugging_on", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
        }
    }

    /* renamed from: ɩ */
    public final void m36169() {
        synchronized (this) {
            this.f1793 = null;
            this.f1792 = null;
            f1791 = null;
        }
    }

    /* renamed from: ɩ */
    public final void m36168(String str) {
        synchronized (this) {
            this.f1799 = str;
        }
    }

    /* renamed from: Ι */
    public final String m36165() {
        String str;
        synchronized (this) {
            str = null;
            try {
                this.f1793.put("data", this.f1792);
                String jSONObject = this.f1793.toString();
                str = jSONObject;
                m36160();
                str = jSONObject;
            } catch (JSONException e) {
            }
        }
        return str;
    }

    /* renamed from: Ι */
    public final void m36164(String str, PackageManager packageManager) {
        synchronized (this) {
            AppsFlyerProperties instance = AppsFlyerProperties.getInstance();
            AppsFlyerLibCore instance2 = AppsFlyerLibCore.getInstance();
            String string = instance.getString("remote_debug_static_data");
            if (string != null) {
                try {
                    this.f1793 = new JSONObject(string);
                } catch (Throwable th) {
                }
            } else {
                this.f1793 = new JSONObject();
                m36162(Build.BRAND, Build.MODEL, Build.VERSION.RELEASE, instance.getString(ServerParameters.ADVERTISING_ID_PARAM), instance2.f1690, instance2.f1691);
                StringBuilder sb = new StringBuilder("5.4.0.");
                sb.append(AppsFlyerLibCore.f1666);
                m36170(sb.toString(), instance.getString(AppsFlyerProperties.AF_KEY), instance.getString("KSAppsFlyerId"), instance.getString("uid"));
                try {
                    m36167(str, String.valueOf(packageManager.getPackageInfo(str, 0).versionCode), instance.getString(AppsFlyerProperties.CHANNEL), instance.getString("preInstallName"));
                } catch (Throwable th2) {
                }
                instance.set("remote_debug_static_data", this.f1793.toString());
            }
            try {
                this.f1793.put("launch_counter", this.f1799);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: ι */
    public final void m36163() {
        synchronized (this) {
            m36172("r_debugging_off", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
            this.f1798 = false;
            this.f1795 = false;
        }
    }

    /* renamed from: І */
    public final boolean m36161() {
        return this.f1798;
    }
}
