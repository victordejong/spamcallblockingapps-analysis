package org.simpleframework.xml.core;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/Session.class */
final class Session implements Map {
    private final Map map;
    private final boolean strict;

    public Session() {
        this(true);
    }

    public Session(boolean z) {
        this.map = new HashMap();
        this.strict = z;
    }

    @Override // java.util.Map
    public void clear() {
        this.map.clear();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return this.map.containsValue(obj);
    }

    @Override // java.util.Map
    public Set entrySet() {
        return this.map.entrySet();
    }

    @Override // java.util.Map
    public Object get(Object obj) {
        return this.map.get(obj);
    }

    public Map getMap() {
        return this.map;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    public boolean isStrict() {
        return this.strict;
    }

    @Override // java.util.Map
    public Set keySet() {
        return this.map.keySet();
    }

    @Override // java.util.Map
    public Object put(Object obj, Object obj2) {
        return this.map.put(obj, obj2);
    }

    @Override // java.util.Map
    public void putAll(Map map) {
        this.map.putAll(map);
    }

    @Override // java.util.Map
    public Object remove(Object obj) {
        return this.map.remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return this.map.size();
    }

    @Override // java.util.Map
    public Collection values() {
        return this.map.values();
    }
}
