package org.bluecabin.textoo.impl;

import org.bluecabin.textoo.StringConfigurator;
import org.bluecabin.textoo.TextooContext;
import scala.collection.immutable.Queue;
import scala.collection.immutable.Queue$;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/StringConfiguratorImpl$.class */
public final class StringConfiguratorImpl$ {
    public static final StringConfiguratorImpl$ MODULE$ = null;

    private Queue<Change<String>> $lessinit$greater$default$2() {
        return Queue$.MODULE$.empty();
    }

    static {
        new StringConfiguratorImpl$();
    }

    private StringConfiguratorImpl$() {
        MODULE$ = this;
    }

    public StringConfigurator create(TextooContext textooContext, String str) {
        return new StringConfiguratorImpl(new StringConfiguratorImpl$$anonfun$create$1(str), $lessinit$greater$default$2(), textooContext);
    }
}
