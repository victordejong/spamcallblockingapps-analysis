package org.bluecabin.textoo.impl;

import android.widget.TextView;
import org.bluecabin.textoo.TextViewConfigurator;
import org.bluecabin.textoo.TextooContext;
import scala.collection.immutable.Queue$;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/TextViewConfiguratorImpl$.class */
public final class TextViewConfiguratorImpl$ {
    public static final TextViewConfiguratorImpl$ MODULE$ = null;

    static {
        new TextViewConfiguratorImpl$();
    }

    private TextViewConfiguratorImpl$() {
        MODULE$ = this;
    }

    public TextViewConfigurator create(TextooContext textooContext, TextView textView) {
        return new TextViewConfiguratorImpl(new TextViewConfiguratorImpl$$anonfun$create$1(textView), Queue$.MODULE$.empty(), Queue$.MODULE$.empty(), textooContext);
    }
}
