package p193e.p1485h.p1486a.p1493c;

import android.app.Activity;
import java.lang.ref.WeakReference;
import org.json.JSONObject;
/* renamed from: e.h.a.c.w */
/* loaded from: classes-dex2jar.jar:e/h/a/c/w.class */
public class C22858w extends AbstractC22831t {

    /* renamed from: t */
    public static boolean f63447t = false;

    /* renamed from: u */
    public static WeakReference<Activity> f63448u;

    /* renamed from: v */
    public static int f63449v;

    /* renamed from: w */
    public static int f63450w;

    /* renamed from: l */
    public boolean f63462l;

    /* renamed from: a */
    public long f63451a = 0;

    /* renamed from: b */
    public boolean f63452b = false;

    /* renamed from: c */
    public final Object f63453c = new Object();

    /* renamed from: d */
    public int f63454d = 0;

    /* renamed from: e */
    public boolean f63455e = false;

    /* renamed from: f */
    public boolean f63456f = false;

    /* renamed from: g */
    public boolean f63457g = false;

    /* renamed from: h */
    public int f63458h = 0;

    /* renamed from: i */
    public boolean f63459i = false;

    /* renamed from: j */
    public boolean f63460j = false;

    /* renamed from: k */
    public boolean f63461k = false;

    /* renamed from: m */
    public int f63463m = 0;

    /* renamed from: n */
    public final Object f63464n = new Object();

    /* renamed from: o */
    public long f63465o = 0;

    /* renamed from: p */
    public String f63466p = null;

    /* renamed from: q */
    public String f63467q = null;

    /* renamed from: r */
    public String f63468r = null;

    /* renamed from: s */
    public JSONObject f63469s = null;

    /* renamed from: a */
    public static Activity m7674a() {
        WeakReference<Activity> weakReference = f63448u;
        return weakReference == null ? null : weakReference.get();
    }

    /* renamed from: e */
    public static void m7670e(Activity activity) {
        if (activity == null) {
            f63448u = null;
        } else if (activity.getLocalClassName().contains("InAppNotificationActivity")) {
        } else {
            f63448u = new WeakReference<>(activity);
        }
    }

    /* renamed from: b */
    public boolean m7673b() {
        return this.f63454d > 0;
    }

    /* renamed from: c */
    public boolean m7672c() {
        boolean z;
        synchronized (this.f63453c) {
            z = this.f63452b;
        }
        return z;
    }

    /* renamed from: d */
    public void m7671d(boolean z) {
        synchronized (this.f63453c) {
            this.f63452b = z;
        }
    }

    /* renamed from: f */
    public void m7669f(JSONObject jSONObject) {
        synchronized (this) {
            if (this.f63469s == null) {
                this.f63469s = jSONObject;
            }
        }
    }
}
