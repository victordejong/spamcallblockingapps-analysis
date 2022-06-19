package io.fabric.sdk.android.services.p072e;

import io.fabric.sdk.android.AbstractC1459h;
import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.services.p068b.C1480i;
import io.fabric.sdk.android.services.p071d.C1548b;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStream;
import org.json.JSONObject;
/* renamed from: io.fabric.sdk.android.services.e.i */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/e/i.class */
public class C1559i implements AbstractC1557g {

    /* renamed from: a */
    private final AbstractC1459h f4240a;

    public C1559i(AbstractC1459h abstractC1459h) {
        this.f4240a = abstractC1459h;
    }

    @Override // io.fabric.sdk.android.services.p072e.AbstractC1557g
    /* renamed from: a */
    public JSONObject mo3330a() {
        FileInputStream fileInputStream;
        Throwable th;
        JSONObject jSONObject;
        FileInputStream fileInputStream2;
        Exception e;
        C1449c.m3572g().mo3552a("Fabric", "Reading cached settings...");
        FileInputStream fileInputStream3 = null;
        try {
            File file = new File(new C1548b(this.f4240a).mo3339a(), "com.crashlytics.settings.json");
            if (file.exists()) {
                fileInputStream2 = new FileInputStream(file);
                FileInputStream fileInputStream4 = fileInputStream2;
                try {
                    try {
                        fileInputStream3 = fileInputStream2;
                        jSONObject = new JSONObject(C1480i.m3494a((InputStream) fileInputStream2));
                    } catch (Exception e2) {
                        e = e2;
                        fileInputStream4 = fileInputStream2;
                        C1449c.m3572g().mo3545e("Fabric", "Failed to fetch cached settings", e);
                        C1480i.m3497a((Closeable) fileInputStream2, "Error while closing settings cache file.");
                        jSONObject = null;
                        return jSONObject;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = fileInputStream4;
                    C1480i.m3497a((Closeable) fileInputStream, "Error while closing settings cache file.");
                    throw th;
                }
            } else {
                C1449c.m3572g().mo3552a("Fabric", "No cached settings found.");
                jSONObject = null;
            }
            C1480i.m3497a((Closeable) fileInputStream3, "Error while closing settings cache file.");
        } catch (Exception e3) {
            e = e3;
            fileInputStream2 = null;
        } catch (Throwable th3) {
            fileInputStream = null;
            th = th3;
            C1480i.m3497a((Closeable) fileInputStream, "Error while closing settings cache file.");
            throw th;
        }
        return jSONObject;
    }

    @Override // io.fabric.sdk.android.services.p072e.AbstractC1557g
    /* renamed from: a */
    public void mo3329a(long j, JSONObject jSONObject) {
        Throwable th;
        Exception e;
        FileWriter fileWriter;
        FileWriter fileWriter2;
        C1449c.m3572g().mo3552a("Fabric", "Writing settings to cache file...");
        if (jSONObject != null) {
            FileWriter fileWriter3 = null;
            try {
                try {
                    jSONObject.put("expires_at", j);
                    fileWriter3 = null;
                    fileWriter2 = new FileWriter(new File(new C1548b(this.f4240a).mo3339a(), "com.crashlytics.settings.json"));
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
                C1480i.m3497a((Closeable) fileWriter2, "Failed to close settings writer.");
            } catch (Exception e3) {
                fileWriter = fileWriter2;
                e = e3;
                fileWriter3 = fileWriter;
                C1449c.m3572g().mo3545e("Fabric", "Failed to cache settings", e);
                C1480i.m3497a((Closeable) fileWriter, "Failed to close settings writer.");
            } catch (Throwable th3) {
                th = th3;
                fileWriter3 = fileWriter2;
                C1480i.m3497a((Closeable) fileWriter3, "Failed to close settings writer.");
                throw th;
            }
        }
    }
}
