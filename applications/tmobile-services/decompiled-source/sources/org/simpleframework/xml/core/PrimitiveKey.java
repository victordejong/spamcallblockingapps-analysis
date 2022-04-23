package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/PrimitiveKey.class */
public class PrimitiveKey implements Converter {
    private final Context context;
    private final Entry entry;
    private final PrimitiveFactory factory;
    private final Primitive root;
    private final Style style;
    private final Type type;

    public PrimitiveKey(Context context, Entry entry, Type type) {
        this.factory = new PrimitiveFactory(context, type);
        this.root = new Primitive(context, type);
        this.style = context.getStyle();
        this.context = context;
        this.entry = entry;
        this.type = type;
    }

    private boolean isOverridden(OutputNode outputNode, Object obj) throws Exception {
        return this.factory.setOverride(this.type, obj, outputNode);
    }

    private Object readAttribute(InputNode inputNode, String str) throws Exception {
        InputNode attribute = inputNode.getAttribute(this.style.getAttribute(str));
        if (attribute == null) {
            return null;
        }
        return this.root.read(attribute);
    }

    private Object readElement(InputNode inputNode, String str) throws Exception {
        InputNode next = inputNode.getNext(this.style.getElement(str));
        if (next == null) {
            return null;
        }
        return this.root.read(next);
    }

    private boolean validateAttribute(InputNode inputNode, String str) throws Exception {
        InputNode attribute = inputNode.getAttribute(this.style.getElement(str));
        if (attribute == null) {
            return true;
        }
        return this.root.validate(attribute);
    }

    private boolean validateElement(InputNode inputNode, String str) throws Exception {
        InputNode next = inputNode.getNext(this.style.getElement(str));
        if (next == null) {
            return true;
        }
        return this.root.validate(next);
    }

    private void writeAttribute(OutputNode outputNode, Object obj) throws Exception {
        Class type = this.type.getType();
        String text = this.factory.getText(obj);
        String key = this.entry.getKey();
        String str = key;
        if (key == null) {
            str = this.context.getName(type);
        }
        String attribute = this.style.getAttribute(str);
        if (text != null) {
            outputNode.setAttribute(attribute, text);
        }
    }

    private void writeElement(OutputNode outputNode, Object obj) throws Exception {
        Class type = this.type.getType();
        String key = this.entry.getKey();
        String str = key;
        if (key == null) {
            str = this.context.getName(type);
        }
        OutputNode child = outputNode.getChild(this.style.getElement(str));
        if (obj != null && !isOverridden(child, obj)) {
            this.root.write(child, obj);
        }
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode inputNode) throws Exception {
        Class type = this.type.getType();
        String key = this.entry.getKey();
        String str = key;
        if (key == null) {
            str = this.context.getName(type);
        }
        return !this.entry.isAttribute() ? readElement(inputNode, str) : readAttribute(inputNode, str);
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode inputNode, Object obj) throws Exception {
        Class type = this.type.getType();
        if (obj == null) {
            return read(inputNode);
        }
        throw new PersistenceException("Can not read key of %s for %s", type, this.entry);
    }

    @Override // org.simpleframework.xml.core.Converter
    public boolean validate(InputNode inputNode) throws Exception {
        Class type = this.type.getType();
        String key = this.entry.getKey();
        String str = key;
        if (key == null) {
            str = this.context.getName(type);
        }
        return !this.entry.isAttribute() ? validateElement(inputNode, str) : validateAttribute(inputNode, str);
    }

    @Override // org.simpleframework.xml.core.Converter
    public void write(OutputNode outputNode, Object obj) throws Exception {
        if (!this.entry.isAttribute()) {
            writeElement(outputNode, obj);
        } else if (obj != null) {
            writeAttribute(outputNode, obj);
        }
    }
}
