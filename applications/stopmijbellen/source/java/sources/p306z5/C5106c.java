package p306z5;

import android.support.p012v4.media.C0082b;
import androidx.recyclerview.widget.C0608b;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
import p237t.C4350g;
import p241t4.C4392c;
import p306z5.C5102a;
/* renamed from: z5.c */
/* loaded from: classes-dex2jar.jar:z5/c.class */
public class C5106c {

    /* renamed from: a */
    public final File f15476a;

    /* renamed from: b */
    public final C4392c f15477b;

    public C5106c(C4392c c4392c) {
        c4392c.m974a();
        File filesDir = c4392c.f13688a.getFilesDir();
        StringBuilder m8752j = C0082b.m8752j("PersistedInstallation.");
        m8752j.append(c4392c.m972c());
        m8752j.append(".json");
        this.f15476a = new File(filesDir, m8752j.toString());
        this.f15477b = c4392c;
    }

    /* renamed from: a */
    public AbstractC5107d m32a(AbstractC5107d abstractC5107d) {
        File createTempFile;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", abstractC5107d.mo28c());
            jSONObject.put("Status", C4350g.m1021c(abstractC5107d.mo25f()));
            jSONObject.put("AuthToken", abstractC5107d.mo30a());
            jSONObject.put("RefreshToken", abstractC5107d.mo26e());
            jSONObject.put("TokenCreationEpochInSecs", abstractC5107d.mo24g());
            jSONObject.put("ExpiresInSecs", abstractC5107d.mo29b());
            jSONObject.put("FisError", abstractC5107d.mo27d());
            C4392c c4392c = this.f15477b;
            c4392c.m974a();
            createTempFile = File.createTempFile("PersistedInstallation", "tmp", c4392c.f13688a.getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
        } catch (IOException | JSONException e) {
        }
        if (createTempFile.renameTo(this.f15476a)) {
            return abstractC5107d;
        }
        throw new IOException("unable to rename the tmpfile to PersistedInstallation");
    }

    /* renamed from: b */
    public AbstractC5107d m31b() {
        JSONObject jSONObject;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(this.f15476a);
            while (true) {
                int read = fileInputStream.read(bArr, 0, 16384);
                if (read < 0) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
            jSONObject = new JSONObject(byteArrayOutputStream.toString());
            fileInputStream.close();
        } catch (IOException | JSONException e) {
            jSONObject = new JSONObject();
        }
        String optString = jSONObject.optString("Fid", null);
        int optInt = jSONObject.optInt("Status", 0);
        String optString2 = jSONObject.optString("AuthToken", null);
        String optString3 = jSONObject.optString("RefreshToken", null);
        long optLong = jSONObject.optLong("TokenCreationEpochInSecs", 0L);
        long optLong2 = jSONObject.optLong("ExpiresInSecs", 0L);
        String optString4 = jSONObject.optString("FisError", null);
        int i = AbstractC5107d.f15478a;
        C5102a.C5104b c5104b = new C5102a.C5104b();
        c5104b.m34d(0L);
        c5104b.mo18b(1);
        c5104b.m35c(0L);
        c5104b.f15466a = optString;
        c5104b.mo18b(C0608b.m7633b()[optInt]);
        c5104b.f15468c = optString2;
        c5104b.f15469d = optString3;
        c5104b.m34d(optLong);
        c5104b.m35c(optLong2);
        c5104b.f15472g = optString4;
        return c5104b.mo19a();
    }
}
