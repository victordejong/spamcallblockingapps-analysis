package org.bouncycastle.util;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/util/Selector.class */
public interface Selector extends Cloneable {
    Object clone();

    boolean match(Object obj);
}
