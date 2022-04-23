package p081h.p203i.p325c.p367v.p368q;

import androidx.annotation.NonNull;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p367v.p368q.AbstractC9958d;
/* renamed from: h.i.c.v.q.c */
/* loaded from: classes2-dex2jar.jar:h/i/c/v/q/c.class */
public class C9956c {

    /* renamed from: a */
    public final File f22529a;
    @NonNull

    /* renamed from: b */
    public final C9435c f22530b;

    /* renamed from: h.i.c.v.q.c$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/v/q/c$a.class */
    public enum EnumC9957a {
        ATTEMPT_MIGRATION,
        NOT_GENERATED,
        UNREGISTERED,
        REGISTERED,
        REGISTER_ERROR
    }

    public C9956c(@NonNull C9435c cVar) {
        File filesDir = cVar.m15173b().getFilesDir();
        this.f22529a = new File(filesDir, "PersistedInstallation." + cVar.m15168e() + ".json");
        this.f22530b = cVar;
    }

    @NonNull
    /* renamed from: a */
    public AbstractC9958d m13865a(@NonNull AbstractC9958d dVar) {
        File createTempFile;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", dVar.mo13857c());
            jSONObject.put("Status", dVar.mo13854f().ordinal());
            jSONObject.put("AuthToken", dVar.mo13863a());
            jSONObject.put("RefreshToken", dVar.mo13855e());
            jSONObject.put("TokenCreationEpochInSecs", dVar.mo13853g());
            jSONObject.put("ExpiresInSecs", dVar.mo13859b());
            jSONObject.put("FisError", dVar.mo13856d());
            createTempFile = File.createTempFile("PersistedInstallation", "tmp", this.f22530b.m15173b().getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
        } catch (IOException | JSONException e) {
        }
        if (createTempFile.renameTo(this.f22529a)) {
            return dVar;
        }
        throw new IOException("unable to rename the tmpfile to PersistedInstallation");
    }

    /* renamed from: a */
    public final JSONObject m13866a() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(this.f22529a);
            while (true) {
                int read = fileInputStream.read(bArr, 0, bArr.length);
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

    @NonNull
    /* renamed from: b */
    public AbstractC9958d m13864b() {
        JSONObject a = m13866a();
        String optString = a.optString("Fid", null);
        int optInt = a.optInt("Status", EnumC9957a.ATTEMPT_MIGRATION.ordinal());
        String optString2 = a.optString("AuthToken", null);
        String optString3 = a.optString("RefreshToken", null);
        long optLong = a.optLong("TokenCreationEpochInSecs", 0L);
        long optLong2 = a.optLong("ExpiresInSecs", 0L);
        String optString4 = a.optString("FisError", null);
        AbstractC9958d.AbstractC9959a p = AbstractC9958d.m13844p();
        p.mo13838b(optString);
        p.mo13841a(EnumC9957a.values()[optInt]);
        p.mo13840a(optString2);
        p.mo13836d(optString3);
        p.mo13839b(optLong);
        p.mo13842a(optLong2);
        p.mo13837c(optString4);
        return p.mo13843a();
    }
}
