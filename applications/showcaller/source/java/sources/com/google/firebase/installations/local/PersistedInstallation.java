package com.google.firebase.installations.local;

import com.google.firebase.C8849c;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/local/PersistedInstallation.class */
public class PersistedInstallation {

    /* renamed from: a */
    private final File f39615a;

    /* renamed from: b */
    private final C8849c f39616b;

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/local/PersistedInstallation$RegistrationStatus.class */
    public enum RegistrationStatus {
        ATTEMPT_MIGRATION,
        NOT_GENERATED,
        UNREGISTERED,
        REGISTERED,
        REGISTER_ERROR
    }

    public PersistedInstallation(C8849c c8849c) {
        File filesDir = c8849c.m2533g().getFilesDir();
        this.f39615a = new File(filesDir, "PersistedInstallation." + c8849c.m2529k() + ".json");
        this.f39616b = c8849c;
    }

    /* renamed from: b */
    private JSONObject m1517b() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(this.f39615a);
            while (true) {
                int read = fileInputStream.read(bArr, 0, 16384);
                if (read < 0) {
                    JSONObject jSONObject = new JSONObject(byteArrayOutputStream.toString());
                    fileInputStream.close();
                    return jSONObject;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } catch (IOException | JSONException e) {
            return new JSONObject();
        }
    }

    /* renamed from: a */
    public AbstractC9225c m1518a(AbstractC9225c abstractC9225c) {
        File createTempFile;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", abstractC9225c.mo1503d());
            jSONObject.put("Status", abstractC9225c.mo1500g().ordinal());
            jSONObject.put("AuthToken", abstractC9225c.mo1505b());
            jSONObject.put("RefreshToken", abstractC9225c.mo1501f());
            jSONObject.put("TokenCreationEpochInSecs", abstractC9225c.mo1499h());
            jSONObject.put("ExpiresInSecs", abstractC9225c.mo1504c());
            jSONObject.put("FisError", abstractC9225c.mo1502e());
            createTempFile = File.createTempFile("PersistedInstallation", "tmp", this.f39616b.m2533g().getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
        } catch (IOException | JSONException e) {
        }
        if (createTempFile.renameTo(this.f39615a)) {
            return abstractC9225c;
        }
        throw new IOException("unable to rename the tmpfile to PersistedInstallation");
    }

    /* renamed from: c */
    public AbstractC9225c m1516c() {
        JSONObject m1517b = m1517b();
        String optString = m1517b.optString("Fid", null);
        int optInt = m1517b.optInt("Status", RegistrationStatus.ATTEMPT_MIGRATION.ordinal());
        String optString2 = m1517b.optString("AuthToken", null);
        String optString3 = m1517b.optString("RefreshToken", null);
        long optLong = m1517b.optLong("TokenCreationEpochInSecs", 0L);
        long optLong2 = m1517b.optLong("ExpiresInSecs", 0L);
        return AbstractC9225c.m1506a().mo1483d(optString).mo1480g(RegistrationStatus.values()[optInt]).mo1485b(optString2).mo1481f(optString3).mo1479h(optLong).mo1484c(optLong2).mo1482e(m1517b.optString("FisError", null)).mo1486a();
    }
}
