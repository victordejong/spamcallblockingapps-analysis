package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Format;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/ElementLabel.class */
class ElementLabel extends TemplateLabel {
    private Expression cache;
    private boolean data;
    private Decorator decorator;
    private Introspector detail;
    private Class expect;
    private Format format;
    private Element label;
    private String name;
    private String override;
    private String path;
    private boolean required;
    private Class type;

    public ElementLabel(Contact contact, Element element, Format format) {
        this.detail = new Introspector(contact, this, format);
        this.decorator = new Qualifier(contact);
        this.required = element.required();
        this.type = contact.getType();
        this.override = element.name();
        this.expect = element.type();
        this.data = element.data();
        this.format = format;
        this.label = element;
    }

    @Override // org.simpleframework.xml.core.Label
    public Annotation getAnnotation() {
        return this.label;
    }

    @Override // org.simpleframework.xml.core.Label
    public Contact getContact() {
        return this.detail.getContact();
    }

    @Override // org.simpleframework.xml.core.Label
    public Converter getConverter(Context context) throws Exception {
        Contact contact = getContact();
        if (context.isPrimitive(contact)) {
            return new Primitive(context, contact);
        }
        Class cls = this.expect;
        return cls == Void.TYPE ? new Composite(context, contact) : new Composite(context, contact, cls);
    }

    @Override // org.simpleframework.xml.core.Label
    public Decorator getDecorator() throws Exception {
        return this.decorator;
    }

    @Override // org.simpleframework.xml.core.Label
    public Object getEmpty(Context context) {
        return null;
    }

    @Override // org.simpleframework.xml.core.Label
    public Expression getExpression() throws Exception {
        if (this.cache == null) {
            this.cache = this.detail.getExpression();
        }
        return this.cache;
    }

    @Override // org.simpleframework.xml.core.Label
    public String getName() throws Exception {
        if (this.name == null) {
            this.name = this.format.getStyle().getElement(this.detail.getName());
        }
        return this.name;
    }

    @Override // org.simpleframework.xml.core.Label
    public String getOverride() {
        return this.override;
    }

    @Override // org.simpleframework.xml.core.Label
    public String getPath() throws Exception {
        if (this.path == null) {
            this.path = getExpression().getElement(getName());
        }
        return this.path;
    }

    @Override // org.simpleframework.xml.core.Label
    public Class getType() {
        Class cls = this.expect;
        Class cls2 = cls;
        if (cls == Void.TYPE) {
            cls2 = this.type;
        }
        return cls2;
    }

    @Override // org.simpleframework.xml.core.TemplateLabel, org.simpleframework.xml.core.Label
    public Type getType(Class cls) {
        Contact contact = getContact();
        Class cls2 = this.expect;
        return cls2 == Void.TYPE ? contact : new OverrideType(contact, cls2);
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isData() {
        return this.data;
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isRequired() {
        return this.required;
    }

    @Override // org.simpleframework.xml.core.Label
    public String toString() {
        return this.detail.toString();
    }
}
