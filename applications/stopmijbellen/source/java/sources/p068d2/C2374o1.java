package p068d2;

import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
/* renamed from: d2.o1 */
/* loaded from: classes-dex2jar.jar:d2/o1.class */
public class C2374o1 {

    /* renamed from: a */
    public final int f8396a;

    /* renamed from: b */
    public final List<C2375a> f8397b = new ArrayList();

    /* renamed from: d2.o1$a */
    /* loaded from: classes-dex2jar.jar:d2/o1$a.class */
    public static class C2375a {

        /* renamed from: a */
        public final String f8398a;

        /* renamed from: b */
        public final String f8399b;

        /* renamed from: c */
        public final int f8400c;

        /* renamed from: d */
        public final String[] f8401d;

        /* renamed from: e */
        public final String[] f8402e;

        /* renamed from: f */
        public final List<C2376b> f8403f = new ArrayList();

        /* renamed from: g */
        public final List<C2377c> f8404g = new ArrayList();

        /* renamed from: h */
        public final C2378d f8405h;

        /* renamed from: i */
        public final Map<String, String> f8406i;

        public C2375a(C2267f4 c2267f4) throws JSONException {
            int optInt;
            this.f8398a = c2267f4.m3703i("stream");
            this.f8399b = c2267f4.m3703i("table_name");
            synchronized (c2267f4.f8159a) {
                optInt = c2267f4.f8159a.optInt("max_rows", 10000);
            }
            this.f8400c = optInt;
            C2200d4 m3701k = c2267f4.m3701k("event_types");
            this.f8401d = m3701k != null ? C2227e4.m3743j(m3701k) : new String[0];
            C2200d4 m3701k2 = c2267f4.m3701k("request_types");
            this.f8402e = m3701k2 != null ? C2227e4.m3743j(m3701k2) : new String[0];
            for (C2267f4 c2267f42 : C2227e4.m3738o(c2267f4.m3704h("columns"))) {
                this.f8403f.add(new C2376b(c2267f42));
            }
            for (C2267f4 c2267f43 : C2227e4.m3738o(c2267f4.m3704h("indexes"))) {
                this.f8404g.add(new C2377c(c2267f43, this.f8399b));
            }
            C2267f4 m3699m = c2267f4.m3699m("ttl");
            this.f8405h = m3699m != null ? new C2378d(m3699m) : null;
            C2267f4 m3700l = c2267f4.m3700l("queries");
            HashMap hashMap = new HashMap();
            synchronized (m3700l.f8159a) {
                Iterator<String> m3708d = m3700l.m3708d();
                while (m3708d.hasNext()) {
                    String next = m3708d.next();
                    hashMap.put(next, m3700l.m3697o(next));
                }
            }
            this.f8406i = hashMap;
        }
    }

    /* renamed from: d2.o1$b */
    /* loaded from: classes-dex2jar.jar:d2/o1$b.class */
    public static class C2376b {

        /* renamed from: a */
        public final String f8407a;

        /* renamed from: b */
        public final String f8408b;

        /* renamed from: c */
        public final Object f8409c;

        public C2376b(C2267f4 c2267f4) throws JSONException {
            this.f8407a = c2267f4.m3703i(AppMeasurementSdk.ConditionalUserProperty.NAME);
            this.f8408b = c2267f4.m3703i("type");
            this.f8409c = c2267f4.m3698n("default");
        }
    }

    /* renamed from: d2.o1$c */
    /* loaded from: classes-dex2jar.jar:d2/o1$c.class */
    public static class C2377c {

        /* renamed from: a */
        public final String f8410a;

        /* renamed from: b */
        public final String[] f8411b;

        public C2377c(C2267f4 c2267f4, String str) throws JSONException {
            StringBuilder m7624k = C0608b.m7624k(str, "_");
            m7624k.append(c2267f4.m3703i(AppMeasurementSdk.ConditionalUserProperty.NAME));
            this.f8410a = m7624k.toString();
            this.f8411b = C2227e4.m3743j(c2267f4.m3704h("columns"));
        }
    }

    /* renamed from: d2.o1$d */
    /* loaded from: classes-dex2jar.jar:d2/o1$d.class */
    public static class C2378d {

        /* renamed from: a */
        public final long f8412a;

        /* renamed from: b */
        public final String f8413b;

        public C2378d(C2267f4 c2267f4) throws JSONException {
            long j;
            synchronized (c2267f4.f8159a) {
                j = c2267f4.f8159a.getLong("seconds");
            }
            this.f8412a = j;
            this.f8413b = c2267f4.m3703i("column");
        }
    }

    public C2374o1(C2267f4 c2267f4) throws JSONException {
        this.f8396a = c2267f4.m3706f("version");
        for (C2267f4 c2267f42 : C2227e4.m3738o(c2267f4.m3704h("streams"))) {
            this.f8397b.add(new C2375a(c2267f42));
        }
    }
}
