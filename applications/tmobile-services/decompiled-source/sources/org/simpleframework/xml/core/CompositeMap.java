package org.simpleframework.xml.core;

import java.util.Map;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/CompositeMap.class */
class CompositeMap implements Converter {
    private final Entry entry;
    private final MapFactory factory;
    private final Converter key;
    private final Style style;
    private final Converter value;

    public CompositeMap(Context context, Entry entry, Type type) throws Exception {
        this.factory = new MapFactory(context, type);
        this.value = entry.getValue(context);
        this.key = entry.getKey(context);
        this.style = context.getStyle();
        this.entry = entry;
    }

    private Object populate(InputNode inputNode, Object obj) throws Exception {
        Map map = (Map) obj;
        while (true) {
            InputNode next = inputNode.getNext();
            if (next == null) {
                return map;
            }
            map.put(this.key.read(next), this.value.read(next));
        }
    }

    private boolean validate(InputNode inputNode, Class cls) throws Exception {
        InputNode next;
        do {
            next = inputNode.getNext();
            if (next == null) {
                return true;
            }
            if (!this.key.validate(next)) {
                return false;
            }
        } while (this.value.validate(next));
        return false;
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode inputNode) throws Exception {
        Instance instance = this.factory.getInstance(inputNode);
        Object instance2 = instance.getInstance();
        return !instance.isReference() ? populate(inputNode, instance2) : instance2;
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode inputNode, Object obj) throws Exception {
        Instance instance = this.factory.getInstance(inputNode);
        if (instance.isReference()) {
            return instance.getInstance();
        }
        instance.setInstance(obj);
        return obj != null ? populate(inputNode, obj) : obj;
    }

    @Override // org.simpleframework.xml.core.Converter
    public boolean validate(InputNode inputNode) throws Exception {
        Instance instance = this.factory.getInstance(inputNode);
        if (instance.isReference()) {
            return true;
        }
        instance.setInstance(null);
        return validate(inputNode, instance.getType());
    }

    @Override // org.simpleframework.xml.core.Converter
    public void write(OutputNode outputNode, Object obj) throws Exception {
        Map map = (Map) obj;
        for (Object obj2 : map.keySet()) {
            OutputNode child = outputNode.getChild(this.style.getElement(this.entry.getEntry()));
            Object obj3 = map.get(obj2);
            this.key.write(child, obj2);
            this.value.write(child, obj3);
        }
    }
}
