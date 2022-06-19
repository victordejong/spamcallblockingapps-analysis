package com.facebook.appevents.p286g;

import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.C10181g;
import com.facebook.GraphRequest;
import com.facebook.appevents.p284e.C10023a;
import com.facebook.appevents.p285f.AsyncTaskC10039e;
import com.facebook.appevents.p289j.C10088d;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10291l;
import com.facebook.internal.p299b.p301b.C10249a;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.g.c */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/g/c.class */
public final class C10052c {

    /* renamed from: a */
    private static final Map<String, C10058b> f33358a = new ConcurrentHashMap();

    /* renamed from: b */
    private static final Integer f33359b = 259200000;

    /* renamed from: c */
    private static final List<String> f33360c = Arrays.asList("other", "fb_mobile_complete_registration", "fb_mobile_add_to_cart", "fb_mobile_purchase", "fb_mobile_initiated_checkout");

    /* renamed from: d */
    private static final List<String> f33361d = Arrays.asList("none", "address", "health");

    /* renamed from: com.facebook.appevents.g.c$4 */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/g/c$4.class */
    public static final /* synthetic */ class C100564 {

        /* renamed from: a */
        static final /* synthetic */ int[] f33362a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC10057a.values().length];
            f33362a = iArr;
            try {
                iArr[EnumC10057a.MTML_INTEGRITY_DETECT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33362a[EnumC10057a.MTML_APP_EVENT_PREDICTION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.facebook.appevents.g.c$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/g/c$a.class */
    public enum EnumC10057a {
        MTML_INTEGRITY_DETECT,
        MTML_APP_EVENT_PREDICTION;

        public final String toKey() {
            int i = C100564.f33362a[ordinal()];
            return i != 1 ? i != 2 ? "Unknown" : "app_event_pred" : "integrity_detect";
        }

        public final String toUseCase() {
            int i = C100564.f33362a[ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return "MTML_APP_EVENT_PRED";
                }
                return null;
            }
            return "MTML_INTEGRITY_DETECT";
        }
    }

    /* renamed from: com.facebook.appevents.g.c$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/g/c$b.class */
    public static final class C10058b {

        /* renamed from: a */
        String f33363a;

        /* renamed from: b */
        String f33364b;

        /* renamed from: c */
        String f33365c;

        /* renamed from: d */
        int f33366d;

        /* renamed from: e */
        float[] f33367e;

        /* renamed from: f */
        File f33368f;

        /* renamed from: g */
        C10049b f33369g;

        /* renamed from: h */
        Runnable f33370h;

        C10058b(String str, String str2, String str3, int i, float[] fArr) {
            this.f33363a = str;
            this.f33364b = str2;
            this.f33365c = str3;
            this.f33366d = i;
            this.f33367e = fArr;
        }

        /* renamed from: a */
        static C10058b m23507a(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            try {
                return new C10058b(jSONObject.getString("use_case"), jSONObject.getString("asset_uri"), jSONObject.optString("rules_uri", null), jSONObject.getInt("version_id"), C10052c.m23519a(jSONObject.getJSONArray("thresholds")));
            } catch (Exception e) {
                return null;
            }
        }

        /* renamed from: a */
        static void m23509a(String str, int i) {
            File[] listFiles;
            File m23493a = C10062e.m23493a();
            if (m23493a == null || (listFiles = m23493a.listFiles()) == null || listFiles.length == 0) {
                return;
            }
            String str2 = str + "_" + i;
            for (File file : listFiles) {
                String name = file.getName();
                if (name.startsWith(str) && !name.startsWith(str2)) {
                    file.delete();
                }
            }
        }

        /* renamed from: a */
        static void m23508a(String str, String str2, AsyncTaskC10039e.AbstractC10040a abstractC10040a) {
            File file = new File(C10062e.m23493a(), str2);
            if (str == null || file.exists()) {
                abstractC10040a.mo23506a(file);
            } else {
                new AsyncTaskC10039e(str, file, abstractC10040a).execute(new String[0]);
            }
        }
    }

    /* renamed from: a */
    public static File m23521a(EnumC10057a enumC10057a) {
        if (C10249a.m23108a(C10052c.class)) {
            return null;
        }
        try {
            C10058b c10058b = f33358a.get(enumC10057a.toUseCase());
            if (c10058b != null) {
                return c10058b.f33368f;
            }
            return null;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10052c.class);
            return null;
        }
    }

    /* renamed from: a */
    public static void m23524a() {
        if (C10249a.m23108a(C10052c.class)) {
            return;
        }
        try {
            C10213ae.m23231a(new Runnable() { // from class: com.facebook.appevents.g.c.1
                /* JADX WARN: Removed duplicated region for block: B:23:0x0067 A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:24:0x0068 A[Catch: all -> 0x0090, Exception -> 0x0097, TRY_ENTER, TryCatch #2 {Exception -> 0x0097, all -> 0x0090, blocks: (B:5:0x0008, B:7:0x0020, B:10:0x002a, B:11:0x0036, B:13:0x003f, B:15:0x0051, B:18:0x0059, B:20:0x005f, B:20:0x005f, B:24:0x0068, B:26:0x0089), top: B:32:0x0008 }] */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        r5 = this;
                        r0 = r5
                        boolean r0 = com.facebook.internal.p299b.p301b.C10249a.m23108a(r0)
                        if (r0 == 0) goto L8
                        return
                    L8:
                        android.content.Context r0 = com.facebook.C10181g.m23290i()     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L97
                        java.lang.String r1 = "com.facebook.internal.MODEL_STORE"
                        r2 = 0
                        android.content.SharedPreferences r0 = r0.getSharedPreferences(r1, r2)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L97
                        r6 = r0
                        r0 = r6
                        java.lang.String r1 = "models"
                        r2 = 0
                        java.lang.String r0 = r0.getString(r1, r2)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L97
                        r7 = r0
                        r0 = r7
                        if (r0 == 0) goto L36
                        r0 = r7
                        boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L97
                        if (r0 == 0) goto L2a
                        goto L36
                    L2a:
                        org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L97
                        r1 = r0
                        r2 = r7
                        r1.<init>(r2)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L97
                        r7 = r0
                        goto L3e
                    L36:
                        org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L97
                        r7 = r0
                        r0 = r7
                        r0.<init>()     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L97
                    L3e:
                        r0 = r6
                        java.lang.String r1 = "model_request_timestamp"
                        r2 = 0
                        long r0 = r0.getLong(r1, r2)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L97
                        r8 = r0
                        com.facebook.internal.l$b r0 = com.facebook.internal.C10291l.EnumC10293b.ModelRequest     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L97
                        boolean r0 = com.facebook.internal.C10291l.m23051a(r0)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L97
                        if (r0 == 0) goto L5f
                        r0 = r7
                        int r0 = r0.length()     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L97
                        if (r0 == 0) goto L5f
                        r0 = r8
                        boolean r0 = com.facebook.appevents.p286g.C10052c.m23523a(r0)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L97
                        if (r0 != 0) goto L88
                    L5f:
                        org.json.JSONObject r0 = com.facebook.appevents.p286g.C10052c.m23517b()     // Catch: java.lang.Throwable -> L90 java.lang.Throwable -> L90 java.lang.Exception -> L97 java.lang.Exception -> L97
                        r7 = r0
                        r0 = r7
                        if (r0 != 0) goto L68
                        return
                    L68:
                        r0 = r6
                        android.content.SharedPreferences$Editor r0 = r0.edit()     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L97
                        java.lang.String r1 = "models"
                        r2 = r7
                        java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L97
                        android.content.SharedPreferences$Editor r0 = r0.putString(r1, r2)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L97
                        java.lang.String r1 = "model_request_timestamp"
                        long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L97
                        android.content.SharedPreferences$Editor r0 = r0.putLong(r1, r2)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L97
                        r0.apply()     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L97
                    L88:
                        r0 = r7
                        com.facebook.appevents.p286g.C10052c.m23518a(r0)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L97
                        com.facebook.appevents.p286g.C10052c.m23512c()     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L97
                        return
                    L90:
                        r7 = move-exception
                        r0 = r7
                        r1 = r5
                        com.facebook.internal.p299b.p301b.C10249a.m23106a(r0, r1)
                    L96:
                        return
                    L97:
                        r7 = move-exception
                        goto L96
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p286g.C10052c.RunnableC100531.run():void");
                }
            });
        } catch (Throwable th) {
            C10249a.m23106a(th, C10052c.class);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m23518a(JSONObject jSONObject) {
        if (C10249a.m23108a(C10052c.class)) {
            return;
        }
        try {
            if (C10249a.m23108a(C10052c.class)) {
                return;
            }
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                try {
                    C10058b m23507a = C10058b.m23507a(jSONObject.getJSONObject(keys.next()));
                    if (m23507a != null) {
                        f33358a.put(m23507a.f33363a, m23507a);
                    }
                } catch (JSONException e) {
                    return;
                }
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10052c.class);
        }
    }

    /* renamed from: a */
    static /* synthetic */ boolean m23523a(long j) {
        if (C10249a.m23108a(C10052c.class)) {
            return false;
        }
        try {
            return m23516b(j);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10052c.class);
            return false;
        }
    }

    /* renamed from: a */
    static /* synthetic */ float[] m23519a(JSONArray jSONArray) {
        if (C10249a.m23108a(C10052c.class)) {
            return null;
        }
        try {
            return m23514b(jSONArray);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10052c.class);
            return null;
        }
    }

    /* renamed from: a */
    private static String[] m23522a(C10048a c10048a, float[] fArr) {
        if (C10249a.m23108a(C10052c.class)) {
            return null;
        }
        try {
            int i = c10048a.f33343b[0];
            int i2 = c10048a.f33343b[1];
            float[] fArr2 = c10048a.f33342a;
            String[] strArr = new String[i];
            if (i2 != fArr.length) {
                return null;
            }
            for (int i3 = 0; i3 < i; i3++) {
                strArr[i3] = "other";
                for (int i4 = 0; i4 < fArr.length; i4++) {
                    if (fArr2[(i3 * i2) + i4] >= fArr[i4]) {
                        strArr[i3] = f33360c.get(i4);
                    }
                }
            }
            return strArr;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10052c.class);
            return null;
        }
    }

    /* renamed from: a */
    public static String[] m23520a(EnumC10057a enumC10057a, float[][] fArr, String[] strArr) {
        if (C10249a.m23108a(C10052c.class)) {
            return null;
        }
        try {
            C10058b c10058b = f33358a.get(enumC10057a.toUseCase());
            if (c10058b != null && c10058b.f33369g != null) {
                int length = fArr[0].length;
                C10048a c10048a = new C10048a(new int[]{1, length});
                for (int i = 0; i <= 0; i++) {
                    System.arraycopy(fArr[0], 0, c10048a.f33342a, length * 0, length);
                }
                C10048a m23527a = c10058b.f33369g.m23527a(c10048a, strArr, enumC10057a.toKey());
                float[] fArr2 = c10058b.f33367e;
                if (m23527a != null && fArr2 != null && m23527a.f33342a.length != 0 && fArr2.length != 0) {
                    int i2 = C100564.f33362a[enumC10057a.ordinal()];
                    if (i2 == 1) {
                        return m23515b(m23527a, fArr2);
                    }
                    if (i2 == 2) {
                        return m23522a(m23527a, fArr2);
                    }
                    return null;
                }
                return null;
            }
            return null;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10052c.class);
            return null;
        }
    }

    /* renamed from: b */
    static /* synthetic */ JSONObject m23517b() {
        if (C10249a.m23108a(C10052c.class)) {
            return null;
        }
        try {
            return m23511d();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10052c.class);
            return null;
        }
    }

    /* renamed from: b */
    private static JSONObject m23513b(JSONObject jSONObject) {
        if (C10249a.m23108a(C10052c.class)) {
            return null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("data");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("version_id", jSONObject3.getString("version_id"));
                    jSONObject4.put("use_case", jSONObject3.getString("use_case"));
                    jSONObject4.put("thresholds", jSONObject3.getJSONArray("thresholds"));
                    jSONObject4.put("asset_uri", jSONObject3.getString("asset_uri"));
                    if (jSONObject3.has("rules_uri")) {
                        jSONObject4.put("rules_uri", jSONObject3.getString("rules_uri"));
                    }
                    jSONObject2.put(jSONObject3.getString("use_case"), jSONObject4);
                }
                return jSONObject2;
            } catch (JSONException e) {
                return new JSONObject();
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10052c.class);
            return null;
        }
    }

    /* renamed from: b */
    private static boolean m23516b(long j) {
        if (!C10249a.m23108a(C10052c.class) && j != 0) {
            try {
                return System.currentTimeMillis() - j < ((long) f33359b.intValue());
            } catch (Throwable th) {
                C10249a.m23106a(th, C10052c.class);
                return false;
            }
        }
        return false;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x003f -> B:16:0x002e). Please submit an issue!!! */
    /* renamed from: b */
    private static float[] m23514b(JSONArray jSONArray) {
        if (!C10249a.m23108a(C10052c.class) && jSONArray != null) {
            try {
                float[] fArr = new float[jSONArray.length()];
                for (int i = 0; i < jSONArray.length(); i++) {
                    try {
                        fArr[i] = Float.parseFloat(jSONArray.getString(i));
                    } catch (JSONException e) {
                    }
                }
                return fArr;
            } catch (Throwable th) {
                C10249a.m23106a(th, C10052c.class);
                return null;
            }
        }
        return null;
    }

    /* renamed from: b */
    private static String[] m23515b(C10048a c10048a, float[] fArr) {
        if (C10249a.m23108a(C10052c.class)) {
            return null;
        }
        try {
            int i = c10048a.f33343b[0];
            int i2 = c10048a.f33343b[1];
            float[] fArr2 = c10048a.f33342a;
            String[] strArr = new String[i];
            if (i2 != fArr.length) {
                return null;
            }
            for (int i3 = 0; i3 < i; i3++) {
                strArr[i3] = "none";
                for (int i4 = 0; i4 < fArr.length; i4++) {
                    if (fArr2[(i3 * i2) + i4] >= fArr[i4]) {
                        strArr[i3] = f33361d.get(i4);
                    }
                }
            }
            return strArr;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10052c.class);
            return null;
        }
    }

    /* renamed from: c */
    static /* synthetic */ void m23512c() {
        if (C10249a.m23108a(C10052c.class)) {
            return;
        }
        try {
            if (C10249a.m23108a(C10052c.class)) {
                return;
            }
            final ArrayList arrayList = new ArrayList();
            String str = null;
            int i = 0;
            for (Map.Entry<String, C10058b> entry : f33358a.entrySet()) {
                String key = entry.getKey();
                int i2 = i;
                if (key.equals(EnumC10057a.MTML_APP_EVENT_PREDICTION.toUseCase())) {
                    C10058b value = entry.getValue();
                    String str2 = value.f33364b;
                    int max = Math.max(i, value.f33366d);
                    str = str2;
                    i2 = max;
                    if (C10291l.m23051a(C10291l.EnumC10293b.SuggestedEvents)) {
                        str = str2;
                        i2 = max;
                        if (m23510e()) {
                            value.f33370h = new Runnable() { // from class: com.facebook.appevents.g.c.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    if (C10249a.m23108a(this)) {
                                        return;
                                    }
                                    try {
                                        C10088d.m23432a();
                                    } catch (Throwable th) {
                                        C10249a.m23106a(th, this);
                                    }
                                }
                            };
                            arrayList.add(value);
                            i2 = max;
                            str = str2;
                        }
                    }
                }
                i = i2;
                if (key.equals(EnumC10057a.MTML_INTEGRITY_DETECT.toUseCase())) {
                    C10058b value2 = entry.getValue();
                    str = value2.f33364b;
                    i = Math.max(i2, value2.f33366d);
                    if (C10291l.m23051a(C10291l.EnumC10293b.IntelligentIntegrity)) {
                        value2.f33370h = new Runnable() { // from class: com.facebook.appevents.g.c.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                if (C10249a.m23108a(this)) {
                                    return;
                                }
                                try {
                                    C10023a.m23590a();
                                } catch (Throwable th) {
                                    C10249a.m23106a(th, this);
                                }
                            }
                        };
                        arrayList.add(value2);
                    }
                }
            }
            if (str == null || i <= 0 || arrayList.isEmpty()) {
                return;
            }
            C10058b c10058b = new C10058b("MTML", str, null, i, null);
            C10058b.m23509a(c10058b.f33363a, c10058b.f33366d);
            C10058b.m23508a(c10058b.f33364b, c10058b.f33363a + "_" + c10058b.f33366d, new AsyncTaskC10039e.AbstractC10040a() { // from class: com.facebook.appevents.g.c.b.1
                @Override // com.facebook.appevents.p285f.AsyncTaskC10039e.AbstractC10040a
                /* renamed from: a */
                public final void mo23506a(File file) {
                    final C10049b m23526a = C10049b.m23526a(file);
                    if (m23526a != null) {
                        for (final C10058b c10058b2 : arrayList) {
                            C10058b.m23508a(c10058b2.f33365c, c10058b2.f33363a + "_" + c10058b2.f33366d + "_rule", new AsyncTaskC10039e.AbstractC10040a() { // from class: com.facebook.appevents.g.c.b.1.1
                                @Override // com.facebook.appevents.p285f.AsyncTaskC10039e.AbstractC10040a
                                /* renamed from: a */
                                public final void mo23506a(File file2) {
                                    c10058b2.f33369g = m23526a;
                                    c10058b2.f33368f = file2;
                                    if (c10058b2.f33370h != null) {
                                        c10058b2.f33370h.run();
                                    }
                                }
                            });
                        }
                    }
                }
            });
        } catch (Throwable th) {
            C10249a.m23106a(th, C10052c.class);
        }
    }

    /* renamed from: d */
    private static JSONObject m23511d() {
        if (C10249a.m23108a(C10052c.class)) {
            return null;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("fields", TextUtils.join(",", new String[]{"use_case", "version_id", "asset_uri", "rules_uri", "thresholds"}));
            GraphRequest m23790a = GraphRequest.m23790a(String.format("%s/model_asset", C10181g.m23286m()));
            m23790a.f33082h = true;
            m23790a.f33078d = bundle;
            JSONObject jSONObject = GraphRequest.m23796a(m23790a).f33959a;
            if (jSONObject != null) {
                return m23513b(jSONObject);
            }
            return null;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10052c.class);
            return null;
        }
    }

    /* renamed from: e */
    private static boolean m23510e() {
        if (C10249a.m23108a(C10052c.class)) {
            return false;
        }
        try {
            Locale m23198d = C10213ae.m23198d();
            if (m23198d == null) {
                return true;
            }
            return m23198d.getLanguage().contains("en");
        } catch (Throwable th) {
            C10249a.m23106a(th, C10052c.class);
            return false;
        }
    }
}
