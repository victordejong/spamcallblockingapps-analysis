package org.simpleframework.xml.convert;

import java.lang.annotation.Annotation;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/convert/Scanner.class */
interface Scanner {
    <T extends Annotation> T scan(Class<T> cls);
}
