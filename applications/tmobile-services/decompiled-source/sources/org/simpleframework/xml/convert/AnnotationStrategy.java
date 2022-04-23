package org.simpleframework.xml.convert;

import java.util.Map;
import org.simpleframework.xml.strategy.Strategy;
import org.simpleframework.xml.strategy.TreeStrategy;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.NodeMap;
import org.simpleframework.xml.stream.OutputNode;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/convert/AnnotationStrategy.class */
public class AnnotationStrategy implements Strategy {
    private final ConverterScanner scanner;
    private final Strategy strategy;

    public AnnotationStrategy() {
        this(new TreeStrategy());
    }

    public AnnotationStrategy(Strategy strategy) {
        this.scanner = new ConverterScanner();
        this.strategy = strategy;
    }

    private boolean isReference(Value value) {
        return value != null && value.isReference();
    }

    private Value read(Type type, NodeMap<InputNode> nodeMap, Value value) throws Exception {
        Converter converter = this.scanner.getConverter(type, value);
        InputNode node = nodeMap.getNode();
        if (converter == null) {
            return value;
        }
        Object read = converter.read(node);
        Class type2 = type.getType();
        if (value != null) {
            value.setValue(read);
        }
        return new Reference(value, read, type2);
    }

    private boolean write(Type type, Object obj, NodeMap<OutputNode> nodeMap) throws Exception {
        Converter converter = this.scanner.getConverter(type, obj);
        OutputNode node = nodeMap.getNode();
        if (converter == null) {
            return false;
        }
        converter.write(node, obj);
        return true;
    }

    @Override // org.simpleframework.xml.strategy.Strategy
    public Value read(Type type, NodeMap<InputNode> nodeMap, Map map) throws Exception {
        Value read = this.strategy.read(type, nodeMap, map);
        return isReference(read) ? read : read(type, nodeMap, read);
    }

    @Override // org.simpleframework.xml.strategy.Strategy
    public boolean write(Type type, Object obj, NodeMap<OutputNode> nodeMap, Map map) throws Exception {
        boolean write = this.strategy.write(type, obj, nodeMap, map);
        return !write ? write(type, obj, nodeMap) : write;
    }
}
