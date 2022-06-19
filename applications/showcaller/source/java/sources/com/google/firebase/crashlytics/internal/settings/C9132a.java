package com.google.firebase.crashlytics.internal.settings;

import android.content.Context;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.p293d.C8898b;
import com.google.firebase.crashlytics.p293d.p300j.C9064i;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import org.json.JSONObject;
/* renamed from: com.google.firebase.crashlytics.internal.settings.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/settings/a.class */
public class C9132a {

    /* renamed from: a */
    private final Context f39415a;

    public C9132a(Context context) {
        this.f39415a = context;
    }

    /* renamed from: a */
    private File m1761a() {
        return new File(new C9064i(this.f39415a).mo1991b(), "com.crashlytics.settings.json");
    }

    /* renamed from: b */
    public JSONObject m1760b() {
        Throwable th;
        JSONObject jSONObject;
        FileInputStream fileInputStream;
        Exception e;
        C8898b.m2397f().m2401b("Checking for cached settings...");
        FileInputStream fileInputStream2 = null;
        try {
            try {
                File m1761a = m1761a();
                if (m1761a.exists()) {
                    fileInputStream = new FileInputStream(m1761a);
                    try {
                        fileInputStream2 = fileInputStream;
                        jSONObject = new JSONObject(CommonUtils.m1975C(fileInputStream));
                    } catch (Exception e2) {
                        e = e2;
                        C8898b.m2397f().m2398e("Failed to fetch cached settings", e);
                        CommonUtils.m1970e(fileInputStream, "Error while closing settings cache file.");
                        jSONObject = null;
                        return jSONObject;
                    }
                } else {
                    C8898b.m2397f().m2394i("Settings file does not exist.");
                    jSONObject = null;
                }
                CommonUtils.m1970e(fileInputStream2, "Error while closing settings cache file.");
            } catch (Throwable th2) {
                th = th2;
                CommonUtils.m1970e(fileInputStream2, "Error while closing settings cache file.");
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream2 = null;
            CommonUtils.m1970e(fileInputStream2, "Error while closing settings cache file.");
            throw th;
        }
        return jSONObject;
    }

    /* renamed from: c */
    public void m1759c(long j, JSONObject jSONObject) {
        Throwable th;
        Exception e;
        FileWriter fileWriter;
        FileWriter fileWriter2;
        C8898b.m2397f().m2394i("Writing settings to cache file...");
        if (jSONObject != null) {
            FileWriter fileWriter3 = null;
            try {
                try {
                    jSONObject.put("expires_at", j);
                    fileWriter3 = null;
                    fileWriter2 = new FileWriter(m1761a());
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
                CommonUtils.m1970e(fileWriter2, "Failed to close settings writer.");
            } catch (Exception e3) {
                fileWriter = fileWriter2;
                e = e3;
                fileWriter3 = fileWriter;
                C8898b.m2397f().m2398e("Failed to cache settings", e);
                CommonUtils.m1970e(fileWriter, "Failed to close settings writer.");
            } catch (Throwable th3) {
                th = th3;
                fileWriter3 = fileWriter2;
                CommonUtils.m1970e(fileWriter3, "Failed to close settings writer.");
                throw th;
            }
        }
    }
}
