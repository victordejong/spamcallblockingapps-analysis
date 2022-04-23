package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.Logger;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/MetaDataStore.class */
class MetaDataStore {
    private static final String KEYDATA_SUFFIX = "keys";
    private static final String KEY_USER_ID = "userId";
    private static final String METADATA_EXT = ".meta";
    private static final String USERDATA_SUFFIX = "user";
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private final File filesDir;

    public MetaDataStore(File file) {
        this.filesDir = file;
    }

    private static Map<String, String> jsonToKeysData(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, valueOrNull(jSONObject, next));
        }
        return hashMap;
    }

    private static UserMetadata jsonToUserData(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        UserMetadata userMetadata = new UserMetadata();
        userMetadata.setUserId(valueOrNull(jSONObject, KEY_USER_ID));
        return userMetadata;
    }

    private static String keysDataToJson(Map<String, String> map) throws JSONException {
        return new JSONObject(map).toString();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.firebase.crashlytics.internal.common.MetaDataStore$1] */
    private static String userDataToJson(UserMetadata userMetadata) throws JSONException {
        return new JSONObject() { // from class: com.google.firebase.crashlytics.internal.common.MetaDataStore.1
            {
                put(MetaDataStore.KEY_USER_ID, UserMetadata.this.getUserId());
            }
        }.toString();
    }

    private static String valueOrNull(JSONObject jSONObject, String str) {
        if (!jSONObject.isNull(str)) {
            return jSONObject.optString(str, null);
        }
        return null;
    }

    public File getKeysFileForSession(String str) {
        File file = this.filesDir;
        return new File(file, str + "keys.meta");
    }

    public File getUserDataFileForSession(String str) {
        File file = this.filesDir;
        return new File(file, str + "user.meta");
    }

    public Map<String, String> readKeyData(String str) {
        Throwable th;
        Exception e;
        File keysFileForSession = getKeysFileForSession(str);
        if (!keysFileForSession.exists()) {
            return Collections.emptyMap();
        }
        FileInputStream fileInputStream = null;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(keysFileForSession);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            Map<String, String> jsonToKeysData = jsonToKeysData(CommonUtils.streamToString(fileInputStream));
            CommonUtils.closeOrLog(fileInputStream, "Failed to close user metadata file.");
            return jsonToKeysData;
        } catch (Exception e3) {
            e = e3;
            Logger.getLogger().e("Error deserializing user metadata.", e);
            CommonUtils.closeOrLog(fileInputStream, "Failed to close user metadata file.");
            return Collections.emptyMap();
        } catch (Throwable th3) {
            th = th3;
            fileInputStream2 = fileInputStream;
            CommonUtils.closeOrLog(fileInputStream2, "Failed to close user metadata file.");
            throw th;
        }
    }

    public UserMetadata readUserData(String str) {
        Throwable th;
        Exception e;
        File userDataFileForSession = getUserDataFileForSession(str);
        if (!userDataFileForSession.exists()) {
            return new UserMetadata();
        }
        FileInputStream fileInputStream = null;
        fileInputStream = null;
        try {
            try {
                fileInputStream = new FileInputStream(userDataFileForSession);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            UserMetadata jsonToUserData = jsonToUserData(CommonUtils.streamToString(fileInputStream));
            CommonUtils.closeOrLog(fileInputStream, "Failed to close user metadata file.");
            return jsonToUserData;
        } catch (Exception e3) {
            e = e3;
            Logger.getLogger().e("Error deserializing user metadata.", e);
            CommonUtils.closeOrLog(fileInputStream, "Failed to close user metadata file.");
            return new UserMetadata();
        } catch (Throwable th3) {
            th = th3;
            CommonUtils.closeOrLog(fileInputStream, "Failed to close user metadata file.");
            throw th;
        }
    }

    public void writeKeyData(String str, Map<String, String> map) {
        Throwable th;
        Exception e;
        String keysDataToJson;
        File keysFileForSession = getKeysFileForSession(str);
        BufferedWriter bufferedWriter = null;
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                keysDataToJson = keysDataToJson(map);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(keysFileForSession), UTF_8));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            bufferedWriter.write(keysDataToJson);
            bufferedWriter.flush();
            CommonUtils.closeOrLog(bufferedWriter, "Failed to close key/value metadata file.");
        } catch (Exception e3) {
            e = e3;
            Logger.getLogger().e("Error serializing key/value metadata.", e);
            CommonUtils.closeOrLog(bufferedWriter, "Failed to close key/value metadata file.");
        } catch (Throwable th3) {
            th = th3;
            bufferedWriter2 = bufferedWriter;
            CommonUtils.closeOrLog(bufferedWriter2, "Failed to close key/value metadata file.");
            throw th;
        }
    }

    public void writeUserData(String str, UserMetadata userMetadata) {
        Throwable th;
        Exception e;
        String userDataToJson;
        File userDataFileForSession = getUserDataFileForSession(str);
        BufferedWriter bufferedWriter = null;
        bufferedWriter = null;
        try {
            try {
                userDataToJson = userDataToJson(userMetadata);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(userDataFileForSession), UTF_8));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            bufferedWriter.write(userDataToJson);
            bufferedWriter.flush();
            CommonUtils.closeOrLog(bufferedWriter, "Failed to close user metadata file.");
        } catch (Exception e3) {
            e = e3;
            Logger.getLogger().e("Error serializing user metadata.", e);
            CommonUtils.closeOrLog(bufferedWriter, "Failed to close user metadata file.");
        } catch (Throwable th3) {
            th = th3;
            CommonUtils.closeOrLog(bufferedWriter, "Failed to close user metadata file.");
            throw th;
        }
    }
}
