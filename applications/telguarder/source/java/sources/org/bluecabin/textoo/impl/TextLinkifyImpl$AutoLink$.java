package org.bluecabin.textoo.impl;

import java.util.Objects;
import org.bluecabin.textoo.impl.TextLinkifyImpl;
import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$.class */
public class TextLinkifyImpl$AutoLink$ extends AbstractFunction1<Object, TextLinkifyImpl<T, C>.AutoLink> implements Serializable {
    private final /* synthetic */ TextLinkifyImpl $outer;

    public TextLinkifyImpl$AutoLink$(TextLinkifyImpl<T, C> textLinkifyImpl) {
        Objects.requireNonNull(textLinkifyImpl);
        this.$outer = textLinkifyImpl;
    }

    private Object readResolve() {
        return this.$outer.org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink();
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public TextLinkifyImpl<T, C>.AutoLink apply(int i) {
        return new TextLinkifyImpl.AutoLink(this.$outer, i);
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public final String toString() {
        return "AutoLink";
    }

    public Option<Object> unapply(TextLinkifyImpl<T, C>.AutoLink autoLink) {
        return autoLink == null ? None$.MODULE$ : new Some(BoxesRunTime.boxToInteger(autoLink.mask()));
    }
}
