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

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35274a = Logger.getInstance(DataStore.class);

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Object> f35275b = new ConcurrentHashMap();

    /* renamed from: c  reason: collision with root package name */
    private AtomicBoolean f35276c = new AtomicBoolean(false);

    private Object a(String str) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                f35274a.e("Key cannot be null");
                return null;
            }
            try {
                Map<String, Object> map = this.f35275b;
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
                f35274a.e(String.format("Error getting value for key: %s", str), e);
                return null;
            }
        }
    }

    private Object a(String str, Object obj) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                f35274a.e("Key cannot be null");
                return null;
            }
            try {
                Map<String, Object> map = this.f35275b;
                String str2 = str;
                while (true) {
                    String[] split = str2.split("\\.", 2);
                    Object obj2 = map.get(split[0]);
                    if (split.length == 1) {
                        return map.put(split[0], obj);
                    } else if (obj2 instanceof Map) {
                        map = (Map) obj2;
                        str2 = split[1];
                    } else {
                        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                        map.put(split[0], concurrentHashMap);
                        str2 = split[1];
                        map = concurrentHashMap;
                    }
                }
            } catch (Exception e) {
                f35274a.e(String.format("Error setting value for key: %s", str), e);
                return null;
            }
        }
    }

    private Object a(Map map, String str) {
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
        Object a2 = a(map2, split[1]);
        if (map2.isEmpty()) {
            map.remove(split[0]);
        }
        return a2;
    }

    private static String a(Object obj) {
        return obj.getClass().getName() + "@" + Integer.toHexString(obj.hashCode());
    }

    private void a(StringBuilder sb, Map map, int i) {
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
                    sb.append(a(obj2));
                    sb.append('>');
                } else if (obj2 instanceof Map) {
                    sb.append('<');
                    sb.append(a(obj2));
                    sb.append('>');
                    a(sb, (Map) obj2, i + 1);
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

    private Object b(String str) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                f35274a.e("Key cannot be null");
                return null;
            }
            try {
                return a(this.f35275b, str);
            } catch (Exception e) {
                f35274a.e(String.format("Error removing value for key: %s", str), e);
                return null;
            }
        }
    }

    @Override // java.util.Map
    public void clear() {
        synchronized (this) {
            this.f35275b.clear();
        }
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        if (obj instanceof String) {
            return containsKey((String) obj);
        }
        f35274a.e("Key must be a string");
        return false;
    }

    public boolean containsKey(String str) {
        return a(str) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return this.f35275b.containsValue(obj);
    }

    @Override // java.util.Map
    public Set<Map.Entry<String, Object>> entrySet() {
        return this.f35275b.entrySet();
    }

    @Override // java.util.Map
    public Object get(Object obj) {
        if (obj instanceof String) {
            return get((String) obj);
        }
        f35274a.e("Key must be a string");
        return null;
    }

    public Object get(String str) {
        return a(str);
    }

    public <T> T get(String str, Class<T> cls, T t) {
        T t2 = (T) get(str);
        if (t2 != null) {
            if (cls.isAssignableFrom(t2.getClass())) {
                return t2;
            }
            f35274a.e(String.format("Key: %s expected class: %s but found class: %s", str, cls.getSimpleName(), t2.getClass().getSimpleName()));
        }
        return t;
    }

    public boolean getBoolean(String str, boolean z) {
        return ((Boolean) get(str, Boolean.class, Boolean.valueOf(z))).booleanValue();
    }

    public double getDouble(String str, double d2) {
        return ((Double) get(str, Double.class, Double.valueOf(d2))).doubleValue();
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
        return this.f35275b.isEmpty();
    }

    @Override // java.util.Map
    public Set<String> keySet() {
        return this.f35275b.keySet();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    public Object put(String str, Object obj) {
        return obj == null ? remove(str) : a(str, obj);
    }

    public <T> T put(String str, T t, Class<T> cls, T t2) {
        T t3 = (T) put(str, (Object) t);
        if (t3 != null) {
            if (cls.isAssignableFrom(t3.getClass())) {
                return t3;
            }
            f35274a.e(String.format("Key: %s expected previous class: %s but found class: %s", str, cls.getSimpleName(), t3.getClass().getSimpleName()));
        }
        return t2;
    }

    @Override // java.util.Map
    public void putAll(Map<? extends String, ? extends Object> map) {
        this.f35275b.putAll(map);
    }

    public boolean putBoolean(String str, boolean z) {
        return ((Boolean) put(str, Boolean.valueOf(z), Boolean.class, Boolean.FALSE)).booleanValue();
    }

    public double putDouble(String str, double d2) {
        return ((Double) put(str, Double.valueOf(d2), Double.class, Double.valueOf(0.0d))).doubleValue();
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
        if (obj instanceof String) {
            return remove((String) obj);
        }
        f35274a.e("Key must be a string");
        return null;
    }

    public Object remove(String str) {
        return b(str);
    }

    @Override // java.util.Map
    public int size() {
        return this.f35275b.size();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('<');
        sb.append(a(this));
        sb.append('>');
        if (this.f35276c.compareAndSet(false, true)) {
            try {
                a(sb, this.f35275b, 0);
            } catch (Exception e) {
                f35274a.e("Error formatting data store contents", e);
            }
            this.f35276c.set(false);
        }
        return sb.toString();
    }

    @Override // java.util.Map
    public Collection<Object> values() {
        return this.f35275b.values();
    }
}
