package org.bluecabin.textoo.impl;

import android.text.Spanned;
import org.bluecabin.textoo.LinksHandler;
import org.bluecabin.textoo.SpannedConfigurator;
import org.bluecabin.textoo.TextooContext;
import scala.collection.immutable.Queue;
import scala.collection.immutable.Queue$;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/SpannedConfiguratorImpl$.class */
public final class SpannedConfiguratorImpl$ {
    public static final SpannedConfiguratorImpl$ MODULE$ = null;

    static {
        new SpannedConfiguratorImpl$();
    }

    private SpannedConfiguratorImpl$() {
        MODULE$ = this;
    }

    public Queue<Change<Spanned>> $lessinit$greater$default$2() {
        return Queue$.MODULE$.empty();
    }

    public Queue<LinksHandler> $lessinit$greater$default$3() {
        return Queue$.MODULE$.empty();
    }

    public SpannedConfigurator create(TextooContext textooContext, Spanned spanned) {
        return new SpannedConfiguratorImpl(new SpannedConfiguratorImpl$$anonfun$create$1(spanned), $lessinit$greater$default$2(), $lessinit$greater$default$3(), textooContext);
    }
}
