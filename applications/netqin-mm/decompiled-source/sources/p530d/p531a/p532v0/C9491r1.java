package p530d.p531a.p532v0;

import com.google.common.base.VerifyException;
import io.grpc.Status;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p267a.C4945v;
import p530d.p531a.p532v0.AbstractC9404m1;
/* renamed from: d.a.v0.r1 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/r1.class */
public final class C9491r1 {

    /* renamed from: d.a.v0.r1$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/r1$a.class */
    public static final class C9492a {

        /* renamed from: a */
        public final String f36317a;

        /* renamed from: b */
        public final Map<String, ?> f36318b;

        public C9492a(String str, Map<String, ?> map) {
            C4933n.m24794a(str, "policyName");
            this.f36317a = str;
            C4933n.m24794a(map, "rawConfigValue");
            this.f36318b = map;
        }

        /* renamed from: a */
        public String m2596a() {
            return this.f36317a;
        }

        /* renamed from: b */
        public Map<String, ?> m2595b() {
            return this.f36318b;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C9492a) {
                C9492a aVar = (C9492a) obj;
                z = false;
                if (this.f36317a.equals(aVar.f36317a)) {
                    z = false;
                    if (this.f36318b.equals(aVar.f36318b)) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return C4928k.m24807a(this.f36317a, this.f36318b);
        }

        public String toString() {
            C4924j.C4926b a = C4924j.m24820a(this);
            a.m24813a("policyName", this.f36317a);
            a.m24813a("rawConfigValue", this.f36318b);
            return a.toString();
        }
    }

    /* renamed from: a */
    public static Double m2619a(Map<String, ?> map) {
        return C9490r0.m2625e(map, "backoffMultiplier");
    }

    /* renamed from: a */
    public static Set<Status.Code> m2620a(List<?> list) {
        Status.Code code;
        EnumSet noneOf = EnumSet.noneOf(Status.Code.class);
        for (Object obj : list) {
            if (obj instanceof Double) {
                Double d = (Double) obj;
                int intValue = d.intValue();
                boolean z = true;
                C4945v.m24746a(((double) intValue) == d.doubleValue(), "Status code %s is not integral", obj);
                code = Status.m616a(intValue).m604d();
                if (code.value() != d.intValue()) {
                    z = false;
                }
                C4945v.m24746a(z, "Status code %s is not valid", obj);
            } else if (obj instanceof String) {
                try {
                    code = Status.Code.valueOf((String) obj);
                } catch (IllegalArgumentException e) {
                    throw new VerifyException("Status code " + obj + " is not valid", e);
                }
            } else {
                throw new VerifyException("Can not convert status code " + obj + " to Status.Code, because its type is " + obj.getClass());
            }
            noneOf.add(code);
        }
        return Collections.unmodifiableSet(noneOf);
    }

    /* renamed from: a */
    public static Set<Status.Code> m2618a(Map<String, ?> map, String str) {
        List<?> b = C9490r0.m2628b(map, str);
        if (b == null) {
            return null;
        }
        return m2620a(b);
    }

    /* renamed from: b */
    public static Long m2616b(Map<String, ?> map) {
        return C9490r0.m2621i(map, "hedgingDelay");
    }

    /* renamed from: b */
    public static List<C9492a> m2617b(List<Map<String, ?>> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Map<String, ?> map : list) {
            arrayList.add(m2597u(map));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: c */
    public static Map<String, ?> m2615c(Map<String, ?> map) {
        return C9490r0.m2623g(map, "hedgingPolicy");
    }

    /* renamed from: d */
    public static Long m2614d(Map<String, ?> map) {
        return C9490r0.m2621i(map, "initialBackoff");
    }

    /* renamed from: e */
    public static List<Map<String, ?>> m2613e(Map<String, ?> map) {
        String h;
        ArrayList arrayList = new ArrayList();
        if (map.containsKey("loadBalancingConfig")) {
            arrayList.addAll(C9490r0.m2627c(map, "loadBalancingConfig"));
        }
        if (arrayList.isEmpty() && (h = C9490r0.m2622h(map, "loadBalancingPolicy")) != null) {
            arrayList.add(Collections.singletonMap(h.toLowerCase(Locale.ROOT), Collections.emptyMap()));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: f */
    public static Integer m2612f(Map<String, ?> map) {
        return C9490r0.m2624f(map, "maxAttempts");
    }

    /* renamed from: g */
    public static Integer m2611g(Map<String, ?> map) {
        return C9490r0.m2624f(map, "maxAttempts");
    }

    /* renamed from: h */
    public static Long m2610h(Map<String, ?> map) {
        return C9490r0.m2621i(map, "maxBackoff");
    }

    /* renamed from: i */
    public static Integer m2609i(Map<String, ?> map) {
        return C9490r0.m2624f(map, "maxRequestMessageBytes");
    }

    /* renamed from: j */
    public static Integer m2608j(Map<String, ?> map) {
        return C9490r0.m2624f(map, "maxResponseMessageBytes");
    }

    /* renamed from: k */
    public static List<Map<String, ?>> m2607k(Map<String, ?> map) {
        return C9490r0.m2627c(map, "methodConfig");
    }

    /* renamed from: l */
    public static String m2606l(Map<String, ?> map) {
        return C9490r0.m2622h(map, "method");
    }

    /* renamed from: m */
    public static List<Map<String, ?>> m2605m(Map<String, ?> map) {
        return C9490r0.m2627c(map, "name");
    }

    /* renamed from: n */
    public static Set<Status.Code> m2604n(Map<String, ?> map) {
        Set<Status.Code> a = m2618a(map, "nonFatalStatusCodes");
        if (a == null) {
            return Collections.unmodifiableSet(EnumSet.noneOf(Status.Code.class));
        }
        C4945v.m24746a(!a.contains(Status.Code.OK), "%s must not contain OK", "nonFatalStatusCodes");
        return a;
    }

    /* renamed from: o */
    public static Map<String, ?> m2603o(Map<String, ?> map) {
        return C9490r0.m2623g(map, "retryPolicy");
    }

    /* renamed from: p */
    public static Set<Status.Code> m2602p(Map<String, ?> map) {
        Set<Status.Code> a = m2618a(map, "retryableStatusCodes");
        C4945v.m24746a(a != null, "%s is required in retry policy", "retryableStatusCodes");
        C4945v.m24746a(!a.isEmpty(), "%s must not be empty", "retryableStatusCodes");
        C4945v.m24746a(true ^ a.contains(Status.Code.OK), "%s must not contain OK", "retryableStatusCodes");
        return a;
    }

    /* renamed from: q */
    public static String m2601q(Map<String, ?> map) {
        return C9490r0.m2622h(map, "service");
    }

    /* renamed from: r */
    public static AbstractC9404m1.C9432x m2600r(Map<String, ?> map) {
        Map<String, ?> g;
        if (map == null || (g = C9490r0.m2623g(map, "retryThrottling")) == null) {
            return null;
        }
        float floatValue = C9490r0.m2625e(g, "maxTokens").floatValue();
        float floatValue2 = C9490r0.m2625e(g, "tokenRatio").floatValue();
        boolean z = true;
        C4933n.m24775b(floatValue > 0.0f, "maxToken should be greater than zero");
        if (floatValue2 <= 0.0f) {
            z = false;
        }
        C4933n.m24775b(z, "tokenRatio should be greater than zero");
        return new AbstractC9404m1.C9432x(floatValue, floatValue2);
    }

    /* renamed from: s */
    public static Long m2599s(Map<String, ?> map) {
        return C9490r0.m2621i(map, "timeout");
    }

    /* renamed from: t */
    public static Boolean m2598t(Map<String, ?> map) {
        return C9490r0.m2632a(map, "waitForReady");
    }

    /* renamed from: u */
    public static C9492a m2597u(Map<String, ?> map) {
        if (map.size() == 1) {
            String key = map.entrySet().iterator().next().getKey();
            return new C9492a(key, C9490r0.m2623g(map, key));
        }
        throw new RuntimeException("There are " + map.size() + " fields in a LoadBalancingConfig object. Exactly one is expected. Config=" + map);
    }
}
