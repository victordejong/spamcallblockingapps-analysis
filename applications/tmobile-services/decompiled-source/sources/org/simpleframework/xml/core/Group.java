package org.simpleframework.xml.core;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/Group.class */
interface Group {
    LabelMap getElements() throws Exception;

    Label getLabel(Class cls);

    Label getText() throws Exception;

    boolean isInline();

    boolean isTextList();

    String toString();
}
