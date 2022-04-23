package p131c.p161d.p282e.p289l.p290d.p293h;

import com.android.volley.Request;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p282e.p289l.p290d.C5192b;
/* renamed from: c.d.e.l.d.h.x */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/x.class */
public class C5289x {

    /* renamed from: a */
    public final File f18074a;

    static {
        Charset.forName(Request.DEFAULT_PARAMS_ENCODING);
    }

    public C5289x(File file) {
        this.f18074a = file;
    }

    /* renamed from: a */
    public static String m24048a(JSONObject jSONObject, String str) {
        String str2 = null;
        if (!jSONObject.isNull(str)) {
            str2 = jSONObject.optString(str, null);
        }
        return str2;
    }

    /* renamed from: d */
    public static C5221f0 m24045d(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        C5221f0 f0Var = new C5221f0();
        f0Var.m24249a(m24048a(jSONObject, "userId"));
        return f0Var;
    }

    /* renamed from: a */
    public File m24049a(String str) {
        File file = this.f18074a;
        return new File(file, str + "keys.meta");
    }

    /* renamed from: b */
    public File m24047b(String str) {
        File file = this.f18074a;
        return new File(file, str + "user.meta");
    }

    /* renamed from: c */
    public C5221f0 m24046c(String str) {
        Throwable th;
        Exception e;
        File b = m24047b(str);
        if (!b.exists()) {
            return new C5221f0();
        }
        FileInputStream fileInputStream = null;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(b);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            C5221f0 d = m24045d(CommonUtils.m7662a((InputStream) fileInputStream));
            CommonUtils.m7665a(fileInputStream, "Failed to close user metadata file.");
            return d;
        } catch (Exception e3) {
            e = e3;
            C5192b.m24319a().m24314b("Error deserializing user metadata.", e);
            CommonUtils.m7665a(fileInputStream, "Failed to close user metadata file.");
            return new C5221f0();
        } catch (Throwable th3) {
            th = th3;
            fileInputStream2 = fileInputStream;
            CommonUtils.m7665a(fileInputStream2, "Failed to close user metadata file.");
            throw th;
        }
    }
}
