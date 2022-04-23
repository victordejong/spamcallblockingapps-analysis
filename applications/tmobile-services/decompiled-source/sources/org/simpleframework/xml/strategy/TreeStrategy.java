package org.simpleframework.xml.strategy;

import java.lang.reflect.Array;
import java.util.Map;
import org.simpleframework.xml.stream.Node;
import org.simpleframework.xml.stream.NodeMap;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/strategy/TreeStrategy.class */
public class TreeStrategy implements Strategy {
    private final String label;
    private final String length;
    private final Loader loader;

    public TreeStrategy() {
        this(Name.LABEL, Name.LENGTH);
    }

    public TreeStrategy(String str, String str2) {
        this.loader = new Loader();
        this.length = str2;
        this.label = str;
    }

    private Value readArray(Class cls, NodeMap nodeMap) throws Exception {
        Node remove = nodeMap.remove(this.length);
        return new ArrayValue(cls, remove != null ? Integer.parseInt(remove.getValue()) : 0);
    }

    private Class readValue(Type type, NodeMap nodeMap) throws Exception {
        Node remove = nodeMap.remove(this.label);
        Class type2 = type.getType();
        Class<?> cls = type2;
        if (type2.isArray()) {
            cls = type2.getComponentType();
        }
        if (remove != null) {
            cls = this.loader.load(remove.getValue());
        }
        return cls;
    }

    private Class writeArray(Class cls, Object obj, NodeMap nodeMap) {
        int length = Array.getLength(obj);
        String str = this.length;
        if (str != null) {
            nodeMap.put(str, String.valueOf(length));
        }
        return cls.getComponentType();
    }

    @Override // org.simpleframework.xml.strategy.Strategy
    public Value read(Type type, NodeMap nodeMap, Map map) throws Exception {
        Class readValue = readValue(type, nodeMap);
        Class type2 = type.getType();
        if (type2.isArray()) {
            return readArray(readValue, nodeMap);
        }
        if (type2 != readValue) {
            return new ObjectValue(readValue);
        }
        return null;
    }

    @Override // org.simpleframework.xml.strategy.Strategy
    public boolean write(Type type, Object obj, NodeMap nodeMap, Map map) {
        Class<?> cls = obj.getClass();
        Class<?> type2 = type.getType();
        Class<?> writeArray = cls.isArray() ? writeArray(type2, obj, nodeMap) : cls;
        if (cls == type2) {
            return false;
        }
        nodeMap.put(this.label, writeArray.getName());
        return false;
    }
}
