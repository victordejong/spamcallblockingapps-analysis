package scala.collection.immutable;

import scala.Serializable;
import scala.collection.mutable.StringBuilder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StringLike$$anonfun$stripMargin$1.class */
public final class StringLike$$anonfun$stripMargin$1 extends AbstractFunction1<String, StringBuilder> implements Serializable {
    public static final long serialVersionUID = 0;
    private final StringBuilder buf$2;
    private final char marginChar$1;

    public StringLike$$anonfun$stripMargin$1(StringLike stringLike, StringBuilder stringBuilder, char c) {
        this.buf$2 = stringBuilder;
        this.marginChar$1 = c;
    }

    public final StringBuilder apply(String str) {
        int length = str.length();
        int i = 0;
        while (i < length && str.charAt(i) <= ' ') {
            i++;
        }
        StringBuilder stringBuilder = this.buf$2;
        String str2 = str;
        if (i < length) {
            str2 = str;
            if (str.charAt(i) == this.marginChar$1) {
                str2 = str.substring(i + 1);
            }
        }
        return stringBuilder.append(str2);
    }
}
