package p081h.p415j.p416a.p417a.p418a.p423g;

import android.os.Build;
import com.aotter.net.trek.model.Device;
import org.json.JSONObject;
/* renamed from: h.j.a.a.a.g.a */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/g/a.class */
public final class C10640a {
    /* renamed from: a */
    public static String m11106a() {
        return Build.MANUFACTURER + "; " + Build.MODEL;
    }

    /* renamed from: b */
    public static String m11105b() {
        return Integer.toString(Build.VERSION.SDK_INT);
    }

    /* renamed from: c */
    public static String m11104c() {
        return "Android";
    }

    /* renamed from: d */
    public static JSONObject m11103d() {
        JSONObject jSONObject = new JSONObject();
        C10641b.m11096a(jSONObject, "deviceType", m11106a());
        C10641b.m11096a(jSONObject, Device.DEVICE_OS_VERSION_KEY, m11105b());
        C10641b.m11096a(jSONObject, "os", m11104c());
        return jSONObject;
    }
}
