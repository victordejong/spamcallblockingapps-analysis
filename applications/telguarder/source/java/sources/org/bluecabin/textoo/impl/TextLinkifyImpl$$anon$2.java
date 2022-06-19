package org.bluecabin.textoo.impl;

import android.text.util.Linkify;
import java.util.Objects;
import java.util.regex.Pattern;
import org.bluecabin.textoo.impl.Change;
import org.bluecabin.textoo.impl.TextLinkifyImpl;
import scala.collection.immutable.Queue;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2.class */
public final class TextLinkifyImpl$$anon$2 implements Change<T> {
    private final /* synthetic */ TextLinkifyImpl $outer;
    public final Linkify.MatchFilter matchFilter$1;
    public final Pattern p$1;
    public final String scheme$2;
    public final Linkify.TransformFilter transformFilter$1;

    public TextLinkifyImpl$$anon$2(TextLinkifyImpl textLinkifyImpl, Pattern pattern, String str, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter) {
        Objects.requireNonNull(textLinkifyImpl);
        this.$outer = textLinkifyImpl;
        this.p$1 = pattern;
        this.scheme$2 = str;
        this.matchFilter$1 = matchFilter;
        this.transformFilter$1 = transformFilter;
        Change.Cclass.$init$(this);
    }

    @Override // org.bluecabin.textoo.impl.Change
    public Queue<Change<T>> addTo(Queue<Change<T>> queue) {
        return Change.Cclass.addTo(this, queue);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
    @Override // org.bluecabin.textoo.impl.Change
    public T apply(T t) {
        return TextLinkifyImpl.Cclass.org$bluecabin$textoo$impl$TextLinkifyImpl$$preserveExistingLinks(this.$outer, t, new TextLinkifyImpl$$anon$2$$anonfun$apply$2(this));
    }

    public /* synthetic */ TextLinkifyImpl org$bluecabin$textoo$impl$TextLinkifyImpl$$anon$$$outer() {
        return this.$outer;
    }
}
