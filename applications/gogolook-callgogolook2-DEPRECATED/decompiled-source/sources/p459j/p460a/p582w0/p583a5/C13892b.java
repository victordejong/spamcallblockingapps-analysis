package p459j.p460a.p582w0.p583a5;

import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.internal.referrer.Payload;
import gogolook.callgogolook2.gson.InCallSupportedDevices;
import gogolook.callgogolook2.gson.TutorialConfig;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import p081h.p203i.p384e.C10099e;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C14099o3;
/* renamed from: j.a.w0.a5.b */
/* loaded from: classes3-dex2jar.jar:j/a/w0/a5/b.class */
public class C13892b {

    /* renamed from: a */
    public static final HashSet<String> f31210a = new HashSet<>();

    /* renamed from: b */
    public static final HashSet<String> f31211b = new HashSet<>();

    /* renamed from: c */
    public static final HashSet<String> f31212c = new HashSet<>();

    /* renamed from: d */
    public static final HashSet<String> f31213d = new HashSet<>();

    /* renamed from: e */
    public static final HashSet<String> f31214e = new HashSet<>();

    /* renamed from: f */
    public static final HashSet<String> f31215f = new HashSet<>();

    /* renamed from: g */
    public static final HashSet<String> f31216g = new HashSet<>();

    static {
        m3130e();
    }

    @Nullable
    /* renamed from: a */
    public static TutorialConfig.Device m3138a(String str) {
        TutorialConfig tutorialConfig = (TutorialConfig) new C10099e().m13388a().m30982a(C13640c.m3745d().m3744d(str), (Class<Object>) TutorialConfig.class);
        if (tutorialConfig == null || tutorialConfig.m28182a().isEmpty()) {
            return null;
        }
        for (TutorialConfig.Device device : tutorialConfig.m28182a()) {
            if (Build.BRAND.equalsIgnoreCase(device.m28179c())) {
                return device;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static boolean m3139a() {
        m3129f();
        return (m3137a(f31210a) || m3134b(f31215f)) && !m3134b(f31216g);
    }

    /* renamed from: a */
    public static boolean m3137a(@NonNull HashSet<String> hashSet) {
        String str = Build.BRAND;
        Iterator<String> it = hashSet.iterator();
        while (it.hasNext()) {
            if (it.next().equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    /* renamed from: b */
    public static String m3135b(String str) {
        TutorialConfig.Device a = m3138a(str);
        if (a == null) {
            return null;
        }
        if (a.m28181a().isEmpty()) {
            return a.m28180b();
        }
        for (TutorialConfig.Device.Custom custom : a.m28181a()) {
            for (int i = 0; i < custom.m28178a().size(); i++) {
                if (Build.MODEL.equalsIgnoreCase(custom.m28178a().get(i))) {
                    return custom.m28177b();
                }
            }
        }
        return a.m28180b();
    }

    /* renamed from: b */
    public static boolean m3136b() {
        return m3137a(f31213d);
    }

    /* renamed from: b */
    public static boolean m3134b(@NonNull HashSet<String> hashSet) {
        String str = Build.MODEL;
        Iterator<String> it = hashSet.iterator();
        while (it.hasNext()) {
            if (it.next().equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public static boolean m3133c() {
        return f31214e.contains(Build.BRAND);
    }

    /* renamed from: c */
    public static boolean m3132c(String str) {
        return m3138a(str) != null;
    }

    /* renamed from: d */
    public static boolean m3131d() {
        return m3137a(f31211b);
    }

    /* renamed from: e */
    public static void m3130e() {
        f31210a.addAll(Arrays.asList("asus", Payload.SOURCE_GOOGLE, "lenovo", "lge", "motorola", "samsung", "sony"));
        f31211b.addAll(Arrays.asList("samsung"));
        f31212c.addAll(Arrays.asList("samsung"));
        f31213d.addAll(Arrays.asList("lge"));
        f31214e.addAll(Arrays.asList("oppo", Payload.SOURCE_HUAWEI, "xiaomi"));
    }

    /* renamed from: f */
    public static void m3129f() {
        InCallSupportedDevices g = C14099o3.m2510n().m2519g();
        if (g != null) {
            List<String> a = g.m28410a();
            if (a != null) {
                f31210a.addAll(a);
            }
            List<String> b = g.m28409b();
            if (b != null) {
                f31215f.addAll(b);
            }
            List<String> c = g.m28408c();
            if (c != null) {
                f31216g.addAll(c);
            }
        }
    }
}
