package com.google.protobuf;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/LazyField$LazyEntry.class */
public class LazyField$LazyEntry<K> implements Map.Entry<K, Object> {
    private Map.Entry<K, LazyField> entry;

    /* JADX INFO: Access modifiers changed from: private */
    public LazyField$LazyEntry(Map.Entry<K, LazyField> entry) {
        this.entry = entry;
    }

    public LazyField getField() {
        return this.entry.getValue();
    }

    @Override // java.util.Map.Entry
    public K getKey() {
        return this.entry.getKey();
    }

    @Override // java.util.Map.Entry
    public Object getValue() {
        LazyField value = this.entry.getValue();
        if (value == null) {
            return null;
        }
        return value.getValue();
    }

    @Override // java.util.Map.Entry
    public Object setValue(Object obj) {
        if (obj instanceof MessageLite) {
            return this.entry.getValue().setValue((MessageLite) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
