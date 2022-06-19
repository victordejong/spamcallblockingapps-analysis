package org.bluecabin.textoo.impl;

import android.text.Spannable;
import org.bluecabin.textoo.impl.TextLinkifyImpl;
import org.bluecabin.textoo.util.CharSequenceSupport;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* renamed from: org.bluecabin.textoo.impl.TextLinkifyImpl$$anonfun$org$bluecabin$textoo$impl$TextLinkifyImpl$$preserveExistingLinks$1 */
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/TextLinkifyImpl$$anonfun$org$bluecabin$textoo$impl$TextLinkifyImpl$$preserveExistingLinks$1.class */
public final class C2522x82274022 extends AbstractFunction1<CharSequenceSupport.SpanInfo, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Spannable spannable$2;

    /* JADX WARN: Multi-variable type inference failed */
    public C2522x82274022(TextLinkifyImpl textLinkifyImpl, TextLinkifyImpl.Cclass cclass) {
        this.spannable$2 = cclass;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((CharSequenceSupport.SpanInfo) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(CharSequenceSupport.SpanInfo spanInfo) {
        spanInfo.addTo(this.spannable$2);
    }
}
