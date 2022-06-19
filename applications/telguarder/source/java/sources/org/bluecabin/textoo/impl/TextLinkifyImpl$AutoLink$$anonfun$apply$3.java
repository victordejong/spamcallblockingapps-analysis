package org.bluecabin.textoo.impl;

import java.util.Objects;
import org.bluecabin.textoo.impl.TextLinkifyImpl;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$$anonfun$apply$3.class */
public final class TextLinkifyImpl$AutoLink$$anonfun$apply$3 extends AbstractFunction1<T, T> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TextLinkifyImpl.AutoLink $outer;

    public TextLinkifyImpl$AutoLink$$anonfun$apply$3(TextLinkifyImpl<T, C>.AutoLink autoLink) {
        Objects.requireNonNull(autoLink);
        this.$outer = autoLink;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    @Override // scala.Function1
    public final T apply(T t) {
        return this.$outer.org$bluecabin$textoo$impl$TextLinkifyImpl$AutoLink$$$outer().linkifyText(t, this.$outer.mask());
    }
}
