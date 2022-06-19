package scala.collection.convert;

import java.util.Dictionary;
import scala.Serializable;
import scala.collection.mutable.Map;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsScala$$anonfun$dictionaryAsScalaMapConverter$1.class */
public final class DecorateAsScala$$anonfun$dictionaryAsScalaMapConverter$1 extends AbstractFunction0<Map<A, B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Dictionary p$1;

    public DecorateAsScala$$anonfun$dictionaryAsScalaMapConverter$1(DecorateAsScala decorateAsScala, Dictionary dictionary) {
        this.p$1 = dictionary;
    }

    @Override // scala.Function0
    public final Map<A, B> apply() {
        return WrapAsScala$.MODULE$.dictionaryAsScalaMap(this.p$1);
    }
}
