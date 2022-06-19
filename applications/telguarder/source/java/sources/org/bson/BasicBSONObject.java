package org.bson;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import org.bson.types.BasicBSONList;
import org.bson.types.ObjectId;
/* loaded from: classes-dex2jar.jar:org/bson/BasicBSONObject.class */
public class BasicBSONObject extends LinkedHashMap<String, Object> implements BSONObject {
    private static final long serialVersionUID = -4415279469780082174L;

    public BasicBSONObject() {
    }

    public BasicBSONObject(int i) {
        super(i);
    }

    public BasicBSONObject(String str, Object obj) {
        put((Object) str, obj);
    }

    public BasicBSONObject(Map map) {
        super(map);
    }

    private static Object canonicalize(Object obj) {
        if (!(obj instanceof BSONObject) || (obj instanceof BasicBSONList)) {
            if (obj instanceof List) {
                return canonicalizeList((List) obj);
            }
            Map<String, Object> map = obj;
            if (obj instanceof Map) {
                map = canonicalizeMap((Map) obj);
            }
            return map;
        }
        return canonicalizeBSONObject((BSONObject) obj);
    }

    private static BasicBSONObject canonicalizeBSONObject(BSONObject bSONObject) {
        BasicBSONObject basicBSONObject = new BasicBSONObject();
        Iterator it = new TreeSet(bSONObject.keySet()).iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            basicBSONObject.put((Object) str, canonicalize(bSONObject.get(str)));
        }
        return basicBSONObject;
    }

    private static List canonicalizeList(List<Object> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (Object obj : list) {
            arrayList.add(canonicalize(obj));
        }
        return arrayList;
    }

    private static Map<String, Object> canonicalizeMap(Map<String, Object> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map.size());
        Iterator it = new TreeSet(map.keySet()).iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            linkedHashMap.put(str, canonicalize(map.get(str)));
        }
        return linkedHashMap;
    }

    private byte[] encode() {
        return getEncoder().encode(this);
    }

    private BSONEncoder getEncoder() {
        return new BasicBSONEncoder();
    }

    private int toInt(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue() ? 1 : 0;
        }
        throw new IllegalArgumentException("can't convert: " + obj.getClass().getName() + " to int");
    }

    public BasicBSONObject append(String str, Object obj) {
        put((Object) str, obj);
        return this;
    }

    @Override // org.bson.BSONObject
    public boolean containsField(String str) {
        return super.containsKey((Object) str);
    }

    @Override // org.bson.BSONObject
    @Deprecated
    public boolean containsKey(String str) {
        return containsField(str);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BSONObject)) {
            return false;
        }
        BSONObject bSONObject = (BSONObject) obj;
        if (keySet().equals(bSONObject.keySet())) {
            return Arrays.equals(getEncoder().encode(canonicalizeBSONObject(this)), getEncoder().encode(canonicalizeBSONObject(bSONObject)));
        }
        return false;
    }

    @Override // org.bson.BSONObject
    public Object get(String str) {
        return super.get((Object) str);
    }

    public boolean getBoolean(String str) {
        return getBoolean(str, false);
    }

    public boolean getBoolean(String str, boolean z) {
        Object obj = get(str);
        if (obj == null) {
            return z;
        }
        if (obj instanceof Number) {
            return ((Number) obj).intValue() > 0;
        } else if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        } else {
            throw new IllegalArgumentException("can't coerce to bool:" + obj.getClass());
        }
    }

    public Date getDate(String str) {
        return (Date) get(str);
    }

    public Date getDate(String str, Date date) {
        Object obj = get(str);
        if (obj != null) {
            date = (Date) obj;
        }
        return date;
    }

    public double getDouble(String str) {
        return ((Number) get(str)).doubleValue();
    }

    public double getDouble(String str, double d) {
        Object obj = get(str);
        return obj == null ? d : ((Number) obj).doubleValue();
    }

    public int getInt(String str) {
        Object obj = get(str);
        if (obj != null) {
            return toInt(obj);
        }
        throw new NullPointerException("no value for: " + str);
    }

    public int getInt(String str, int i) {
        Object obj = get(str);
        return obj == null ? i : toInt(obj);
    }

    public long getLong(String str) {
        return ((Number) get(str)).longValue();
    }

    public long getLong(String str, long j) {
        Object obj = get(str);
        return obj == null ? j : ((Number) obj).longValue();
    }

    public ObjectId getObjectId(String str) {
        return (ObjectId) get(str);
    }

    public ObjectId getObjectId(String str, ObjectId objectId) {
        Object obj = get(str);
        if (obj != null) {
            objectId = (ObjectId) obj;
        }
        return objectId;
    }

    public String getString(String str) {
        Object obj = get(str);
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    public String getString(String str, String str2) {
        Object obj = get(str);
        return obj == null ? str2 : obj.toString();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        return Arrays.hashCode(canonicalizeBSONObject(this).encode());
    }

    @Override // org.bson.BSONObject
    public /* bridge */ /* synthetic */ Object put(String str, Object obj) {
        return super.put((BasicBSONObject) str, (String) obj);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map, org.bson.BSONObject
    public void putAll(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            put((Object) entry.getKey().toString(), entry.getValue());
        }
    }

    @Override // org.bson.BSONObject
    public void putAll(BSONObject bSONObject) {
        for (String str : bSONObject.keySet()) {
            put((Object) str, bSONObject.get(str));
        }
    }

    @Override // org.bson.BSONObject
    public Object removeField(String str) {
        return remove(str);
    }

    @Override // org.bson.BSONObject
    public Map toMap() {
        return new LinkedHashMap(this);
    }
}
