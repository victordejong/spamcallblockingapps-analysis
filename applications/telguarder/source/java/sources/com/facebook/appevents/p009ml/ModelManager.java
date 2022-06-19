package com.facebook.appevents.p009ml;

import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.appevents.internal.FileDownloadTask;
import com.facebook.appevents.suggestedevents.SuggestedEventsManager;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.ml.ModelManager */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/ml/ModelManager.class */
public final class ModelManager {
    private static final String ASSET_URI_KEY = "asset_uri";
    private static final String CACHE_KEY_MODELS = "models";
    private static final String CACHE_KEY_REQUEST_TIMESTAMP = "model_request_timestamp";
    private static final String MODEL_ASSERT_STORE = "com.facebook.internal.MODEL_STORE";
    private static final String MTML_USE_CASE = "MTML";
    private static final String RULES_URI_KEY = "rules_uri";
    private static final String SDK_MODEL_ASSET = "%s/model_asset";
    private static final String THRESHOLD_KEY = "thresholds";
    private static final String USE_CASE_KEY = "use_case";
    private static final String VERSION_ID_KEY = "version_id";
    private static final Map<String, TaskHandler> mTaskHandlers = new ConcurrentHashMap();
    private static final Integer MODEL_REQUEST_INTERVAL_MILLISECONDS = 259200000;
    private static final List<String> MTML_SUGGESTED_EVENTS_PREDICTION = Arrays.asList("other", AppEventsConstants.EVENT_NAME_COMPLETED_REGISTRATION, AppEventsConstants.EVENT_NAME_ADDED_TO_CART, AppEventsConstants.EVENT_NAME_PURCHASED, AppEventsConstants.EVENT_NAME_INITIATED_CHECKOUT);
    private static final List<String> MTML_INTEGRITY_DETECT_PREDICTION = Arrays.asList(IntegrityManager.INTEGRITY_TYPE_NONE, "address", IntegrityManager.INTEGRITY_TYPE_HEALTH);

    /* renamed from: com.facebook.appevents.ml.ModelManager$4 */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/ml/ModelManager$4.class */
    public static /* synthetic */ class C09134 {
        static final /* synthetic */ int[] $SwitchMap$com$facebook$appevents$ml$ModelManager$Task;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Task.values().length];
            $SwitchMap$com$facebook$appevents$ml$ModelManager$Task = iArr;
            try {
                iArr[Task.MTML_INTEGRITY_DETECT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$facebook$appevents$ml$ModelManager$Task[Task.MTML_APP_EVENT_PREDICTION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.facebook.appevents.ml.ModelManager$Task */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/ml/ModelManager$Task.class */
    public enum Task {
        MTML_INTEGRITY_DETECT,
        MTML_APP_EVENT_PREDICTION;

        public String toKey() {
            int i = C09134.$SwitchMap$com$facebook$appevents$ml$ModelManager$Task[ordinal()];
            return i != 1 ? i != 2 ? AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN : "app_event_pred" : "integrity_detect";
        }

        public String toUseCase() {
            int i = C09134.$SwitchMap$com$facebook$appevents$ml$ModelManager$Task[ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return "MTML_APP_EVENT_PRED";
                }
                return null;
            }
            return "MTML_INTEGRITY_DETECT";
        }
    }

    /* renamed from: com.facebook.appevents.ml.ModelManager$TaskHandler */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/ml/ModelManager$TaskHandler.class */
    public static class TaskHandler {
        String assetUri;
        Model model;
        private Runnable onPostExecute;
        File ruleFile;
        String ruleUri;
        float[] thresholds;
        String useCase;
        int versionId;

        TaskHandler(String str, String str2, String str3, int i, float[] fArr) {
            this.useCase = str;
            this.assetUri = str2;
            this.ruleUri = str3;
            this.versionId = i;
            this.thresholds = fArr;
        }

        static TaskHandler build(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            try {
                return new TaskHandler(jSONObject.getString(ModelManager.USE_CASE_KEY), jSONObject.getString(ModelManager.ASSET_URI_KEY), jSONObject.optString(ModelManager.RULES_URI_KEY, null), jSONObject.getInt(ModelManager.VERSION_ID_KEY), ModelManager.access$400(jSONObject.getJSONArray(ModelManager.THRESHOLD_KEY)));
            } catch (Exception e) {
                return null;
            }
        }

        private static void deleteOldFiles(String str, int i) {
            File[] listFiles;
            File mlDir = Utils.getMlDir();
            if (mlDir == null || (listFiles = mlDir.listFiles()) == null || listFiles.length == 0) {
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

        public static void download(String str, String str2, FileDownloadTask.Callback callback) {
            File file = new File(Utils.getMlDir(), str2);
            if (str == null || file.exists()) {
                callback.onComplete(file);
            } else {
                new FileDownloadTask(str, file, callback).execute(new String[0]);
            }
        }

        static void execute(TaskHandler taskHandler) {
            execute(taskHandler, Collections.singletonList(taskHandler));
        }

        static void execute(TaskHandler taskHandler, final List<TaskHandler> list) {
            deleteOldFiles(taskHandler.useCase, taskHandler.versionId);
            download(taskHandler.assetUri, taskHandler.useCase + "_" + taskHandler.versionId, new FileDownloadTask.Callback() { // from class: com.facebook.appevents.ml.ModelManager.TaskHandler.1
                @Override // com.facebook.appevents.internal.FileDownloadTask.Callback
                public void onComplete(File file) {
                    final Model build = Model.build(file);
                    if (build != null) {
                        for (final TaskHandler taskHandler2 : list) {
                            TaskHandler.download(taskHandler2.ruleUri, taskHandler2.useCase + "_" + taskHandler2.versionId + "_rule", new FileDownloadTask.Callback() { // from class: com.facebook.appevents.ml.ModelManager.TaskHandler.1.1
                                @Override // com.facebook.appevents.internal.FileDownloadTask.Callback
                                public void onComplete(File file2) {
                                    taskHandler2.model = build;
                                    taskHandler2.ruleFile = file2;
                                    if (taskHandler2.onPostExecute != null) {
                                        taskHandler2.onPostExecute.run();
                                    }
                                }
                            });
                        }
                    }
                }
            });
        }

        TaskHandler setOnPostExecute(Runnable runnable) {
            this.onPostExecute = runnable;
            return this;
        }
    }

    static /* synthetic */ boolean access$000(long j) {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return false;
        }
        try {
            return isValidTimestamp(j);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ModelManager.class);
            return false;
        }
    }

    static /* synthetic */ JSONObject access$100() {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return null;
        }
        try {
            return fetchModels();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ModelManager.class);
            return null;
        }
    }

    static /* synthetic */ void access$200(JSONObject jSONObject) {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return;
        }
        try {
            addModels(jSONObject);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ModelManager.class);
        }
    }

    static /* synthetic */ void access$300() {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return;
        }
        try {
            enableMTML();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ModelManager.class);
        }
    }

    static /* synthetic */ float[] access$400(JSONArray jSONArray) {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return null;
        }
        try {
            return parseJsonArray(jSONArray);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ModelManager.class);
            return null;
        }
    }

    private static void addModels(JSONObject jSONObject) {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return;
        }
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                try {
                    TaskHandler build = TaskHandler.build(jSONObject.getJSONObject(keys.next()));
                    if (build != null) {
                        mTaskHandlers.put(build.useCase, build);
                    }
                } catch (JSONException e) {
                    return;
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ModelManager.class);
        }
    }

    public static void enable() {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return;
        }
        try {
            Utility.runOnNonUiThread(new Runnable() { // from class: com.facebook.appevents.ml.ModelManager.1
                /* JADX WARN: Removed duplicated region for block: B:23:0x0067 A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:24:0x0068 A[Catch: all -> 0x0092, Exception -> 0x0099, TRY_ENTER, TryCatch #2 {Exception -> 0x0099, all -> 0x0092, blocks: (B:5:0x0008, B:7:0x0020, B:10:0x002a, B:11:0x0036, B:13:0x003f, B:15:0x0051, B:18:0x0059, B:20:0x005f, B:20:0x005f, B:24:0x0068, B:26:0x0089), top: B:31:0x0008 }] */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void run() {
                    /*
                        r5 = this;
                        r0 = r5
                        boolean r0 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.isObjectCrashing(r0)
                        if (r0 == 0) goto L8
                        return
                    L8:
                        android.content.Context r0 = com.facebook.FacebookSdk.getApplicationContext()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L99
                        java.lang.String r1 = "com.facebook.internal.MODEL_STORE"
                        r2 = 0
                        android.content.SharedPreferences r0 = r0.getSharedPreferences(r1, r2)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L99
                        r6 = r0
                        r0 = r6
                        java.lang.String r1 = "models"
                        r2 = 0
                        java.lang.String r0 = r0.getString(r1, r2)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L99
                        r7 = r0
                        r0 = r7
                        if (r0 == 0) goto L36
                        r0 = r7
                        boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L99
                        if (r0 == 0) goto L2a
                        goto L36
                    L2a:
                        org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L99
                        r1 = r0
                        r2 = r7
                        r1.<init>(r2)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L99
                        r7 = r0
                        goto L3e
                    L36:
                        org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L99
                        r7 = r0
                        r0 = r7
                        r0.<init>()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L99
                    L3e:
                        r0 = r6
                        java.lang.String r1 = "model_request_timestamp"
                        r2 = 0
                        long r0 = r0.getLong(r1, r2)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L99
                        r8 = r0
                        com.facebook.internal.FeatureManager$Feature r0 = com.facebook.internal.FeatureManager.Feature.ModelRequest     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L99
                        boolean r0 = com.facebook.internal.FeatureManager.isEnabled(r0)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L99
                        if (r0 == 0) goto L5f
                        r0 = r7
                        int r0 = r0.length()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L99
                        if (r0 == 0) goto L5f
                        r0 = r8
                        boolean r0 = com.facebook.appevents.p009ml.ModelManager.access$000(r0)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L99
                        if (r0 != 0) goto L88
                    L5f:
                        org.json.JSONObject r0 = com.facebook.appevents.p009ml.ModelManager.access$100()     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L92 java.lang.Exception -> L99 java.lang.Exception -> L99
                        r7 = r0
                        r0 = r7
                        if (r0 != 0) goto L68
                        return
                    L68:
                        r0 = r6
                        android.content.SharedPreferences$Editor r0 = r0.edit()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L99
                        java.lang.String r1 = "models"
                        r2 = r7
                        java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L99
                        android.content.SharedPreferences$Editor r0 = r0.putString(r1, r2)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L99
                        java.lang.String r1 = "model_request_timestamp"
                        long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L99
                        android.content.SharedPreferences$Editor r0 = r0.putLong(r1, r2)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L99
                        r0.apply()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L99
                    L88:
                        r0 = r7
                        com.facebook.appevents.p009ml.ModelManager.access$200(r0)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L99
                        com.facebook.appevents.p009ml.ModelManager.access$300()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L99
                        goto L98
                    L92:
                        r7 = move-exception
                        r0 = r7
                        r1 = r5
                        com.facebook.internal.instrument.crashshield.CrashShieldHandler.handleThrowable(r0, r1)
                    L98:
                        return
                    L99:
                        r7 = move-exception
                        goto L98
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p009ml.ModelManager.RunnableC09101.run():void");
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ModelManager.class);
        }
    }

    private static void enableMTML() {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return;
        }
        try {
            ArrayList arrayList = new ArrayList();
            String str = null;
            int i = 0;
            for (Map.Entry<String, TaskHandler> entry : mTaskHandlers.entrySet()) {
                String key = entry.getKey();
                int i2 = i;
                if (key.equals(Task.MTML_APP_EVENT_PREDICTION.toUseCase())) {
                    TaskHandler value = entry.getValue();
                    String str2 = value.assetUri;
                    int max = Math.max(i, value.versionId);
                    str = str2;
                    i2 = max;
                    if (FeatureManager.isEnabled(FeatureManager.Feature.SuggestedEvents)) {
                        str = str2;
                        i2 = max;
                        if (isLocaleEnglish()) {
                            arrayList.add(value.setOnPostExecute(new Runnable() { // from class: com.facebook.appevents.ml.ModelManager.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (CrashShieldHandler.isObjectCrashing(this)) {
                                        return;
                                    }
                                    try {
                                        SuggestedEventsManager.enable();
                                    } catch (Throwable th) {
                                        CrashShieldHandler.handleThrowable(th, this);
                                    }
                                }
                            }));
                            i2 = max;
                            str = str2;
                        }
                    }
                }
                i = i2;
                if (key.equals(Task.MTML_INTEGRITY_DETECT.toUseCase())) {
                    TaskHandler value2 = entry.getValue();
                    str = value2.assetUri;
                    i = Math.max(i2, value2.versionId);
                    if (FeatureManager.isEnabled(FeatureManager.Feature.IntelligentIntegrity)) {
                        arrayList.add(value2.setOnPostExecute(new Runnable() { // from class: com.facebook.appevents.ml.ModelManager.3
                            @Override // java.lang.Runnable
                            public void run() {
                                if (CrashShieldHandler.isObjectCrashing(this)) {
                                    return;
                                }
                                try {
                                    IntegrityManager.enable();
                                } catch (Throwable th) {
                                    CrashShieldHandler.handleThrowable(th, this);
                                }
                            }
                        }));
                    }
                }
            }
            if (str == null || i <= 0 || arrayList.isEmpty()) {
                return;
            }
            TaskHandler.execute(new TaskHandler(MTML_USE_CASE, str, null, i, null), arrayList);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ModelManager.class);
        }
    }

    private static JSONObject fetchModels() {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return null;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("fields", TextUtils.join(",", new String[]{USE_CASE_KEY, VERSION_ID_KEY, ASSET_URI_KEY, RULES_URI_KEY, THRESHOLD_KEY}));
            GraphRequest newGraphPathRequest = GraphRequest.newGraphPathRequest(null, String.format(SDK_MODEL_ASSET, FacebookSdk.getApplicationId()), null);
            newGraphPathRequest.setSkipClientToken(true);
            newGraphPathRequest.setParameters(bundle);
            JSONObject jSONObject = newGraphPathRequest.executeAndWait().getJSONObject();
            if (jSONObject != null) {
                return parseRawJsonObject(jSONObject);
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ModelManager.class);
            return null;
        }
    }

    public static File getRuleFile(Task task) {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return null;
        }
        try {
            TaskHandler taskHandler = mTaskHandlers.get(task.toUseCase());
            if (taskHandler != null) {
                return taskHandler.ruleFile;
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ModelManager.class);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0022, code lost:
        if (r0.getLanguage().contains("en") != false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean isLocaleEnglish() {
        /*
            java.lang.Class<com.facebook.appevents.ml.ModelManager> r0 = com.facebook.appevents.p009ml.ModelManager.class
            boolean r0 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.isObjectCrashing(r0)
            r3 = r0
            r0 = 0
            r4 = r0
            r0 = r3
            if (r0 == 0) goto Le
            r0 = 0
            return r0
        Le:
            java.util.Locale r0 = com.facebook.internal.Utility.getResourceLocale()     // Catch: java.lang.Throwable -> L29
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L25
            r0 = r5
            java.lang.String r0 = r0.getLanguage()     // Catch: java.lang.Throwable -> L29
            java.lang.String r1 = "en"
            boolean r0 = r0.contains(r1)     // Catch: java.lang.Throwable -> L29
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L27
        L25:
            r0 = 1
            r4 = r0
        L27:
            r0 = r4
            return r0
        L29:
            r5 = move-exception
            r0 = r5
            java.lang.Class<com.facebook.appevents.ml.ModelManager> r1 = com.facebook.appevents.p009ml.ModelManager.class
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.handleThrowable(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p009ml.ModelManager.isLocaleEnglish():boolean");
    }

    private static boolean isValidTimestamp(long j) {
        boolean z = false;
        if (!CrashShieldHandler.isObjectCrashing(ModelManager.class) && j != 0) {
            try {
                if (System.currentTimeMillis() - j < MODEL_REQUEST_INTERVAL_MILLISECONDS.intValue()) {
                    z = true;
                }
                return z;
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, ModelManager.class);
                return false;
            }
        }
        return false;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x003f -> B:16:0x002e). Please submit an issue!!! */
    private static float[] parseJsonArray(JSONArray jSONArray) {
        if (!CrashShieldHandler.isObjectCrashing(ModelManager.class) && jSONArray != null) {
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
                CrashShieldHandler.handleThrowable(th, ModelManager.class);
                return null;
            }
        }
        return null;
    }

    private static JSONObject parseRawJsonObject(JSONObject jSONObject) {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("data");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put(VERSION_ID_KEY, jSONObject3.getString(VERSION_ID_KEY));
                    jSONObject4.put(USE_CASE_KEY, jSONObject3.getString(USE_CASE_KEY));
                    jSONObject4.put(THRESHOLD_KEY, jSONObject3.getJSONArray(THRESHOLD_KEY));
                    jSONObject4.put(ASSET_URI_KEY, jSONObject3.getString(ASSET_URI_KEY));
                    if (jSONObject3.has(RULES_URI_KEY)) {
                        jSONObject4.put(RULES_URI_KEY, jSONObject3.getString(RULES_URI_KEY));
                    }
                    jSONObject2.put(jSONObject3.getString(USE_CASE_KEY), jSONObject4);
                }
                return jSONObject2;
            } catch (JSONException e) {
                return new JSONObject();
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ModelManager.class);
            return null;
        }
    }

    public static String[] predict(Task task, float[][] fArr, String[] strArr) {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return null;
        }
        try {
            TaskHandler taskHandler = mTaskHandlers.get(task.toUseCase());
            if (taskHandler != null && taskHandler.model != null) {
                int length = strArr.length;
                int length2 = fArr[0].length;
                MTensor mTensor = new MTensor(new int[]{length, length2});
                for (int i = 0; i < length; i++) {
                    System.arraycopy(fArr[i], 0, mTensor.getData(), i * length2, length2);
                }
                MTensor predictOnMTML = taskHandler.model.predictOnMTML(mTensor, strArr, task.toKey());
                float[] fArr2 = taskHandler.thresholds;
                if (predictOnMTML != null && fArr2 != null && predictOnMTML.getData().length != 0 && fArr2.length != 0) {
                    int i2 = C09134.$SwitchMap$com$facebook$appevents$ml$ModelManager$Task[task.ordinal()];
                    if (i2 == 1) {
                        return processIntegrityDetectionResult(predictOnMTML, fArr2);
                    }
                    if (i2 == 2) {
                        return processSuggestedEventResult(predictOnMTML, fArr2);
                    }
                    return null;
                }
                return null;
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ModelManager.class);
            return null;
        }
    }

    private static String[] processIntegrityDetectionResult(MTensor mTensor, float[] fArr) {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return null;
        }
        try {
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            float[] data = mTensor.getData();
            String[] strArr = new String[shape];
            if (shape2 != fArr.length) {
                return null;
            }
            for (int i = 0; i < shape; i++) {
                strArr[i] = IntegrityManager.INTEGRITY_TYPE_NONE;
                for (int i2 = 0; i2 < fArr.length; i2++) {
                    if (data[(i * shape2) + i2] >= fArr[i2]) {
                        strArr[i] = MTML_INTEGRITY_DETECT_PREDICTION.get(i2);
                    }
                }
            }
            return strArr;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ModelManager.class);
            return null;
        }
    }

    private static String[] processSuggestedEventResult(MTensor mTensor, float[] fArr) {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return null;
        }
        try {
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            float[] data = mTensor.getData();
            String[] strArr = new String[shape];
            if (shape2 != fArr.length) {
                return null;
            }
            for (int i = 0; i < shape; i++) {
                strArr[i] = "other";
                for (int i2 = 0; i2 < fArr.length; i2++) {
                    if (data[(i * shape2) + i2] >= fArr[i2]) {
                        strArr[i] = MTML_SUGGESTED_EVENTS_PREDICTION.get(i2);
                    }
                }
            }
            return strArr;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ModelManager.class);
            return null;
        }
    }
}
