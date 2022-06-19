package scala;

import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/StringContext$$anonfun$raw$1.class */
public final class StringContext$$anonfun$raw$1 extends AbstractFunction1<String, String> implements Serializable {
    public static final long serialVersionUID = 0;

    public StringContext$$anonfun$raw$1(StringContext stringContext) {
    }

    public final String apply(String str) {
        return (String) Predef$.MODULE$.identity(str);
    }
}
