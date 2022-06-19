package p068d2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import org.json.JSONException;
/* renamed from: d2.o */
/* loaded from: classes-dex2jar.jar:d2/o.class */
public class C2372o {

    /* renamed from: a */
    public static final List<C2267f4> f8392a = Collections.synchronizedList(new ArrayList());

    /* renamed from: a */
    public static boolean m3626a() {
        boolean z;
        List<C2267f4> list = f8392a;
        synchronized (list) {
            z = list.size() != 0;
        }
        return z;
    }

    /* renamed from: b */
    public static void m3625b() {
        C2230f1 m3591d = C2408t.m3591d();
        Objects.requireNonNull(m3591d);
        if (C2230f1.f8062Y.equals("") || !m3591d.f8066D) {
            return;
        }
        List<C2267f4> list = f8392a;
        synchronized (list) {
            for (C2267f4 c2267f4 : list) {
                m3624c(c2267f4);
            }
            f8392a.clear();
        }
    }

    /* renamed from: c */
    public static void m3624c(C2267f4 c2267f4) {
        C2230f1 m3591d = C2408t.m3591d();
        Objects.requireNonNull(m3591d);
        if (C2230f1.f8062Y.equals("") || !m3591d.f8066D) {
            List<C2267f4> list = f8392a;
            synchronized (list) {
                if (200 > list.size()) {
                    list.add(c2267f4);
                }
            }
            return;
        }
        C2267f4 m3700l = c2267f4.m3700l("payload");
        if (C2441x3.f8627R) {
            C2227e4.m3744i(m3700l, "api_key", "bb2cf0647ba654d7228dd3f9405bbc6a");
        } else {
            Objects.requireNonNull(C2408t.m3591d());
            C2227e4.m3744i(m3700l, "api_key", C2230f1.f8062Y);
        }
        try {
            c2267f4.m3696p("payload");
            synchronized (c2267f4.f8159a) {
                c2267f4.f8159a.put("payload", m3700l.f8159a);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        new C2410t0("AdColony.log_event", 1, c2267f4).m3586b();
    }
}
