package com.google.firebase.installations.p167a;

import com.google.firebase.C4865b;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.firebase.installations.a.c */
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/a/c.class */
public class C5008c {

    /* renamed from: a */
    private final File f21227a;

    /* renamed from: b */
    private final C4865b f21228b;

    /* renamed from: com.google.firebase.installations.a.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/installations/a/c$a.class */
    public enum EnumC5009a {
        ATTEMPT_MIGRATION,
        NOT_GENERATED,
        UNREGISTERED,
        REGISTERED,
        REGISTER_ERROR
    }

    public C5008c(C4865b c4865b) {
        this.f21227a = new File(c4865b.m2160a().getFilesDir(), "PersistedInstallation." + c4865b.m2144g() + ".json");
        this.f21228b = c4865b;
    }

    /* renamed from: b */
    private JSONObject m1869b() {
        JSONObject jSONObject;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(this.f21227a);
            while (true) {
                try {
                    int read = fileInputStream.read(bArr, 0, bArr.length);
                    if (read < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        if (th != null) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable th3) {
                            }
                        } else {
                            fileInputStream.close();
                        }
                        throw th2;
                    }
                }
            }
            jSONObject = new JSONObject(byteArrayOutputStream.toString());
            if (0 != 0) {
                try {
                    fileInputStream.close();
                } catch (Throwable th4) {
                }
            } else {
                fileInputStream.close();
            }
        } catch (IOException | JSONException e) {
            jSONObject = new JSONObject();
        }
        return jSONObject;
    }

    /* renamed from: a */
    public AbstractC5010d m1871a() {
        JSONObject m1869b = m1869b();
        String optString = m1869b.optString("Fid", null);
        int optInt = m1869b.optInt("Status", EnumC5009a.ATTEMPT_MIGRATION.ordinal());
        String optString2 = m1869b.optString("AuthToken", null);
        String optString3 = m1869b.optString("RefreshToken", null);
        long optLong = m1869b.optLong("TokenCreationEpochInSecs", 0L);
        long optLong2 = m1869b.optLong("ExpiresInSecs", 0L);
        return AbstractC5010d.m1849p().mo1845a(optString).mo1846a(EnumC5009a.values()[optInt]).mo1843b(optString2).mo1842c(optString3).mo1844b(optLong).mo1847a(optLong2).mo1841d(m1869b.optString("FisError", null)).mo1848a();
    }

    /* renamed from: a */
    public AbstractC5010d m1870a(AbstractC5010d abstractC5010d) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", abstractC5010d.mo1868a());
            jSONObject.put("Status", abstractC5010d.mo1864b().ordinal());
            jSONObject.put("AuthToken", abstractC5010d.mo1862c());
            jSONObject.put("RefreshToken", abstractC5010d.mo1861d());
            jSONObject.put("TokenCreationEpochInSecs", abstractC5010d.mo1859f());
            jSONObject.put("ExpiresInSecs", abstractC5010d.mo1860e());
            jSONObject.put("FisError", abstractC5010d.mo1858g());
            File createTempFile = File.createTempFile("PersistedInstallation", "tmp", this.f21228b.m2160a().getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
            if (!createTempFile.renameTo(this.f21227a)) {
                throw new IOException("unable to rename the tmpfile to PersistedInstallation");
            }
        } catch (IOException e) {
        } catch (JSONException e2) {
        }
        return abstractC5010d;
    }
}
