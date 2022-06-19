package scala.collection.convert;

import java.util.Objects;
import java.util.Properties;
import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.collection.convert.Wrappers;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/Wrappers$JPropertiesWrapper$.class */
public class Wrappers$JPropertiesWrapper$ extends AbstractFunction1<Properties, Wrappers.JPropertiesWrapper> implements Serializable {
    private final /* synthetic */ Wrappers $outer;

    public Wrappers$JPropertiesWrapper$(Wrappers wrappers) {
        Objects.requireNonNull(wrappers);
        this.$outer = wrappers;
    }

    private Object readResolve() {
        return this.$outer.JPropertiesWrapper();
    }

    public Wrappers.JPropertiesWrapper apply(Properties properties) {
        return new Wrappers.JPropertiesWrapper(this.$outer, properties);
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public final String toString() {
        return "JPropertiesWrapper";
    }

    public Option<Properties> unapply(Wrappers.JPropertiesWrapper jPropertiesWrapper) {
        return jPropertiesWrapper == null ? None$.MODULE$ : new Some(jPropertiesWrapper.underlying());
    }
}
