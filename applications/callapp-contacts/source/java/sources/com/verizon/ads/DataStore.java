package com.verizon.ads;

import com.verizon.ads.utils.TextUtils;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/DataStore.class */
public class DataStore implements Map<String, Object> {

    /* renamed from: a */
    private static final Logger f61162a = Logger.getInstance(DataStore.class);

    /* renamed from: b */
    private final Map<String, Object> f61163b = new ConcurrentHashMap();

    /* renamed from: c */
    private AtomicBoolean f61164c = new AtomicBoolean(false);

    /* renamed from: a */
    private Object m5586a(String str) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                f61162a.m5565e("Key cannot be null");
                return null;
            }
            try {
                Map<String, Object> map = this.f61163b;
                String str2 = str;
                while (true) {
                    String[] split = str2.split("\\.", 2);
                    Object obj = map.get(split[0]);
                    if (split.length == 1) {
                        return obj;
                    }
                    if (!(obj instanceof Map)) {
                        return null;
                    }
                    map = (Map) obj;
                    str2 = split[1];
                }
            } catch (Exception e) {
                f61162a.m5564e(String.format("Error getting value for key: %s", str), e);
                return null;
            }
        }
    }

    /* renamed from: a */
    private Object m5585a(String str, Object obj) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                f61162a.m5565e("Key cannot be null");
                return null;
            }
            try {
                ConcurrentHashMap concurrentHashMap = this.f61163b;
                String str2 = str;
                while (true) {
                    String[] split = str2.split("\\.", 2);
                    Object obj2 = concurrentHashMap.get(split[0]);
                    if (split.length == 1) {
                        return concurrentHashMap.put(split[0], obj);
                    } else if (obj2 instanceof Map) {
                        concurrentHashMap = (Map) obj2;
                        str2 = split[1];
                    } else {
                        ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap();
                        concurrentHashMap.put(split[0], concurrentHashMap2);
                        concurrentHashMap = concurrentHashMap2;
                        str2 = split[1];
                    }
                }
            } catch (Exception e) {
                f61162a.m5564e(String.format("Error setting value for key: %s", str), e);
                return null;
            }
        }
    }

    /* renamed from: a */
    private Object m5583a(Map map, String str) {
        String[] split = str.split("\\.", 2);
        if (!map.containsKey(split[0])) {
            return null;
        }
        if (split.length == 1) {
            return map.remove(split[0]);
        }
        Object obj = map.get(split[0]);
        if (!(obj instanceof Map)) {
            return null;
        }
        Map map2 = (Map) obj;
        Object m5583a = m5583a(map2, split[1]);
        if (map2.isEmpty()) {
            map.remove(split[0]);
        }
        return m5583a;
    }

    /* renamed from: a */
    private static String m5587a(Object obj) {
        return obj.getClass().getName() + "@" + Integer.toHexString(obj.hashCode());
    }

    /* renamed from: a */
    private void m5584a(StringBuilder sb, Map map, int i) {
        synchronized (this) {
            if (i >= 10) {
                sb.append(" <...> }\n");
                return;
            }
            sb.append(" {");
            String format = i > 0 ? String.format("%" + i + "s", "") : "";
            for (Object obj : map.keySet()) {
                Object obj2 = map.get(obj);
                sb.append("\n ");
                sb.append(format);
                sb.append(obj);
                sb.append(" : ");
                if (obj2 instanceof DataStore) {
                    sb.append('<');
                    sb.append(m5587a(obj2));
                    sb.append('>');
                } else if (obj2 instanceof Map) {
                    sb.append('<');
                    sb.append(m5587a(obj2));
                    sb.append('>');
                    m5584a(sb, (Map) obj2, i + 1);
                } else if (obj2 instanceof String) {
                    sb.append('\"');
                    sb.append(obj2);
                    sb.append('\"');
                } else if (obj2 != null) {
                    sb.append(obj2.toString());
                } else {
                    sb.append("<null>");
                }
            }
            sb.append('\n');
            sb.append(format);
            sb.append('}');
        }
    }

    /* renamed from: b */
    private Object m5582b(String str) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                f61162a.m5565e("Key cannot be null");
                return null;
            }
            try {
                return m5583a(this.f61163b, str);
            } catch (Exception e) {
                f61162a.m5564e(String.format("Error removing value for key: %s", str), e);
                return null;
            }
        }
    }

    @Override // java.util.Map
    public void clear() {
        synchronized (this) {
            this.f61163b.clear();
        }
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        if (!(obj instanceof String)) {
            f61162a.m5565e("Key must be a string");
            return false;
        }
        return containsKey((String) obj);
    }

    public boolean containsKey(String str) {
        return m5586a(str) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return this.f61163b.containsValue(obj);
    }

    @Override // java.util.Map
    public Set<Map.Entry<String, Object>> entrySet() {
        return this.f61163b.entrySet();
    }

    @Override // java.util.Map
    public Object get(Object obj) {
        if (!(obj instanceof String)) {
            f61162a.m5565e("Key must be a string");
            return null;
        }
        return get((String) obj);
    }

    public Object get(String str) {
        return m5586a(str);
    }

    public <T> T get(String str, Class<T> cls, T t) {
        T t2 = (T) get(str);
        if (t2 != null) {
            if (cls.isAssignableFrom(t2.getClass())) {
                return t2;
            }
            f61162a.m5565e(String.format("Key: %s expected class: %s but found class: %s", str, cls.getSimpleName(), t2.getClass().getSimpleName()));
        }
        return t;
    }

    public boolean getBoolean(String str, boolean z) {
        return ((Boolean) get(str, Boolean.class, Boolean.valueOf(z))).booleanValue();
    }

    public double getDouble(String str, double d) {
        return ((Double) get(str, Double.class, Double.valueOf(d))).doubleValue();
    }

    public int getInt(String str, int i) {
        return ((Integer) get(str, Integer.class, Integer.valueOf(i))).intValue();
    }

    public List getList(String str, List list) {
        return (List) get(str, List.class, list);
    }

    public Map getMap(String str, Map map) {
        return (Map) get(str, Map.class, map);
    }

    public Object getObject(String str, Object obj) {
        return get(str, Object.class, obj);
    }

    public String getString(String str, String str2) {
        return (String) get(str, String.class, str2);
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.f61163b.isEmpty();
    }

    @Override // java.util.Map
    public Set<String> keySet() {
        return this.f61163b.keySet();
    }

    public Object put(String str, Object obj) {
        return obj == null ? remove(str) : m5585a(str, obj);
    }

    public <T> T put(String str, T t, Class<T> cls, T t2) {
        T t3 = (T) put(str, (Object) t);
        if (t3 != null) {
            if (cls.isAssignableFrom(t3.getClass())) {
                return t3;
            }
            f61162a.m5565e(String.format("Key: %s expected previous class: %s but found class: %s", str, cls.getSimpleName(), t3.getClass().getSimpleName()));
        }
        return t2;
    }

    @Override // java.util.Map
    public void putAll(Map<? extends String, ? extends Object> map) {
        this.f61163b.putAll(map);
    }

    public boolean putBoolean(String str, boolean z) {
        return ((Boolean) put(str, Boolean.valueOf(z), Boolean.class, Boolean.FALSE)).booleanValue();
    }

    public double putDouble(String str, double d) {
        return ((Double) put(str, Double.valueOf(d), Double.class, Double.valueOf(0.0d))).doubleValue();
    }

    public int putInt(String str, int i) {
        return ((Integer) put(str, Integer.valueOf(i), Integer.class, 0)).intValue();
    }

    public List putList(String str, List list) {
        return (List) put(str, list, List.class, null);
    }

    public Map putMap(String str, Map map) {
        return (Map) put(str, map, Map.class, null);
    }

    public Object putObject(String str, Object obj) {
        return put(str, obj, Object.class, null);
    }

    public String putString(String str, String str2) {
        return (String) put(str, str2, String.class, null);
    }

    @Override // java.util.Map
    public Object remove(Object obj) {
        if (!(obj instanceof String)) {
            f61162a.m5565e("Key must be a string");
            return null;
        }
        return remove((String) obj);
    }

    public Object remove(String str) {
        return m5582b(str);
    }

    @Override // java.util.Map
    public int size() {
        return this.f61163b.size();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('<');
        sb.append(m5587a(this));
        sb.append('>');
        if (this.f61164c.compareAndSet(false, true)) {
            try {
                m5584a(sb, this.f61163b, 0);
            } catch (Exception e) {
                f61162a.m5564e("Error formatting data store contents", e);
            }
            this.f61164c.set(false);
        }
        return sb.toString();
    }

    @Override // java.util.Map
    public Collection<Object> values() {
        return this.f61163b.values();
    }
}
