package com.facebook.appevents.p032n0;

import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.GraphRequest;
import com.facebook.appevents.p031m0.AsyncTaskC1040j;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.d0.h;
import s1.d0.j;
import s1.f0.r;
import s1.u.i;
import s1.u.z;
import s1.z.c.l;
@Metadata(d1 = {"��t\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n��\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u0014\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\bÇ\u0002\u0018��2\u00020\u0001:\u000289B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\b\u0010\u001d\u001a\u00020\u001aH\u0007J\b\u0010\u001e\u001a\u00020\u001aH\u0002J\n\u0010\u001f\u001a\u0004\u0018\u00010\u001cH\u0002J\u0012\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010$\u001a\u00020\u00142\u0006\u0010%\u001a\u00020&H\u0002J\u0014\u0010'\u001a\u0004\u0018\u00010(2\b\u0010)\u001a\u0004\u0018\u00010*H\u0002J\u0010\u0010+\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020\u001cH\u0002J9\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010.2\u0006\u0010\"\u001a\u00020#2\f\u0010/\u001a\b\u0012\u0004\u0012\u00020(0.2\f\u00100\u001a\b\u0012\u0004\u0012\u00020\u00040.H\u0007¢\u0006\u0002\u00101J%\u00102\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010.2\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020(H\u0002¢\u0006\u0002\u00106J%\u00107\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010.2\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020(H\u0002¢\u0006\u0002\u00106R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n��R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u000bX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u000bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0014\u0010\u0013\u001a\u00020\u00148BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0015R\u001c\u0010\u0016\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004¢\u0006\u0002\n��¨\u0006:"}, d2 = {"Lcom/facebook/appevents/ml/ModelManager;", "", "()V", "ASSET_URI_KEY", "", "CACHE_KEY_MODELS", "CACHE_KEY_REQUEST_TIMESTAMP", "MODEL_ASSERT_STORE", "MODEL_REQUEST_INTERVAL_MILLISECONDS", "", "MTML_INTEGRITY_DETECT_PREDICTION", "", "MTML_SUGGESTED_EVENTS_PREDICTION", "MTML_USE_CASE", "RULES_URI_KEY", "SDK_MODEL_ASSET", "THRESHOLD_KEY", "USE_CASE_KEY", "VERSION_ID_KEY", "isLocaleEnglish", "", "()Z", "taskHandlers", "", "Lcom/facebook/appevents/ml/ModelManager$TaskHandler;", "addModels", "", "models", "Lorg/json/JSONObject;", "enable", "enableMTML", "fetchModels", "getRuleFile", "Ljava/io/File;", "task", "Lcom/facebook/appevents/ml/ModelManager$Task;", "isValidTimestamp", "timestamp", "", "parseJsonArray", "", "jsonArray", "Lorg/json/JSONArray;", "parseRawJsonObject", "jsonObject", "predict", "", "denses", "texts", "(Lcom/facebook/appevents/ml/ModelManager$Task;[[F[Ljava/lang/String;)[Ljava/lang/String;", "processIntegrityDetectionResult", "res", "Lcom/facebook/appevents/ml/MTensor;", "thresholds", "(Lcom/facebook/appevents/ml/MTensor;[F)[Ljava/lang/String;", "processSuggestedEventResult", "Task", "TaskHandler", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.n0.h */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/n0/h.class */
public final class C1056h {

    /* renamed from: a */
    public static final C1056h f2914a = new C1056h();

    /* renamed from: b */
    public static final Map<String, C1058b> f2915b = new ConcurrentHashMap();

    /* renamed from: c */
    public static final List<String> f2916c = i.T(new String[]{"other", "fb_mobile_complete_registration", "fb_mobile_add_to_cart", "fb_mobile_purchase", "fb_mobile_initiated_checkout"});

    /* renamed from: d */
    public static final List<String> f2917d = i.T(new String[]{"none", "address", "health"});

    @Metadata(d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/facebook/appevents/ml/ModelManager$Task;", "", "(Ljava/lang/String;I)V", "toKey", "", "toUseCase", "MTML_INTEGRITY_DETECT", "MTML_APP_EVENT_PREDICTION", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.n0.h$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/n0/h$a.class */
    public enum EnumC1057a {
        MTML_INTEGRITY_DETECT,
        MTML_APP_EVENT_PREDICTION;

        /* renamed from: a */
        public final String m41843a() {
            String str;
            int ordinal = ordinal();
            if (ordinal == 0) {
                str = "integrity_detect";
            } else if (ordinal != 1) {
                throw new s1.i();
            } else {
                str = "app_event_pred";
            }
            return str;
        }

        /* renamed from: c */
        public final String m41842c() {
            String str;
            int ordinal = ordinal();
            if (ordinal == 0) {
                str = "MTML_INTEGRITY_DETECT";
            } else if (ordinal != 1) {
                throw new s1.i();
            } else {
                str = "MTML_APP_EVENT_PRED";
            }
            return str;
        }
    }

    @Metadata(d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0010\u0014\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0002\u0018�� *2\u00020\u0001:\u0001*B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u0010\u0010)\u001a\u00020��2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\f\"\u0004\b\u001e\u0010\u000eR\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b#\u0010\f\"\u0004\b$\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006+"}, d2 = {"Lcom/facebook/appevents/ml/ModelManager$TaskHandler;", "", "useCase", "", "assetUri", "ruleUri", "versionId", "", "thresholds", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[F)V", "getAssetUri", "()Ljava/lang/String;", "setAssetUri", "(Ljava/lang/String;)V", "model", "Lcom/facebook/appevents/ml/Model;", "getModel", "()Lcom/facebook/appevents/ml/Model;", "setModel", "(Lcom/facebook/appevents/ml/Model;)V", "onPostExecute", "Ljava/lang/Runnable;", "ruleFile", "Ljava/io/File;", "getRuleFile", "()Ljava/io/File;", "setRuleFile", "(Ljava/io/File;)V", "getRuleUri", "setRuleUri", "getThresholds", "()[F", "setThresholds", "([F)V", "getUseCase", "setUseCase", "getVersionId", "()I", "setVersionId", "(I)V", "setOnPostExecute", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.n0.h$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/n0/h$b.class */
    public static final class C1058b {

        /* renamed from: a */
        public String f2921a;

        /* renamed from: b */
        public String f2922b;

        /* renamed from: c */
        public String f2923c;

        /* renamed from: d */
        public int f2924d;

        /* renamed from: e */
        public float[] f2925e;

        /* renamed from: f */
        public File f2926f;

        /* renamed from: g */
        public C1055g f2927g;

        /* renamed from: h */
        public Runnable f2928h;

        @Metadata(d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\"\u0010\r\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u000e\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0004J\u001c\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u00042\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00040\u0016¨\u0006\u0017"}, d2 = {"Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion;", "", "()V", "build", "Lcom/facebook/appevents/ml/ModelManager$TaskHandler;", "json", "Lorg/json/JSONObject;", "deleteOldFiles", "", "useCase", "", "versionId", "", "download", "uri", AnalyticsConstants.NAME, "onComplete", "Lcom/facebook/appevents/internal/FileDownloadTask$Callback;", "execute", "handler", "master", "slaves", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* renamed from: com.facebook.appevents.n0.h$b$a */
        /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/n0/h$b$a.class */
        public static final class C1059a {
            /* renamed from: a */
            public static final C1058b m41841a(JSONObject jSONObject) {
                C1058b c1058b;
                float[] fArr;
                if (jSONObject == null) {
                    c1058b = null;
                } else {
                    try {
                        String string = jSONObject.getString("use_case");
                        String string2 = jSONObject.getString("asset_uri");
                        String optString = jSONObject.optString("rules_uri", null);
                        int i = jSONObject.getInt("version_id");
                        C1056h c1056h = C1056h.f2914a;
                        JSONArray jSONArray = jSONObject.getJSONArray("thresholds");
                        if (!C1220a.m41623b(C1056h.class) && !C1220a.m41623b(c1056h) && jSONArray != null) {
                            try {
                                float[] fArr2 = new float[jSONArray.length()];
                                int i2 = 0;
                                int length = jSONArray.length();
                                fArr = fArr2;
                                if (length > 0) {
                                    while (true) {
                                        int i3 = i2 + 1;
                                        try {
                                            String string3 = jSONArray.getString(i2);
                                            l.d(string3, "jsonArray.getString(i)");
                                            fArr2[i2] = Float.parseFloat(string3);
                                        } catch (JSONException e) {
                                        }
                                        if (i3 >= length) {
                                            break;
                                        }
                                        i2 = i3;
                                    }
                                    fArr = fArr2;
                                }
                            } catch (Throwable th) {
                                C1220a.m41624a(th, c1056h);
                            }
                            l.d(string, "useCase");
                            l.d(string2, "assetUri");
                            c1058b = new C1058b(string, string2, optString, i, fArr);
                        }
                        fArr = null;
                        l.d(string, "useCase");
                        l.d(string2, "assetUri");
                        c1058b = new C1058b(string, string2, optString, i, fArr);
                    } catch (Exception e2) {
                        c1058b = null;
                    }
                }
                return c1058b;
            }

            /* renamed from: b */
            public static final void m41840b(String str, String str2, AsyncTaskC1040j.AbstractC1041a abstractC1041a) {
                File file = new File(C1061j.m41826a(), str2);
                if (str == null || file.exists()) {
                    ((C1049b) abstractC1041a).mo41854a(file);
                } else {
                    new AsyncTaskC1040j(str, file, abstractC1041a).execute(new String[0]);
                }
            }

            /* renamed from: c */
            public static final void m41839c(C1058b c1058b, List<C1058b> list) {
                File[] listFiles;
                l.e(c1058b, "master");
                l.e(list, "slaves");
                String str = c1058b.f2921a;
                int i = c1058b.f2924d;
                File m41826a = C1061j.m41826a();
                if (m41826a != null && (listFiles = m41826a.listFiles()) != null) {
                    if (!(listFiles.length == 0)) {
                        String str2 = str + '_' + i;
                        int length = listFiles.length;
                        int i2 = 0;
                        while (i2 < length) {
                            File file = listFiles[i2];
                            int i3 = i2 + 1;
                            String name = file.getName();
                            l.d(name, AnalyticsConstants.NAME);
                            i2 = i3;
                            if (r.y(name, str, false, 2)) {
                                i2 = i3;
                                if (!r.y(name, str2, false, 2)) {
                                    file.delete();
                                    i2 = i3;
                                }
                            }
                        }
                    }
                }
                m41840b(c1058b.f2922b, c1058b.f2921a + '_' + c1058b.f2924d, new C1049b(list));
            }
        }

        public C1058b(String str, String str2, String str3, int i, float[] fArr) {
            l.e(str, "useCase");
            l.e(str2, "assetUri");
            this.f2921a = str;
            this.f2922b = str2;
            this.f2923c = str3;
            this.f2924d = i;
            this.f2925e = fArr;
        }
    }

    /* renamed from: d */
    public static final File m41848d(EnumC1057a enumC1057a) {
        if (C1220a.m41623b(C1056h.class)) {
            return null;
        }
        try {
            l.e(enumC1057a, "task");
            C1058b c1058b = f2915b.get(enumC1057a.m41842c());
            if (c1058b != null) {
                return c1058b.f2926f;
            }
            return null;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1056h.class);
            return null;
        }
    }

    /* renamed from: f */
    public static final String[] m41846f(EnumC1057a enumC1057a, float[][] fArr, String[] strArr) {
        String[] strArr2;
        C1056h c1056h = f2914a;
        if (C1220a.m41623b(C1056h.class)) {
            return null;
        }
        try {
            l.e(enumC1057a, "task");
            l.e(fArr, "denses");
            l.e(strArr, "texts");
            C1058b c1058b = f2915b.get(enumC1057a.m41842c());
            C1055g c1055g = c1058b == null ? null : c1058b.f2927g;
            if (c1055g == null) {
                return null;
            }
            float[] fArr2 = c1058b.f2925e;
            int length = strArr.length;
            int length2 = fArr[0].length;
            C1053f c1053f = new C1053f(new int[]{length, length2});
            if (length > 0) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    int i3 = i2 + 1;
                    System.arraycopy(fArr[i2], 0, c1053f.f2899c, i2 * length2, length2);
                    if (i3 >= length) {
                        break;
                    }
                    i = i3;
                }
            }
            C1053f m41852a = c1055g.m41852a(c1053f, strArr, enumC1057a.m41843a());
            if (m41852a != null && fArr2 != null) {
                if (!(m41852a.f2899c.length == 0)) {
                    boolean z = false;
                    if (fArr2.length == 0) {
                        z = true;
                    }
                    if (!z) {
                        int ordinal = enumC1057a.ordinal();
                        if (ordinal == 0) {
                            strArr2 = c1056h.m41845g(m41852a, fArr2);
                        } else if (ordinal != 1) {
                            throw new s1.i();
                        } else {
                            strArr2 = c1056h.m41844h(m41852a, fArr2);
                        }
                        return strArr2;
                    }
                }
            }
            strArr2 = null;
            return strArr2;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1056h.class);
            return null;
        }
    }

    /* renamed from: a */
    public final void m41851a(JSONObject jSONObject) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                try {
                    C1058b m41841a = C1058b.C1059a.m41841a(jSONObject.getJSONObject(keys.next()));
                    if (m41841a != null) {
                        f2915b.put(m41841a.f2921a, m41841a);
                    }
                } catch (JSONException e) {
                    return;
                }
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00b6, code lost:
        if (s1.f0.v.B(r0, "en", false, 2) != false) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00cf A[Catch: all -> 0x0159, TRY_ENTER, TryCatch #2 {all -> 0x0159, blocks: (B:5:0x0008, B:7:0x0023, B:9:0x002c, B:11:0x0053, B:13:0x0061, B:15:0x0081, B:26:0x00cf, B:29:0x00e2, B:31:0x00f0, B:33:0x010e, B:35:0x0117, B:41:0x0139, B:43:0x0140, B:17:0x008f, B:19:0x0099), top: B:48:0x0008 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m41850b() {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p032n0.C1056h.m41850b():void");
    }

    /* renamed from: c */
    public final JSONObject m41849c() {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("fields", TextUtils.join(",", new String[]{"use_case", "version_id", "asset_uri", "rules_uri", "thresholds"}));
            GraphRequest m42000h = GraphRequest.f2543k.m42000h(null, "app/model_asset", null);
            m42000h.m42008l(bundle);
            JSONObject jSONObject = m42000h.m42017c().f64333c;
            if (jSONObject != null) {
                return m41847e(jSONObject);
            }
            return null;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* renamed from: e */
    public final JSONObject m41847e(JSONObject jSONObject) {
        JSONObject jSONObject2;
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            JSONObject jSONObject3 = new JSONObject();
            try {
                JSONArray jSONArray = jSONObject.getJSONArray(RemoteMessageConst.DATA);
                int i = 0;
                int length = jSONArray.length();
                jSONObject2 = jSONObject3;
                if (length > 0) {
                    while (true) {
                        int i2 = i + 1;
                        JSONObject jSONObject4 = jSONArray.getJSONObject(i);
                        JSONObject jSONObject5 = new JSONObject();
                        jSONObject5.put("version_id", jSONObject4.getString("version_id"));
                        jSONObject5.put("use_case", jSONObject4.getString("use_case"));
                        jSONObject5.put("thresholds", jSONObject4.getJSONArray("thresholds"));
                        jSONObject5.put("asset_uri", jSONObject4.getString("asset_uri"));
                        if (jSONObject4.has("rules_uri")) {
                            jSONObject5.put("rules_uri", jSONObject4.getString("rules_uri"));
                        }
                        jSONObject3.put(jSONObject4.getString("use_case"), jSONObject5);
                        if (i2 >= length) {
                            break;
                        }
                        i = i2;
                    }
                    jSONObject2 = jSONObject3;
                }
            } catch (JSONException e) {
                jSONObject2 = new JSONObject();
            }
            return jSONObject2;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* renamed from: g */
    public final String[] m41845g(C1053f c1053f, float[] fArr) {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            int[] iArr = c1053f.f2897a;
            int i = iArr[0];
            int i2 = iArr[1];
            float[] fArr2 = c1053f.f2899c;
            if (i2 != fArr.length) {
                return null;
            }
            s1.d0.i j = j.j(0, i);
            ArrayList arrayList = new ArrayList(C25225a.m4004J(j, 10));
            z it = j.iterator();
            while (((h) it).b) {
                int a = it.a();
                String str = "none";
                int length = fArr.length;
                int i3 = 0;
                int i4 = 0;
                while (i3 < length) {
                    if (fArr2[(a * i2) + i4] >= fArr[i3]) {
                        str = f2917d.get(i4);
                    }
                    i3++;
                    i4++;
                }
                arrayList.add(str);
            }
            Object[] array = arrayList.toArray(new String[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            return (String[]) array;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* renamed from: h */
    public final String[] m41844h(C1053f c1053f, float[] fArr) {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            int[] iArr = c1053f.f2897a;
            int i = iArr[0];
            int i2 = iArr[1];
            float[] fArr2 = c1053f.f2899c;
            if (i2 != fArr.length) {
                return null;
            }
            s1.d0.i j = j.j(0, i);
            ArrayList arrayList = new ArrayList(C25225a.m4004J(j, 10));
            z it = j.iterator();
            while (((h) it).b) {
                int a = it.a();
                String str = "other";
                int length = fArr.length;
                int i3 = 0;
                int i4 = 0;
                while (i3 < length) {
                    if (fArr2[(a * i2) + i4] >= fArr[i3]) {
                        str = f2916c.get(i4);
                    }
                    i3++;
                    i4++;
                }
                arrayList.add(str);
            }
            Object[] array = arrayList.toArray(new String[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            return (String[]) array;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }
}
