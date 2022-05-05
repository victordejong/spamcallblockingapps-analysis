package org.simpleframework.xml.core;

import org.simpleframework.xml.stream.OutputNode;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/Decorator.class */
interface Decorator {
    void decorate(OutputNode outputNode);

    void decorate(OutputNode outputNode, Decorator decorator);
}
