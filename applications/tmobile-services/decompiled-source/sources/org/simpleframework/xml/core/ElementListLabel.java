package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.stream.Style;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/ElementListLabel.class */
class ElementListLabel extends TemplateLabel {
    private Expression cache;
    private boolean data;
    private Decorator decorator;
    private Introspector detail;
    private String entry;
    private Format format;
    private boolean inline;
    private Class item;
    private ElementList label;
    private String name;
    private String override;
    private String path;
    private boolean required;
    private Class type;

    public ElementListLabel(Contact contact, ElementList elementList, Format format) {
        this.detail = new Introspector(contact, this, format);
        this.decorator = new Qualifier(contact);
        this.required = elementList.required();
        this.type = contact.getType();
        this.override = elementList.name();
        this.inline = elementList.inline();
        this.entry = elementList.entry();
        this.data = elementList.data();
        this.item = elementList.type();
        this.format = format;
        this.label = elementList;
    }

    private Converter getConverter(Context context, String str) throws Exception {
        Type dependent = getDependent();
        Contact contact = getContact();
        return !context.isPrimitive(dependent) ? new CompositeList(context, contact, dependent, str) : new PrimitiveList(context, contact, dependent, str);
    }

    private Converter getInlineConverter(Context context, String str) throws Exception {
        Type dependent = getDependent();
        Contact contact = getContact();
        return !context.isPrimitive(dependent) ? new CompositeInlineList(context, contact, dependent, str) : new PrimitiveInlineList(context, contact, dependent, str);
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
        String entry = getEntry();
        return !this.label.inline() ? getConverter(context, entry) : getInlineConverter(context, entry);
    }

    @Override // org.simpleframework.xml.core.Label
    public Decorator getDecorator() throws Exception {
        return this.decorator;
    }

    @Override // org.simpleframework.xml.core.TemplateLabel, org.simpleframework.xml.core.Label
    public Type getDependent() throws Exception {
        Contact contact = getContact();
        if (this.item == Void.TYPE) {
            this.item = contact.getDependent();
        }
        Class cls = this.item;
        if (cls != null) {
            return new ClassType(cls);
        }
        throw new ElementException("Unable to determine generic type for %s", contact);
    }

    @Override // org.simpleframework.xml.core.Label
    public Object getEmpty(Context context) throws Exception {
        CollectionFactory collectionFactory = new CollectionFactory(context, new ClassType(this.type));
        if (!this.label.empty()) {
            return collectionFactory.getInstance();
        }
        return null;
    }

    @Override // org.simpleframework.xml.core.TemplateLabel, org.simpleframework.xml.core.Label
    public String getEntry() throws Exception {
        Style style = this.format.getStyle();
        if (this.detail.isEmpty(this.entry)) {
            this.entry = this.detail.getEntry();
        }
        return style.getElement(this.entry);
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
        return this.type;
    }

    @Override // org.simpleframework.xml.core.TemplateLabel, org.simpleframework.xml.core.Label
    public boolean isCollection() {
        return true;
    }

    @Override // org.simpleframework.xml.core.Label
    public boolean isData() {
        return this.data;
    }

    @Override // org.simpleframework.xml.core.TemplateLabel, org.simpleframework.xml.core.Label
    public boolean isInline() {
        return this.inline;
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
