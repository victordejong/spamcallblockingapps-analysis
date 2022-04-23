package com.facebook.appevents.g;

import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.GraphRequest;
import com.facebook.appevents.f.e;
import com.facebook.appevents.j.d;
import com.facebook.g;
import com.facebook.internal.ae;
import com.facebook.internal.l;
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
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/g/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, b> f19584a = new ConcurrentHashMap();

    /* renamed from: b  reason: collision with root package name */
    private static final Integer f19585b = 259200000;

    /* renamed from: c  reason: collision with root package name */
    private static final List<String> f19586c = Arrays.asList("other", "fb_mobile_complete_registration", "fb_mobile_add_to_cart", "fb_mobile_purchase", "fb_mobile_initiated_checkout");

    /* renamed from: d  reason: collision with root package name */
    private static final List<String> f19587d = Arrays.asList("none", "address", "health");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.appevents.g.c$4  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/g/c$4.class */
    public static final /* synthetic */ class AnonymousClass4 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f19588a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[a.values().length];
            f19588a = iArr;
            try {
                iArr[a.MTML_INTEGRITY_DETECT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19588a[a.MTML_APP_EVENT_PREDICTION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/g/c$a.class */
    public enum a {
        MTML_INTEGRITY_DETECT,
        MTML_APP_EVENT_PREDICTION;

        public final String toKey() {
            int i = AnonymousClass4.f19588a[ordinal()];
            return i != 1 ? i != 2 ? "Unknown" : "app_event_pred" : "integrity_detect";
        }

        public final String toUseCase() {
            int i = AnonymousClass4.f19588a[ordinal()];
            if (i == 1) {
                return "MTML_INTEGRITY_DETECT";
            }
            if (i != 2) {
                return null;
            }
            return "MTML_APP_EVENT_PRED";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/g/c$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        String f19589a;

        /* renamed from: b  reason: collision with root package name */
        String f19590b;

        /* renamed from: c  reason: collision with root package name */
        String f19591c;

        /* renamed from: d  reason: collision with root package name */
        int f19592d;
        float[] e;
        File f;
        com.facebook.appevents.g.b g;
        Runnable h;

        b(String str, String str2, String str3, int i, float[] fArr) {
            this.f19589a = str;
            this.f19590b = str2;
            this.f19591c = str3;
            this.f19592d = i;
            this.e = fArr;
        }

        static b a(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            try {
                return new b(jSONObject.getString("use_case"), jSONObject.getString("asset_uri"), jSONObject.optString("rules_uri", null), jSONObject.getInt("version_id"), c.a(jSONObject.getJSONArray("thresholds")));
            } catch (Exception e) {
                return null;
            }
        }

        static void a(String str, int i) {
            File[] listFiles;
            File a2 = e.a();
            if (!(a2 == null || (listFiles = a2.listFiles()) == null || listFiles.length == 0)) {
                String str2 = str + "_" + i;
                for (File file : listFiles) {
                    String name = file.getName();
                    if (name.startsWith(str) && !name.startsWith(str2)) {
                        file.delete();
                    }
                }
            }
        }

        static void a(String str, String str2, e.a aVar) {
            File file = new File(e.a(), str2);
            if (str == null || file.exists()) {
                aVar.a(file);
            } else {
                new e(str, file, aVar).execute(new String[0]);
            }
        }
    }

    public static File a(a aVar) {
        if (com.facebook.internal.b.b.a.a(c.class)) {
            return null;
        }
        try {
            b bVar = f19584a.get(aVar.toUseCase());
            if (bVar == null) {
                return null;
            }
            return bVar.f;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, c.class);
            return null;
        }
    }

    public static void a() {
        if (!com.facebook.internal.b.b.a.a(c.class)) {
            try {
                ae.a(new Runnable() { // from class: com.facebook.appevents.g.c.1
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
                            boolean r0 = com.facebook.internal.b.b.a.a(r0)
                            if (r0 == 0) goto L_0x0008
                            return
                        L_0x0008:
                            android.content.Context r0 = com.facebook.g.i()     // Catch: all -> 0x0090, Exception -> 0x0097
                            java.lang.String r1 = "com.facebook.internal.MODEL_STORE"
                            r2 = 0
                            android.content.SharedPreferences r0 = r0.getSharedPreferences(r1, r2)     // Catch: all -> 0x0090, Exception -> 0x0097
                            r6 = r0
                            r0 = r6
                            java.lang.String r1 = "models"
                            r2 = 0
                            java.lang.String r0 = r0.getString(r1, r2)     // Catch: all -> 0x0090, Exception -> 0x0097
                            r7 = r0
                            r0 = r7
                            if (r0 == 0) goto L_0x0036
                            r0 = r7
                            boolean r0 = r0.isEmpty()     // Catch: all -> 0x0090, Exception -> 0x0097
                            if (r0 == 0) goto L_0x002a
                            goto L_0x0036
                        L_0x002a:
                            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: all -> 0x0090, Exception -> 0x0097
                            r1 = r0
                            r2 = r7
                            r1.<init>(r2)     // Catch: all -> 0x0090, Exception -> 0x0097
                            r7 = r0
                            goto L_0x003e
                        L_0x0036:
                            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: all -> 0x0090, Exception -> 0x0097
                            r7 = r0
                            r0 = r7
                            r0.<init>()     // Catch: all -> 0x0090, Exception -> 0x0097
                        L_0x003e:
                            r0 = r6
                            java.lang.String r1 = "model_request_timestamp"
                            r2 = 0
                            long r0 = r0.getLong(r1, r2)     // Catch: all -> 0x0090, Exception -> 0x0097
                            r8 = r0
                            com.facebook.internal.l$b r0 = com.facebook.internal.l.b.ModelRequest     // Catch: all -> 0x0090, Exception -> 0x0097
                            boolean r0 = com.facebook.internal.l.a(r0)     // Catch: all -> 0x0090, Exception -> 0x0097
                            if (r0 == 0) goto L_0x005f
                            r0 = r7
                            int r0 = r0.length()     // Catch: all -> 0x0090, Exception -> 0x0097
                            if (r0 == 0) goto L_0x005f
                            r0 = r8
                            boolean r0 = com.facebook.appevents.g.c.a(r0)     // Catch: all -> 0x0090, Exception -> 0x0097
                            if (r0 != 0) goto L_0x0088
                        L_0x005f:
                            org.json.JSONObject r0 = com.facebook.appevents.g.c.b()     // Catch: all -> 0x0090, all -> 0x0090, Exception -> 0x0097, Exception -> 0x0097
                            r7 = r0
                            r0 = r7
                            if (r0 != 0) goto L_0x0068
                            return
                        L_0x0068:
                            r0 = r6
                            android.content.SharedPreferences$Editor r0 = r0.edit()     // Catch: all -> 0x0090, Exception -> 0x0097
                            java.lang.String r1 = "models"
                            r2 = r7
                            java.lang.String r2 = r2.toString()     // Catch: all -> 0x0090, Exception -> 0x0097
                            android.content.SharedPreferences$Editor r0 = r0.putString(r1, r2)     // Catch: all -> 0x0090, Exception -> 0x0097
                            java.lang.String r1 = "model_request_timestamp"
                            long r2 = java.lang.System.currentTimeMillis()     // Catch: all -> 0x0090, Exception -> 0x0097
                            android.content.SharedPreferences$Editor r0 = r0.putLong(r1, r2)     // Catch: all -> 0x0090, Exception -> 0x0097
                            r0.apply()     // Catch: all -> 0x0090, Exception -> 0x0097
                        L_0x0088:
                            r0 = r7
                            com.facebook.appevents.g.c.a(r0)     // Catch: all -> 0x0090, Exception -> 0x0097
                            com.facebook.appevents.g.c.c()     // Catch: all -> 0x0090, Exception -> 0x0097
                            return
                        L_0x0090:
                            r7 = move-exception
                            r0 = r7
                            r1 = r5
                            com.facebook.internal.b.b.a.a(r0, r1)
                        L_0x0096:
                            return
                        L_0x0097:
                            r7 = move-exception
                            goto L_0x0096
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.g.c.AnonymousClass1.run():void");
                    }
                });
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, c.class);
            }
        }
    }

    static /* synthetic */ void a(JSONObject jSONObject) {
        if (!com.facebook.internal.b.b.a.a(c.class)) {
            try {
                if (!com.facebook.internal.b.b.a.a(c.class)) {
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        try {
                            b a2 = b.a(jSONObject.getJSONObject(keys.next()));
                            if (a2 != null) {
                                f19584a.put(a2.f19589a, a2);
                            }
                        } catch (JSONException e) {
                            return;
                        }
                    }
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, c.class);
            }
        }
    }

    static /* synthetic */ boolean a(long j) {
        if (com.facebook.internal.b.b.a.a(c.class)) {
            return false;
        }
        try {
            return b(j);
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, c.class);
            return false;
        }
    }

    static /* synthetic */ float[] a(JSONArray jSONArray) {
        if (com.facebook.internal.b.b.a.a(c.class)) {
            return null;
        }
        try {
            return b(jSONArray);
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, c.class);
            return null;
        }
    }

    private static String[] a(com.facebook.appevents.g.a aVar, float[] fArr) {
        if (com.facebook.internal.b.b.a.a(c.class)) {
            return null;
        }
        try {
            int i = aVar.f19577b[0];
            int i2 = aVar.f19577b[1];
            float[] fArr2 = aVar.f19576a;
            String[] strArr = new String[i];
            if (i2 != fArr.length) {
                return null;
            }
            for (int i3 = 0; i3 < i; i3++) {
                strArr[i3] = "other";
                for (int i4 = 0; i4 < fArr.length; i4++) {
                    if (fArr2[(i3 * i2) + i4] >= fArr[i4]) {
                        strArr[i3] = f19586c.get(i4);
                    }
                }
            }
            return strArr;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, c.class);
            return null;
        }
    }

    public static String[] a(a aVar, float[][] fArr, String[] strArr) {
        if (com.facebook.internal.b.b.a.a(c.class)) {
            return null;
        }
        try {
            b bVar = f19584a.get(aVar.toUseCase());
            if (!(bVar == null || bVar.g == null)) {
                int length = fArr[0].length;
                com.facebook.appevents.g.a aVar2 = new com.facebook.appevents.g.a(new int[]{1, length});
                for (int i = 0; i <= 0; i++) {
                    System.arraycopy(fArr[0], 0, aVar2.f19576a, length * 0, length);
                }
                com.facebook.appevents.g.a a2 = bVar.g.a(aVar2, strArr, aVar.toKey());
                float[] fArr2 = bVar.e;
                if (!(a2 == null || fArr2 == null || a2.f19576a.length == 0 || fArr2.length == 0)) {
                    int i2 = AnonymousClass4.f19588a[aVar.ordinal()];
                    if (i2 == 1) {
                        return b(a2, fArr2);
                    }
                    if (i2 != 2) {
                        return null;
                    }
                    return a(a2, fArr2);
                }
                return null;
            }
            return null;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, c.class);
            return null;
        }
    }

    static /* synthetic */ JSONObject b() {
        if (com.facebook.internal.b.b.a.a(c.class)) {
            return null;
        }
        try {
            return d();
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, c.class);
            return null;
        }
    }

    private static JSONObject b(JSONObject jSONObject) {
        if (com.facebook.internal.b.b.a.a(c.class)) {
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
            com.facebook.internal.b.b.a.a(th, c.class);
            return null;
        }
    }

    private static boolean b(long j) {
        if (com.facebook.internal.b.b.a.a(c.class) || j == 0) {
            return false;
        }
        try {
            return System.currentTimeMillis() - j < ((long) f19585b.intValue());
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, c.class);
            return false;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x003f -> B:16:0x002e). Please submit an issue!!! */
    private static float[] b(JSONArray jSONArray) {
        if (com.facebook.internal.b.b.a.a(c.class) || jSONArray == null) {
            return null;
        }
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
            com.facebook.internal.b.b.a.a(th, c.class);
            return null;
        }
    }

    private static String[] b(com.facebook.appevents.g.a aVar, float[] fArr) {
        if (com.facebook.internal.b.b.a.a(c.class)) {
            return null;
        }
        try {
            int i = aVar.f19577b[0];
            int i2 = aVar.f19577b[1];
            float[] fArr2 = aVar.f19576a;
            String[] strArr = new String[i];
            if (i2 != fArr.length) {
                return null;
            }
            for (int i3 = 0; i3 < i; i3++) {
                strArr[i3] = "none";
                for (int i4 = 0; i4 < fArr.length; i4++) {
                    if (fArr2[(i3 * i2) + i4] >= fArr[i4]) {
                        strArr[i3] = f19587d.get(i4);
                    }
                }
            }
            return strArr;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, c.class);
            return null;
        }
    }

    static /* synthetic */ void c() {
        if (!com.facebook.internal.b.b.a.a(c.class)) {
            try {
                if (!com.facebook.internal.b.b.a.a(c.class)) {
                    final ArrayList arrayList = new ArrayList();
                    String str = null;
                    int i = 0;
                    for (Map.Entry<String, b> entry : f19584a.entrySet()) {
                        String key = entry.getKey();
                        int i2 = i;
                        if (key.equals(a.MTML_APP_EVENT_PREDICTION.toUseCase())) {
                            b value = entry.getValue();
                            String str2 = value.f19590b;
                            int max = Math.max(i, value.f19592d);
                            str = str2;
                            i2 = max;
                            if (l.a(l.b.SuggestedEvents)) {
                                str = str2;
                                i2 = max;
                                if (e()) {
                                    value.h = new Runnable() { // from class: com.facebook.appevents.g.c.2
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            if (!com.facebook.internal.b.b.a.a(this)) {
                                                try {
                                                    d.a();
                                                } catch (Throwable th) {
                                                    com.facebook.internal.b.b.a.a(th, this);
                                                }
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
                        if (key.equals(a.MTML_INTEGRITY_DETECT.toUseCase())) {
                            b value2 = entry.getValue();
                            str = value2.f19590b;
                            i = Math.max(i2, value2.f19592d);
                            if (l.a(l.b.IntelligentIntegrity)) {
                                value2.h = new Runnable() { // from class: com.facebook.appevents.g.c.3
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        if (!com.facebook.internal.b.b.a.a(this)) {
                                            try {
                                                com.facebook.appevents.e.a.a();
                                            } catch (Throwable th) {
                                                com.facebook.internal.b.b.a.a(th, this);
                                            }
                                        }
                                    }
                                };
                                arrayList.add(value2);
                            }
                        }
                    }
                    if (!(str == null || i <= 0 || arrayList.isEmpty())) {
                        b bVar = new b("MTML", str, null, i, null);
                        b.a(bVar.f19589a, bVar.f19592d);
                        b.a(bVar.f19590b, bVar.f19589a + "_" + bVar.f19592d, new e.a() { // from class: com.facebook.appevents.g.c.b.1
                            @Override // com.facebook.appevents.f.e.a
                            public final void a(File file) {
                                final com.facebook.appevents.g.b a2 = com.facebook.appevents.g.b.a(file);
                                if (a2 != null) {
                                    for (final b bVar2 : arrayList) {
                                        b.a(bVar2.f19591c, bVar2.f19589a + "_" + bVar2.f19592d + "_rule", new e.a() { // from class: com.facebook.appevents.g.c.b.1.1
                                            @Override // com.facebook.appevents.f.e.a
                                            public final void a(File file2) {
                                                bVar2.g = a2;
                                                bVar2.f = file2;
                                                if (bVar2.h != null) {
                                                    bVar2.h.run();
                                                }
                                            }
                                        });
                                    }
                                }
                            }
                        });
                    }
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, c.class);
            }
        }
    }

    private static JSONObject d() {
        if (com.facebook.internal.b.b.a.a(c.class)) {
            return null;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("fields", TextUtils.join(",", new String[]{"use_case", "version_id", "asset_uri", "rules_uri", "thresholds"}));
            GraphRequest a2 = GraphRequest.a(String.format("%s/model_asset", g.m()));
            a2.h = true;
            a2.f19373d = bundle;
            JSONObject jSONObject = GraphRequest.a(a2).f20036a;
            if (jSONObject == null) {
                return null;
            }
            return b(jSONObject);
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, c.class);
            return null;
        }
    }

    private static boolean e() {
        if (com.facebook.internal.b.b.a.a(c.class)) {
            return false;
        }
        try {
            Locale d2 = ae.d();
            if (d2 != null) {
                return d2.getLanguage().contains("en");
            }
            return true;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, c.class);
            return false;
        }
    }
}
