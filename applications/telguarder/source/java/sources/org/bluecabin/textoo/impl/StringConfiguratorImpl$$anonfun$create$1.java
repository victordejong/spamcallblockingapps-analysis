package org.bluecabin.textoo.impl;

import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/StringConfiguratorImpl$$anonfun$create$1.class */
public final class StringConfiguratorImpl$$anonfun$create$1 extends AbstractFunction0<String> implements Serializable {
    public static final long serialVersionUID = 0;
    private final String text$1;

    public StringConfiguratorImpl$$anonfun$create$1(String str) {
        this.text$1 = str;
    }

    @Override // scala.Function0
    public final String apply() {
        return this.text$1;
    }
}
