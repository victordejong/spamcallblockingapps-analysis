package p115h6;

import com.google.firebase.perf.metrics.Trace;
import com.google.protobuf.C1913r;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p147k6.C3325a;
import p191o6.C3924k;
import p191o6.C3929m;
/* renamed from: h6.c */
/* loaded from: classes-dex2jar.jar:h6/c.class */
public class C3014c {

    /* renamed from: a */
    public final Trace f10117a;

    public C3014c(Trace trace) {
        this.f10117a = trace;
    }

    /* renamed from: a */
    public C3929m m2737a() {
        List unmodifiableList;
        C3929m.C3931b m1604R = C3929m.m1604R();
        m1604R.m1598t(this.f10117a.f6990d);
        m1604R.m1600r(this.f10117a.f6997k.f12119a);
        Trace trace = this.f10117a;
        m1604R.m1599s(trace.f6997k.m1839b(trace.f6998l));
        for (C3011a c3011a : this.f10117a.f6991e.values()) {
            m1604R.m1601q(c3011a.f10107a, c3011a.m2748a());
        }
        List<Trace> list = this.f10117a.f6994h;
        if (!list.isEmpty()) {
            for (Trace trace2 : list) {
                C3929m m2737a = new C3014c(trace2).m2737a();
                m1604R.m4282n();
                C3929m.m1620B((C3929m) m1604R.f7078b, m2737a);
            }
        }
        Map<String, String> attributes = this.f10117a.getAttributes();
        m1604R.m4282n();
        ((C1913r) C3929m.m1618D((C3929m) m1604R.f7078b)).putAll(attributes);
        Trace trace3 = this.f10117a;
        synchronized (trace3.f6993g) {
            ArrayList arrayList = new ArrayList();
            for (C3325a c3325a : trace3.f6993g) {
                if (c3325a != null) {
                    arrayList.add(c3325a);
                }
            }
            unmodifiableList = Collections.unmodifiableList(arrayList);
        }
        C3924k[] m2375b = C3325a.m2375b(unmodifiableList);
        if (m2375b != null) {
            List asList = Arrays.asList(m2375b);
            m1604R.m4282n();
            C3929m.m1616F((C3929m) m1604R.f7078b, asList);
        }
        return m1604R.m4284l();
    }
}
