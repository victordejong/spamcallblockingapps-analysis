package org.simpleframework.xml.strategy;

import java.lang.reflect.Array;
import java.util.IdentityHashMap;
import org.simpleframework.xml.stream.NodeMap;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/strategy/WriteGraph.class */
class WriteGraph extends IdentityHashMap<Object, String> {
    private final String label;
    private final String length;
    private final String mark;
    private final String refer;

    public WriteGraph(Contract contract) {
        this.refer = contract.getReference();
        this.mark = contract.getIdentity();
        this.length = contract.getLength();
        this.label = contract.getLabel();
    }

    private Class writeArray(Class cls, Object obj, NodeMap nodeMap) {
        int length = Array.getLength(obj);
        if (!containsKey(obj)) {
            nodeMap.put(this.length, String.valueOf(length));
        }
        return cls.getComponentType();
    }

    private boolean writeReference(Object obj, NodeMap nodeMap) {
        String str = get(obj);
        int size = size();
        if (str != null) {
            nodeMap.put(this.refer, str);
            return true;
        }
        String valueOf = String.valueOf(size);
        nodeMap.put(this.mark, valueOf);
        put(obj, valueOf);
        return false;
    }

    public boolean write(Type type, Object obj, NodeMap nodeMap) {
        Class<?> cls = obj.getClass();
        Class<?> type2 = type.getType();
        Class<?> writeArray = cls.isArray() ? writeArray(cls, obj, nodeMap) : cls;
        if (cls != type2) {
            nodeMap.put(this.label, writeArray.getName());
        }
        return writeReference(obj, nodeMap);
    }
}
