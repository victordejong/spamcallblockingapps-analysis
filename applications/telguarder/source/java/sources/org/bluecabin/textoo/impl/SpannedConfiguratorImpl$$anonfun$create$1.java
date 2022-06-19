package org.bluecabin.textoo.impl;

import android.text.Spanned;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/SpannedConfiguratorImpl$$anonfun$create$1.class */
public final class SpannedConfiguratorImpl$$anonfun$create$1 extends AbstractFunction0<Spanned> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Spanned text$1;

    public SpannedConfiguratorImpl$$anonfun$create$1(Spanned spanned) {
        this.text$1 = spanned;
    }

    @Override // scala.Function0
    public final Spanned apply() {
        return this.text$1;
    }
}
