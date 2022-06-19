package org.bluecabin.textoo.impl;

import scala.Serializable;
import scala.runtime.AbstractFunction2;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/ConfiguratorImpl$$anonfun$apply$1.class */
public final class ConfiguratorImpl$$anonfun$apply$1 extends AbstractFunction2<T, Change<T>, T> implements Serializable {
    public static final long serialVersionUID = 0;

    public ConfiguratorImpl$$anonfun$apply$1(ConfiguratorImpl<T, C> configuratorImpl) {
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return apply((ConfiguratorImpl$$anonfun$apply$1) obj, (Change<ConfiguratorImpl$$anonfun$apply$1>) obj2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    public final T apply(T t, Change<T> change) {
        return change.apply(t);
    }
}
