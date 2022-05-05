package org.simpleframework.xml.convert;

import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/convert/Converter.class */
public interface Converter<T> {
    T read(InputNode inputNode) throws Exception;

    void write(OutputNode outputNode, T t) throws Exception;
}
