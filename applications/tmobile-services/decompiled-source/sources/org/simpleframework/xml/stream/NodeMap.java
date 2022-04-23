package org.simpleframework.xml.stream;

import java.util.Iterator;
import org.simpleframework.xml.stream.Node;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/stream/NodeMap.class */
public interface NodeMap<T extends Node> extends Iterable<String> {
    T get(String str);

    String getName();

    T getNode();

    @Override // java.lang.Iterable
    Iterator<String> iterator();

    T put(String str, String str2);

    T remove(String str);
}
