package p000;

import android.os.Build;
import org.bouncycastle.asn1.x509.DisplayText;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: af1 */
/* loaded from: classes3-dex2jar.jar:af1.class */
public class af1 {

    /* renamed from: a */
    public boolean f287a = false;

    /* renamed from: b */
    public boolean f288b = false;

    /* renamed from: c */
    public int f289c = DisplayText.DISPLAY_TEXT_MAXIMUM_SIZE;

    public af1(String str) {
        m7217e(str);
    }

    /* renamed from: a */
    public int m7221a() {
        return this.f289c;
    }

    /* renamed from: b */
    public boolean m7220b() {
        return this.f288b;
    }

    /* renamed from: c */
    public final boolean m7219c(JSONObject jSONObject) {
        try {
            if (!jSONObject.has("ob")) {
                return false;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("ob");
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                if (jSONArray.getInt(i) == Build.VERSION.SDK_INT) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            return true;
        }
    }

    /* renamed from: d */
    public boolean m7218d() {
        return this.f287a;
    }

    /* renamed from: e */
    public void m7217e(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("sa");
            boolean equals = string.equals("4724e28a731f8ba73e9eecc4d5c807705dd80963");
            if ((string.equals("on") || equals) && !m7219c(jSONObject)) {
                this.f287a = true;
                this.f288b = equals;
            }
            if (!jSONObject.has("in")) {
                return;
            }
            int i = jSONObject.getInt("in");
            if (i < 100 || i > 1000) {
                return;
            }
            this.f289c = i;
        } catch (Exception e) {
            this.f287a = false;
            this.f288b = false;
            this.f289c = DisplayText.DISPLAY_TEXT_MAXIMUM_SIZE;
        }
    }
}
