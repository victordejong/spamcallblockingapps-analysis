package org.spongycastle.util;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/util/Selector.class */
public interface Selector<T> extends Cloneable {
    Object clone();

    boolean match(T t);
}
