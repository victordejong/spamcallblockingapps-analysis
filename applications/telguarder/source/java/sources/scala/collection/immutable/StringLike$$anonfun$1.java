package scala.collection.immutable;

import java.util.Objects;
import scala.Serializable;
import scala.collection.mutable.StringBuilder;
import scala.runtime.AbstractFunction2;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StringLike$$anonfun$1.class */
public final class StringLike$$anonfun$1 extends AbstractFunction2<String, Object, String> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ StringLike $outer;

    public StringLike$$anonfun$1(StringLike<Repr> stringLike) {
        Objects.requireNonNull(stringLike);
        this.$outer = stringLike;
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return apply((String) obj, BoxesRunTime.unboxToChar(obj2));
    }

    public final String apply(String str, char c) {
        String stringBuilder;
        StringBuilder append = new StringBuilder().append((Object) str);
        StringLike stringLike = this.$outer;
        stringBuilder = new StringBuilder().append((Object) "\\Q").append(BoxesRunTime.boxToCharacter(c)).append((Object) "\\E").toString();
        return append.append((Object) stringBuilder).toString();
    }
}
