package org.bluecabin.textoo.util;

import org.bluecabin.textoo.util.CharSequenceSupport;
import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple4;
import scala.runtime.AbstractFunction4;
import scala.runtime.BoxesRunTime;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/util/CharSequenceSupport$SpanInfo$.class */
public class CharSequenceSupport$SpanInfo$ extends AbstractFunction4<Object, Object, Object, Object, CharSequenceSupport.SpanInfo> implements Serializable {
    public static final CharSequenceSupport$SpanInfo$ MODULE$ = null;

    static {
        new CharSequenceSupport$SpanInfo$();
    }

    public CharSequenceSupport$SpanInfo$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.Function4
    public /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2, Object obj3, Object obj4) {
        return apply(obj, BoxesRunTime.unboxToInt(obj2), BoxesRunTime.unboxToInt(obj3), BoxesRunTime.unboxToInt(obj4));
    }

    public CharSequenceSupport.SpanInfo apply(Object obj, int i, int i2, int i3) {
        return new CharSequenceSupport.SpanInfo(obj, i, i2, i3);
    }

    @Override // scala.runtime.AbstractFunction4, scala.Function4
    public final String toString() {
        return "SpanInfo";
    }

    public Option<Tuple4<Object, Object, Object, Object>> unapply(CharSequenceSupport.SpanInfo spanInfo) {
        return spanInfo == null ? None$.MODULE$ : new Some(new Tuple4(spanInfo.span(), BoxesRunTime.boxToInteger(spanInfo.start()), BoxesRunTime.boxToInteger(spanInfo.end()), BoxesRunTime.boxToInteger(spanInfo.flags())));
    }
}
