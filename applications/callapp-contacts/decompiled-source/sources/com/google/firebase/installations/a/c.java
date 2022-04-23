package com.google.firebase.installations.a;

import com.google.firebase.b;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/a/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final File f32391a;

    /* renamed from: b  reason: collision with root package name */
    private final b f32392b;

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/a/c$a.class */
    public enum a {
        ATTEMPT_MIGRATION,
        NOT_GENERATED,
        UNREGISTERED,
        REGISTERED,
        REGISTER_ERROR
    }

    public c(b bVar) {
        File filesDir = bVar.a().getFilesDir();
        this.f32391a = new File(filesDir, "PersistedInstallation." + bVar.g() + ".json");
        this.f32392b = bVar;
    }

    private JSONObject b() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(this.f32391a);
            while (true) {
                int read = fileInputStream.read(bArr, 0, 16384);
                if (read >= 0) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    JSONObject jSONObject = new JSONObject(byteArrayOutputStream.toString());
                    fileInputStream.close();
                    return jSONObject;
                }
            }
        } catch (IOException | JSONException e) {
            return new JSONObject();
        }
    }

    public final d a() {
        JSONObject b2 = b();
        String optString = b2.optString("Fid", null);
        int optInt = b2.optInt("Status", a.ATTEMPT_MIGRATION.ordinal());
        String optString2 = b2.optString("AuthToken", null);
        String optString3 = b2.optString("RefreshToken", null);
        long optLong = b2.optLong("TokenCreationEpochInSecs", 0L);
        long optLong2 = b2.optLong("ExpiresInSecs", 0L);
        return d.n().a(optString).a(a.values()[optInt]).b(optString2).c(optString3).b(optLong).a(optLong2).d(b2.optString("FisError", null)).a();
    }

    public final d a(d dVar) {
        File createTempFile;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", dVar.a());
            jSONObject.put("Status", dVar.b().ordinal());
            jSONObject.put("AuthToken", dVar.c());
            jSONObject.put("RefreshToken", dVar.d());
            jSONObject.put("TokenCreationEpochInSecs", dVar.f());
            jSONObject.put("ExpiresInSecs", dVar.e());
            jSONObject.put("FisError", dVar.g());
            createTempFile = File.createTempFile("PersistedInstallation", "tmp", this.f32392b.a().getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
        } catch (IOException | JSONException e) {
        }
        if (createTempFile.renameTo(this.f32391a)) {
            return dVar;
        }
        throw new IOException("unable to rename the tmpfile to PersistedInstallation");
    }
}
