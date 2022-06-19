package org.bluecabin.textoo.impl;

import android.text.Spannable;
import org.bluecabin.textoo.impl.TextLinkifyImpl;
import org.bluecabin.textoo.util.CharSequenceSupport;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/TextLinkifyImpl$$anonfun$1.class */
public final class TextLinkifyImpl$$anonfun$1 extends AbstractFunction1<CharSequenceSupport.SpanInfo, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Spannable spannable$1;

    /* JADX WARN: Multi-variable type inference failed */
    public TextLinkifyImpl$$anonfun$1(TextLinkifyImpl textLinkifyImpl, TextLinkifyImpl.Cclass cclass) {
        this.spannable$1 = cclass;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((CharSequenceSupport.SpanInfo) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(CharSequenceSupport.SpanInfo spanInfo) {
        this.spannable$1.removeSpan(spanInfo.span());
    }
}
