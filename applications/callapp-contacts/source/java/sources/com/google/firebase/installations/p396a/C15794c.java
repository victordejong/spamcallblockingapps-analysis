package com.google.firebase.installations.p396a;

import com.google.firebase.C15601b;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.firebase.installations.a.c */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/a/c.class */
public final class C15794c {

    /* renamed from: a */
    private final File f56198a;

    /* renamed from: b */
    private final C15601b f56199b;

    /* renamed from: com.google.firebase.installations.a.c$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/a/c$a.class */
    public enum EnumC15795a {
        ATTEMPT_MIGRATION,
        NOT_GENERATED,
        UNREGISTERED,
        REGISTERED,
        REGISTER_ERROR
    }

    public C15794c(C15601b c15601b) {
        File filesDir = c15601b.m8583a().getFilesDir();
        this.f56198a = new File(filesDir, "PersistedInstallation." + c15601b.m8570g() + ".json");
        this.f56199b = c15601b;
    }

    /* renamed from: b */
    private JSONObject m8378b() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(this.f56198a);
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
    public final AbstractC15796d m8380a() {
        JSONObject m8378b = m8378b();
        String optString = m8378b.optString("Fid", null);
        int optInt = m8378b.optInt("Status", EnumC15795a.ATTEMPT_MIGRATION.ordinal());
        String optString2 = m8378b.optString("AuthToken", null);
        String optString3 = m8378b.optString("RefreshToken", null);
        long optLong = m8378b.optLong("TokenCreationEpochInSecs", 0L);
        long optLong2 = m8378b.optLong("ExpiresInSecs", 0L);
        return AbstractC15796d.m8363n().mo8359a(optString).mo8360a(EnumC15795a.values()[optInt]).mo8357b(optString2).mo8356c(optString3).mo8358b(optLong).mo8361a(optLong2).mo8355d(m8378b.optString("FisError", null)).mo8362a();
    }

    /* renamed from: a */
    public final AbstractC15796d m8379a(AbstractC15796d abstractC15796d) {
        File createTempFile;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", abstractC15796d.mo8377a());
            jSONObject.put("Status", abstractC15796d.mo8375b().ordinal());
            jSONObject.put("AuthToken", abstractC15796d.mo8374c());
            jSONObject.put("RefreshToken", abstractC15796d.mo8373d());
            jSONObject.put("TokenCreationEpochInSecs", abstractC15796d.mo8371f());
            jSONObject.put("ExpiresInSecs", abstractC15796d.mo8372e());
            jSONObject.put("FisError", abstractC15796d.mo8370g());
            createTempFile = File.createTempFile("PersistedInstallation", "tmp", this.f56199b.m8583a().getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
        } catch (IOException | JSONException e) {
        }
        if (createTempFile.renameTo(this.f56198a)) {
            return abstractC15796d;
        }
        throw new IOException("unable to rename the tmpfile to PersistedInstallation");
    }
}
