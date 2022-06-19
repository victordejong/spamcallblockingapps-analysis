package org.bluecabin.textoo.impl;

import android.text.Spannable;
import android.text.Spanned;
import android.text.style.URLSpan;
import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1.class */
public final class LinksHandlingImpl$$anonfun$toResult$1 extends AbstractFunction1<URLSpan, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ LinksHandlingImpl $outer;
    private final Spannable spannable$1;
    private final Spanned spanned$1;

    public LinksHandlingImpl$$anonfun$toResult$1(LinksHandlingImpl linksHandlingImpl, Spanned spanned, Spannable spannable) {
        Objects.requireNonNull(linksHandlingImpl);
        this.$outer = linksHandlingImpl;
        this.spanned$1 = spanned;
        this.spannable$1 = spannable;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((URLSpan) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(URLSpan uRLSpan) {
        ClickableSpanWrapper clickableSpanWrapper = new ClickableSpanWrapper(uRLSpan, new LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1(this, uRLSpan.getURL()));
        int spanStart = this.spanned$1.getSpanStart(uRLSpan);
        int spanEnd = this.spanned$1.getSpanEnd(uRLSpan);
        int spanFlags = this.spanned$1.getSpanFlags(uRLSpan);
        this.spannable$1.removeSpan(uRLSpan);
        this.spannable$1.setSpan(clickableSpanWrapper, spanStart, spanEnd, spanFlags);
    }

    public /* synthetic */ LinksHandlingImpl org$bluecabin$textoo$impl$LinksHandlingImpl$$anonfun$$$outer() {
        return this.$outer;
    }
}
