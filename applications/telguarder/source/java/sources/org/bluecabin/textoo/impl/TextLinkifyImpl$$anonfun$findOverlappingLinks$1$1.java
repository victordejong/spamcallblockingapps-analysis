package org.bluecabin.textoo.impl;

import org.bluecabin.textoo.impl.TextLinkifyImpl;
import org.bluecabin.textoo.util.CharSequenceSupport;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/TextLinkifyImpl$$anonfun$findOverlappingLinks$1$1.class */
public final class TextLinkifyImpl$$anonfun$findOverlappingLinks$1$1 extends AbstractFunction1<CharSequenceSupport.SpanInfo, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final CharSequenceSupport.SpanInfo newLink$1;

    /* JADX WARN: Multi-variable type inference failed */
    public TextLinkifyImpl$$anonfun$findOverlappingLinks$1$1(TextLinkifyImpl textLinkifyImpl, TextLinkifyImpl.Cclass cclass) {
        this.newLink$1 = cclass;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((CharSequenceSupport.SpanInfo) obj));
    }

    public final boolean apply(CharSequenceSupport.SpanInfo spanInfo) {
        return spanInfo.overlapsWith(this.newLink$1);
    }
}
