package org.simpleframework.xml.strategy;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/strategy/Value.class */
public interface Value {
    int getLength();

    Class getType();

    Object getValue();

    boolean isReference();

    void setValue(Object obj);
}
