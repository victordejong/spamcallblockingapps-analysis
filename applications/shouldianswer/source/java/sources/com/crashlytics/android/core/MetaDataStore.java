package com.crashlytics.android.core;

import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.services.p068b.C1480i;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/MetaDataStore.class */
class MetaDataStore {
    private static final String KEYDATA_SUFFIX = "keys";
    private static final String KEY_USER_EMAIL = "userEmail";
    private static final String KEY_USER_ID = "userId";
    private static final String KEY_USER_NAME = "userName";
    private static final String METADATA_EXT = ".meta";
    private static final String USERDATA_SUFFIX = "user";
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private final File filesDir;

    public MetaDataStore(File file) {
        this.filesDir = file;
    }

    private static Map<String, String> jsonToKeysData(String str) {
        JSONObject jSONObject = new JSONObject(str);
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, valueOrNull(jSONObject, next));
        }
        return hashMap;
    }

    private static UserMetaData jsonToUserData(String str) {
        JSONObject jSONObject = new JSONObject(str);
        return new UserMetaData(valueOrNull(jSONObject, KEY_USER_ID), valueOrNull(jSONObject, KEY_USER_NAME), valueOrNull(jSONObject, KEY_USER_EMAIL));
    }

    private static String keysDataToJson(Map<String, String> map) {
        return new JSONObject(map).toString();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.crashlytics.android.core.MetaDataStore$1] */
    private static String userDataToJson(final UserMetaData userMetaData) {
        return new JSONObject() { // from class: com.crashlytics.android.core.MetaDataStore.1
            {
                put(MetaDataStore.KEY_USER_ID, userMetaData.f3834id);
                put(MetaDataStore.KEY_USER_NAME, userMetaData.name);
                put(MetaDataStore.KEY_USER_EMAIL, userMetaData.email);
            }
        }.toString();
    }

    private static String valueOrNull(JSONObject jSONObject, String str) {
        String str2 = null;
        if (!jSONObject.isNull(str)) {
            str2 = jSONObject.optString(str, null);
        }
        return str2;
    }

    public File getKeysFileForSession(String str) {
        File file = this.filesDir;
        return new File(file, str + KEYDATA_SUFFIX + METADATA_EXT);
    }

    public File getUserDataFileForSession(String str) {
        File file = this.filesDir;
        return new File(file, str + USERDATA_SUFFIX + METADATA_EXT);
    }

    public Map<String, String> readKeyData(String str) {
        Throwable th;
        FileInputStream fileInputStream;
        Exception e;
        File keysFileForSession = getKeysFileForSession(str);
        if (!keysFileForSession.exists()) {
            return Collections.emptyMap();
        }
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(keysFileForSession);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        }
        try {
            Map<String, String> jsonToKeysData = jsonToKeysData(C1480i.m3494a((InputStream) fileInputStream));
            C1480i.m3497a((Closeable) fileInputStream, "Failed to close user metadata file.");
            return jsonToKeysData;
        } catch (Exception e3) {
            e = e3;
            C1449c.m3572g().mo3545e(CrashlyticsCore.TAG, "Error deserializing user metadata.", e);
            C1480i.m3497a((Closeable) fileInputStream, "Failed to close user metadata file.");
            return Collections.emptyMap();
        } catch (Throwable th3) {
            fileInputStream2 = fileInputStream;
            th = th3;
            C1480i.m3497a((Closeable) fileInputStream2, "Failed to close user metadata file.");
            throw th;
        }
    }

    public UserMetaData readUserData(String str) {
        Throwable th;
        FileInputStream fileInputStream;
        Exception e;
        File userDataFileForSession = getUserDataFileForSession(str);
        if (!userDataFileForSession.exists()) {
            return UserMetaData.EMPTY;
        }
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(userDataFileForSession);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        }
        try {
            UserMetaData jsonToUserData = jsonToUserData(C1480i.m3494a((InputStream) fileInputStream));
            C1480i.m3497a((Closeable) fileInputStream, "Failed to close user metadata file.");
            return jsonToUserData;
        } catch (Exception e3) {
            e = e3;
            C1449c.m3572g().mo3545e(CrashlyticsCore.TAG, "Error deserializing user metadata.", e);
            C1480i.m3497a((Closeable) fileInputStream, "Failed to close user metadata file.");
            return UserMetaData.EMPTY;
        } catch (Throwable th3) {
            fileInputStream2 = fileInputStream;
            th = th3;
            C1480i.m3497a((Closeable) fileInputStream2, "Failed to close user metadata file.");
            throw th;
        }
    }

    public void writeKeyData(String str, Map<String, String> map) {
        BufferedWriter bufferedWriter;
        Throwable th;
        Exception e;
        String keysDataToJson;
        File keysFileForSession = getKeysFileForSession(str);
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                keysDataToJson = keysDataToJson(map);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(keysFileForSession), UTF_8));
            } catch (Throwable th2) {
                bufferedWriter = bufferedWriter2;
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
            bufferedWriter = null;
        }
        try {
            bufferedWriter.write(keysDataToJson);
            bufferedWriter.flush();
            C1480i.m3497a((Closeable) bufferedWriter, "Failed to close key/value metadata file.");
        } catch (Exception e3) {
            e = e3;
            bufferedWriter2 = bufferedWriter;
            C1449c.m3572g().mo3545e(CrashlyticsCore.TAG, "Error serializing key/value metadata.", e);
            C1480i.m3497a((Closeable) bufferedWriter, "Failed to close key/value metadata file.");
        } catch (Throwable th3) {
            th = th3;
            C1480i.m3497a((Closeable) bufferedWriter, "Failed to close key/value metadata file.");
            throw th;
        }
    }

    public void writeUserData(String str, UserMetaData userMetaData) {
        BufferedWriter bufferedWriter;
        Throwable th;
        Exception e;
        String userDataToJson;
        File userDataFileForSession = getUserDataFileForSession(str);
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                userDataToJson = userDataToJson(userMetaData);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(userDataFileForSession), UTF_8));
            } catch (Throwable th2) {
                bufferedWriter = bufferedWriter2;
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
            bufferedWriter = null;
        }
        try {
            bufferedWriter.write(userDataToJson);
            bufferedWriter.flush();
            C1480i.m3497a((Closeable) bufferedWriter, "Failed to close user metadata file.");
        } catch (Exception e3) {
            e = e3;
            bufferedWriter2 = bufferedWriter;
            C1449c.m3572g().mo3545e(CrashlyticsCore.TAG, "Error serializing user metadata.", e);
            C1480i.m3497a((Closeable) bufferedWriter, "Failed to close user metadata file.");
        } catch (Throwable th3) {
            th = th3;
            C1480i.m3497a((Closeable) bufferedWriter, "Failed to close user metadata file.");
            throw th;
        }
    }
}
