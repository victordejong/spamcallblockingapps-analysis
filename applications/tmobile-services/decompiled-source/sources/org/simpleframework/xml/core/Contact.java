package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.strategy.Type;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/Contact.class */
interface Contact extends Type {
    Object get(Object obj) throws Exception;

    Annotation getAnnotation();

    Class getDeclaringClass();

    Class getDependent();

    Class[] getDependents();

    String getName();

    boolean isReadOnly();

    void set(Object obj, Object obj2) throws Exception;

    @Override // org.simpleframework.xml.strategy.Type
    String toString();
}
