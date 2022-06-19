package org.bluecabin.textoo.impl;

import java.util.Objects;
import java.util.regex.Pattern;
import org.bluecabin.textoo.impl.Change;
import org.bluecabin.textoo.impl.TextLinkifyImpl;
import scala.collection.immutable.Queue;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1.class */
public final class TextLinkifyImpl$$anon$1 implements Change<T> {
    private final /* synthetic */ TextLinkifyImpl $outer;
    public final Pattern pattern$1;
    public final String scheme$1;

    public TextLinkifyImpl$$anon$1(TextLinkifyImpl textLinkifyImpl, Pattern pattern, String str) {
        Objects.requireNonNull(textLinkifyImpl);
        this.$outer = textLinkifyImpl;
        this.pattern$1 = pattern;
        this.scheme$1 = str;
        Change.Cclass.$init$(this);
    }

    @Override // org.bluecabin.textoo.impl.Change
    public Queue<Change<T>> addTo(Queue<Change<T>> queue) {
        return Change.Cclass.addTo(this, queue);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
    @Override // org.bluecabin.textoo.impl.Change
    public T apply(T t) {
        return TextLinkifyImpl.Cclass.org$bluecabin$textoo$impl$TextLinkifyImpl$$preserveExistingLinks(this.$outer, t, new TextLinkifyImpl$$anon$1$$anonfun$apply$1(this));
    }

    public /* synthetic */ TextLinkifyImpl org$bluecabin$textoo$impl$TextLinkifyImpl$$anon$$$outer() {
        return this.$outer;
    }
}
