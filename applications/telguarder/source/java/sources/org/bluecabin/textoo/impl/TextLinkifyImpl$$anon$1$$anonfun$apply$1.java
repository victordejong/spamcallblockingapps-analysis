package org.bluecabin.textoo.impl;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1$$anonfun$apply$1.class */
public final class TextLinkifyImpl$$anon$1$$anonfun$apply$1 extends AbstractFunction1<T, T> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TextLinkifyImpl$$anon$1 $outer;

    public TextLinkifyImpl$$anon$1$$anonfun$apply$1(TextLinkifyImpl$$anon$1 textLinkifyImpl$$anon$1) {
        Objects.requireNonNull(textLinkifyImpl$$anon$1);
        this.$outer = textLinkifyImpl$$anon$1;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    @Override // scala.Function1
    public final T apply(T t) {
        return this.$outer.org$bluecabin$textoo$impl$TextLinkifyImpl$$anon$$$outer().linkifyText(t, this.$outer.pattern$1, this.$outer.scheme$1);
    }
}
