package org.bluecabin.textoo.impl;

import android.widget.TextView;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/TextViewConfiguratorImpl$$anonfun$create$1.class */
public final class TextViewConfiguratorImpl$$anonfun$create$1 extends AbstractFunction0<TextView> implements Serializable {
    public static final long serialVersionUID = 0;
    private final TextView view$1;

    public TextViewConfiguratorImpl$$anonfun$create$1(TextView textView) {
        this.view$1 = textView;
    }

    @Override // scala.Function0
    public final TextView apply() {
        return this.view$1;
    }
}
