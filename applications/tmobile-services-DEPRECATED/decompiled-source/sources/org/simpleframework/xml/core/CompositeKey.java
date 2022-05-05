package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Position;
import org.simpleframework.xml.stream.Style;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/CompositeKey.class */
public class CompositeKey implements Converter {
    private final Context context;
    private final Entry entry;
    private final Traverser root;
    private final Style style;
    private final Type type;

    public CompositeKey(Context context, Entry entry, Type type) throws Exception {
        this.root = new Traverser(context);
        this.style = context.getStyle();
        this.context = context;
        this.entry = entry;
        this.type = type;
    }

    private Object read(InputNode inputNode, String str) throws Exception {
        String element = this.style.getElement(str);
        Class type = this.type.getType();
        InputNode inputNode2 = inputNode;
        if (element != null) {
            inputNode2 = inputNode.getNext(element);
        }
        if (inputNode2 != null && !inputNode2.isEmpty()) {
            return this.root.read(inputNode2, type);
        }
        return null;
    }

    private boolean validate(InputNode inputNode, String str) throws Exception {
        InputNode next = inputNode.getNext(this.style.getElement(str));
        Class type = this.type.getType();
        if (next != null && !next.isEmpty()) {
            return this.root.validate(next, type);
        }
        return true;
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode inputNode) throws Exception {
        Position position = inputNode.getPosition();
        Class type = this.type.getType();
        String key = this.entry.getKey();
        String str = key;
        if (key == null) {
            str = this.context.getName(type);
        }
        if (!this.entry.isAttribute()) {
            return read(inputNode, str);
        }
        throw new AttributeException("Can not have %s as an attribute for %s at %s", type, this.entry, position);
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode inputNode, Object obj) throws Exception {
        Position position = inputNode.getPosition();
        Class type = this.type.getType();
        if (obj == null) {
            return read(inputNode);
        }
        throw new PersistenceException("Can not read key of %s for %s at %s", type, this.entry, position);
    }

    @Override // org.simpleframework.xml.core.Converter
    public boolean validate(InputNode inputNode) throws Exception {
        Position position = inputNode.getPosition();
        Class type = this.type.getType();
        String key = this.entry.getKey();
        String str = key;
        if (key == null) {
            str = this.context.getName(type);
        }
        if (!this.entry.isAttribute()) {
            return validate(inputNode, str);
        }
        throw new ElementException("Can not have %s as an attribute for %s at %s", type, this.entry, position);
    }

    @Override // org.simpleframework.xml.core.Converter
    public void write(OutputNode outputNode, Object obj) throws Exception {
        Class type = this.type.getType();
        String key = this.entry.getKey();
        if (!this.entry.isAttribute()) {
            String str = key;
            if (key == null) {
                str = this.context.getName(type);
            }
            this.root.write(outputNode, obj, type, this.style.getElement(str));
            return;
        }
        throw new ElementException("Can not have %s as an attribute for %s", type, this.entry);
    }
}
