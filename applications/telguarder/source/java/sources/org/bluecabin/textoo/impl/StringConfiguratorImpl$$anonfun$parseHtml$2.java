package org.bluecabin.textoo.impl;

import android.text.Html;
import android.text.Spannable;
import java.util.Objects;
import org.bluecabin.textoo.util.CharSequenceSupport$;
import org.bluecabin.textoo.util.CharSequenceSupport$ImplicitCharSequence$;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/StringConfiguratorImpl$$anonfun$parseHtml$2.class */
public final class StringConfiguratorImpl$$anonfun$parseHtml$2 extends AbstractFunction0<Spannable> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ StringConfiguratorImpl $outer;
    private final Html.ImageGetter imageGetter$1;
    private final Html.TagHandler tagHandler$1;

    public StringConfiguratorImpl$$anonfun$parseHtml$2(StringConfiguratorImpl stringConfiguratorImpl, Html.ImageGetter imageGetter, Html.TagHandler tagHandler) {
        Objects.requireNonNull(stringConfiguratorImpl);
        this.$outer = stringConfiguratorImpl;
        this.imageGetter$1 = imageGetter;
        this.tagHandler$1 = tagHandler;
    }

    @Override // scala.Function0
    public final Spannable apply() {
        return CharSequenceSupport$ImplicitCharSequence$.MODULE$.toSpannable$extension(CharSequenceSupport$.MODULE$.ImplicitCharSequence(Html.fromHtml((String) this.$outer.apply(), this.imageGetter$1, this.tagHandler$1)));
    }
}
