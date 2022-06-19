package org.w3c.dom.smil;
/* loaded from: classes3-dex2jar.jar:org/w3c/dom/smil/ElementTargetAttributes.class */
public interface ElementTargetAttributes {
    public static final short ATTRIBUTE_TYPE_AUTO = 0;
    public static final short ATTRIBUTE_TYPE_CSS = 1;
    public static final short ATTRIBUTE_TYPE_XML = 2;

    String getAttributeName();

    short getAttributeType();

    void setAttributeName(String str);

    void setAttributeType(short s);
}
