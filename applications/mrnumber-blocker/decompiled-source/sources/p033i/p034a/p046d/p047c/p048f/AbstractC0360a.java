package p033i.p034a.p046d.p047c.p048f;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
/* renamed from: i.a.d.c.f.a */
/* loaded from: classes2-dex2jar.jar:i/a/d/c/f/a.class */
public abstract class AbstractC0360a<T> {

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: i.a.d.c.f.a$b */
    /* loaded from: classes2-dex2jar.jar:i/a/d/c/f/a$b.class */
    public static abstract class EnumC0362b extends Enum<EnumC0362b> {
        private static final /* synthetic */ EnumC0362b[] $VALUES;
        public static final EnumC0362b DOT;
        public static final EnumC0362b ENV_VAR;

        static {
            EnumC0362b aVar = new a("DOT", 0);
            DOT = aVar;
            EnumC0362b bVar = new b("ENV_VAR", 1);
            ENV_VAR = bVar;
            $VALUES = new EnumC0362b[]{aVar, bVar};
        }

        private EnumC0362b(String str, int i) {
        }

        public static EnumC0362b valueOf(String str) {
            return (EnumC0362b) Enum.valueOf(EnumC0362b.class, str);
        }

        public static EnumC0362b[] values() {
            return (EnumC0362b[]) $VALUES.clone();
        }

        public abstract String normalize(String str);

        public Map<String, String> normalize(Map<String, String> map) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                hashMap.put(normalize(entry.getKey()), entry.getValue());
            }
            return Collections.unmodifiableMap(hashMap);
        }
    }

    /* renamed from: b */
    protected static Boolean m332b(String str, Map<String, String> map) {
        if (map.containsKey(str)) {
            return Boolean.valueOf(Boolean.parseBoolean(map.get(str)));
        }
        return null;
    }

    /* renamed from: c */
    protected static Double m331c(String str, Map<String, String> map) {
        return Double.valueOf(Double.parseDouble(map.get(str)));
    }

    /* renamed from: d */
    protected static Integer m330d(String str, Map<String, String> map) {
        return Integer.valueOf(Integer.parseInt(map.get(str)));
    }

    /* renamed from: e */
    protected static Long m329e(String str, Map<String, String> map) {
        return Long.valueOf(Long.parseLong(map.get(str)));
    }

    /* renamed from: f */
    protected static String m328f(String str, Map<String, String> map) {
        return map.get(str);
    }

    /* renamed from: a */
    protected abstract T m333a(Map<String, String> map, EnumC0362b bVar);

    /* renamed from: g */
    public T m327g() {
        return m333a(System.getenv(), EnumC0362b.ENV_VAR);
    }

    /* renamed from: h */
    public T m326h(Properties properties) {
        return m333a(properties, EnumC0362b.DOT);
    }

    /* renamed from: i */
    public T m325i() {
        return m326h(System.getProperties());
    }
}
