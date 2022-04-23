package com.google.firebase.crashlytics.internal.settings;

import android.content.Context;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.persistence.FileStoreImpl;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/settings/CachedSettingsIo.class */
public class CachedSettingsIo {
    private static final String SETTINGS_CACHE_FILENAME = "com.crashlytics.settings.json";
    private final Context context;

    public CachedSettingsIo(Context context) {
        this.context = context;
    }

    private File getSettingsFile() {
        return new File(new FileStoreImpl(this.context).getFilesDir(), SETTINGS_CACHE_FILENAME);
    }

    public JSONObject readCachedSettings() {
        Throwable th;
        FileInputStream fileInputStream;
        Exception e;
        Logger.getLogger().d("Checking for cached settings...");
        JSONObject jSONObject = null;
        FileInputStream fileInputStream2 = null;
        try {
            File settingsFile = getSettingsFile();
            if (settingsFile.exists()) {
                fileInputStream2 = new FileInputStream(settingsFile);
                fileInputStream = fileInputStream2;
                try {
                    try {
                        jSONObject = new JSONObject(CommonUtils.streamToString(fileInputStream2));
                    } catch (Exception e2) {
                        e = e2;
                        fileInputStream = fileInputStream2;
                        Logger.getLogger().e("Failed to fetch cached settings", e);
                        CommonUtils.closeOrLog(fileInputStream2, "Error while closing settings cache file.");
                        return jSONObject;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    CommonUtils.closeOrLog(fileInputStream, "Error while closing settings cache file.");
                    throw th;
                }
            } else {
                Logger.getLogger().v("Settings file does not exist.");
                jSONObject = null;
            }
            CommonUtils.closeOrLog(fileInputStream2, "Error while closing settings cache file.");
        } catch (Exception e3) {
            e = e3;
            fileInputStream2 = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
            CommonUtils.closeOrLog(fileInputStream, "Error while closing settings cache file.");
            throw th;
        }
        return jSONObject;
    }

    public void writeCachedSettings(long j, JSONObject jSONObject) {
        Throwable th;
        Exception e;
        FileWriter fileWriter;
        Logger.getLogger().v("Writing settings to cache file...");
        if (jSONObject != null) {
            FileWriter fileWriter2 = null;
            FileWriter fileWriter3 = null;
            try {
                try {
                    jSONObject.put("expires_at", j);
                    fileWriter = new FileWriter(getSettingsFile());
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                fileWriter.write(jSONObject.toString());
                fileWriter.flush();
                CommonUtils.closeOrLog(fileWriter, "Failed to close settings writer.");
            } catch (Exception e3) {
                e = e3;
                fileWriter2 = fileWriter;
                fileWriter3 = fileWriter2;
                Logger.getLogger().e("Failed to cache settings", e);
                CommonUtils.closeOrLog(fileWriter2, "Failed to close settings writer.");
            } catch (Throwable th3) {
                th = th3;
                fileWriter3 = fileWriter;
                CommonUtils.closeOrLog(fileWriter3, "Failed to close settings writer.");
                throw th;
            }
        }
    }
}
