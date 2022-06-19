package com.google.firebase.crashlytics.internal.settings;

import android.content.Context;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.persistence.FileStoreImpl;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/settings/CachedSettingsIo.class */
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
        JSONObject jSONObject;
        Exception e;
        Logger.getLogger().m1348d("Checking for cached settings...");
        FileInputStream fileInputStream2 = null;
        try {
            File settingsFile = getSettingsFile();
            if (settingsFile.exists()) {
                fileInputStream2 = new FileInputStream(settingsFile);
                FileInputStream fileInputStream3 = fileInputStream2;
                try {
                    try {
                        jSONObject = new JSONObject(CommonUtils.streamToString(fileInputStream2));
                    } catch (Exception e2) {
                        e = e2;
                        fileInputStream3 = fileInputStream2;
                        Logger.getLogger().m1345e("Failed to fetch cached settings", e);
                        CommonUtils.closeOrLog(fileInputStream2, "Error while closing settings cache file.");
                        jSONObject = null;
                        return jSONObject;
                    }
                } catch (Throwable th2) {
                    fileInputStream = fileInputStream3;
                    th = th2;
                    CommonUtils.closeOrLog(fileInputStream, "Error while closing settings cache file.");
                    throw th;
                }
            } else {
                Logger.getLogger().m1342v("Settings file does not exist.");
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
        FileWriter fileWriter2;
        Logger.getLogger().m1342v("Writing settings to cache file...");
        if (jSONObject != null) {
            FileWriter fileWriter3 = null;
            try {
                try {
                    jSONObject.put("expires_at", j);
                    fileWriter3 = null;
                    fileWriter2 = new FileWriter(getSettingsFile());
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e2) {
                e = e2;
                fileWriter = null;
            }
            try {
                fileWriter2.write(jSONObject.toString());
                fileWriter2.flush();
                CommonUtils.closeOrLog(fileWriter2, "Failed to close settings writer.");
            } catch (Exception e3) {
                fileWriter = fileWriter2;
                e = e3;
                fileWriter3 = fileWriter;
                Logger.getLogger().m1345e("Failed to cache settings", e);
                CommonUtils.closeOrLog(fileWriter, "Failed to close settings writer.");
            } catch (Throwable th3) {
                th = th3;
                fileWriter3 = fileWriter2;
                CommonUtils.closeOrLog(fileWriter3, "Failed to close settings writer.");
                throw th;
            }
        }
    }
}
