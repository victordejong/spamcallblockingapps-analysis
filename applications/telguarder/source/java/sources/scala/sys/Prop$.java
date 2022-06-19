package scala.sys;

import scala.Predef$;
import scala.sys.Prop;
/* loaded from: classes3-dex2jar.jar:scala/sys/Prop$.class */
public final class Prop$ {
    public static final Prop$ MODULE$ = null;

    static {
        new Prop$();
    }

    private Prop$() {
        MODULE$ = this;
    }

    public <T> Prop<T> apply(String str, Prop.Creator<T> creator) {
        Predef$ predef$ = Predef$.MODULE$;
        return creator.apply(str);
    }
}
