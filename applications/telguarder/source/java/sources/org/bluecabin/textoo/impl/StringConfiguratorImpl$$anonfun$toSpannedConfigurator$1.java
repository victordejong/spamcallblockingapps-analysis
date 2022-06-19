package org.bluecabin.textoo.impl;

import android.text.Spanned;
import java.util.Objects;
import org.bluecabin.textoo.util.CharSequenceSupport$;
import org.bluecabin.textoo.util.CharSequenceSupport$ImplicitCharSequence$;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/StringConfiguratorImpl$$anonfun$toSpannedConfigurator$1.class */
public final class StringConfiguratorImpl$$anonfun$toSpannedConfigurator$1 extends AbstractFunction0<Spanned> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ StringConfiguratorImpl $outer;

    public StringConfiguratorImpl$$anonfun$toSpannedConfigurator$1(StringConfiguratorImpl stringConfiguratorImpl) {
        Objects.requireNonNull(stringConfiguratorImpl);
        this.$outer = stringConfiguratorImpl;
    }

    @Override // scala.Function0
    public final Spanned apply() {
        return CharSequenceSupport$ImplicitCharSequence$.MODULE$.toSpanned$extension(CharSequenceSupport$.MODULE$.ImplicitCharSequence((CharSequence) this.$outer.apply()));
    }
}
