package org.bluecabin.textoo.impl;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2$$anonfun$apply$2.class */
public final class TextLinkifyImpl$$anon$2$$anonfun$apply$2 extends AbstractFunction1<T, T> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TextLinkifyImpl$$anon$2 $outer;

    public TextLinkifyImpl$$anon$2$$anonfun$apply$2(TextLinkifyImpl$$anon$2 textLinkifyImpl$$anon$2) {
        Objects.requireNonNull(textLinkifyImpl$$anon$2);
        this.$outer = textLinkifyImpl$$anon$2;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    @Override // scala.Function1
    public final T apply(T t) {
        return this.$outer.org$bluecabin$textoo$impl$TextLinkifyImpl$$anon$$$outer().linkifyText(t, this.$outer.p$1, this.$outer.scheme$2, this.$outer.matchFilter$1, this.$outer.transformFilter$1);
    }
}
