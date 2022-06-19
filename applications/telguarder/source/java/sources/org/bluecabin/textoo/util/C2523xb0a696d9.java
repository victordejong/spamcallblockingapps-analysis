package org.bluecabin.textoo.util;

import android.text.Spanned;
import android.text.style.ClickableSpan;
import org.bluecabin.textoo.util.CharSequenceSupport;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* renamed from: org.bluecabin.textoo.util.CharSequenceSupport$ImplicitCharSequence$$anonfun$allLinks$extension$1 */
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$$anonfun$allLinks$extension$1.class */
public final class C2523xb0a696d9 extends AbstractFunction1<ClickableSpan, CharSequenceSupport.SpanInfo> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Spanned spanned$1;

    public C2523xb0a696d9(Spanned spanned) {
        this.spanned$1 = spanned;
    }

    public final CharSequenceSupport.SpanInfo apply(ClickableSpan clickableSpan) {
        return new CharSequenceSupport.SpanInfo(clickableSpan, this.spanned$1.getSpanStart(clickableSpan), this.spanned$1.getSpanEnd(clickableSpan), this.spanned$1.getSpanFlags(clickableSpan));
    }
}
