package com.google.firebase.installations.local;

import com.android.volley.Request;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p335s.p336o.AbstractC5911c;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/local/PersistedInstallation.class */
public class PersistedInstallation {

    /* renamed from: a */
    public final File f30997a;

    /* renamed from: b */
    public final C5128c f30998b;

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/local/PersistedInstallation$RegistrationStatus.class */
    public enum RegistrationStatus {
        ATTEMPT_MIGRATION,
        NOT_GENERATED,
        UNREGISTERED,
        REGISTERED,
        REGISTER_ERROR
    }

    public PersistedInstallation(C5128c cVar) {
        File filesDir = cVar.m24468b().getFilesDir();
        this.f30997a = new File(filesDir, "PersistedInstallation." + cVar.m24463e() + ".json");
        this.f30998b = cVar;
    }

    /* renamed from: a */
    public AbstractC5911c m7294a(AbstractC5911c cVar) {
        File createTempFile;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", cVar.mo22745c());
            jSONObject.put("Status", cVar.mo22742f().ordinal());
            jSONObject.put("AuthToken", cVar.mo22751a());
            jSONObject.put("RefreshToken", cVar.mo22743e());
            jSONObject.put("TokenCreationEpochInSecs", cVar.mo22741g());
            jSONObject.put("ExpiresInSecs", cVar.mo22747b());
            jSONObject.put("FisError", cVar.mo22744d());
            createTempFile = File.createTempFile("PersistedInstallation", "tmp", this.f30998b.m24468b().getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes(Request.DEFAULT_PARAMS_ENCODING));
            fileOutputStream.close();
        } catch (IOException | JSONException e) {
        }
        if (createTempFile.renameTo(this.f30997a)) {
            return cVar;
        }
        throw new IOException("unable to rename the tmpfile to PersistedInstallation");
    }

    /* renamed from: a */
    public final JSONObject m7295a() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(this.f30997a);
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

    /* renamed from: b */
    public AbstractC5911c m7293b() {
        JSONObject a = m7295a();
        String optString = a.optString("Fid", null);
        int optInt = a.optInt("Status", RegistrationStatus.ATTEMPT_MIGRATION.ordinal());
        String optString2 = a.optString("AuthToken", null);
        String optString3 = a.optString("RefreshToken", null);
        long optLong = a.optLong("TokenCreationEpochInSecs", 0L);
        long optLong2 = a.optLong("ExpiresInSecs", 0L);
        String optString4 = a.optString("FisError", null);
        AbstractC5911c.AbstractC5912a p = AbstractC5911c.m22732p();
        p.mo22726b(optString);
        p.mo22729a(RegistrationStatus.values()[optInt]);
        p.mo22728a(optString2);
        p.mo22724d(optString3);
        p.mo22727b(optLong);
        p.mo22730a(optLong2);
        p.mo22725c(optString4);
        return p.mo22731a();
    }
}
