package p000;

import android.text.TextUtils;
import android.util.Log;
import org.json.JSONObject;
/* renamed from: s61 */
/* loaded from: classes3-dex2jar.jar:s61.class */
public class s61 implements u61 {

    /* renamed from: b */
    public static final String f8074b = "s61";

    /* renamed from: a */
    public String f8075a = "";

    @Override // p000.u61
    /* renamed from: a */
    public JSONObject mo73a() {
        return new JSONObject();
    }

    /* renamed from: b */
    public void m624b(String str) {
        if (TextUtils.isEmpty(str)) {
            Log.e(f8074b, "Empty response");
            return;
        }
        try {
            this.f8075a = new JSONObject(str).optString("token", "");
        } catch (Throwable th) {
            Log.e(f8074b, "Unable to parse response", th);
        }
    }

    /* renamed from: c */
    public String m623c() {
        return this.f8075a;
    }
}
