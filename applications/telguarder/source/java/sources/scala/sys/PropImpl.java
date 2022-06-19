package scala.sys;

import scala.Function0;
import scala.Function1;
import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Some;
import scala.collection.immutable.StringOps;
import scala.collection.mutable.Map;
import scala.collection.mutable.StringBuilder;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001u4Q!\u0001\u0002\u0001\u0005\u0019\u0011\u0001\u0002\u0015:pa&k\u0007\u000f\u001c\u0006\u0003\u0007\u0011\t1a]=t\u0015\u0005)\u0011!B:dC2\fWCA\u0004\u0013'\r\u0001\u0001\u0002\u0004\t\u0003\u0013)i\u0011\u0001B\u0005\u0003\u0017\u0011\u0011a!\u00118z%\u00164\u0007cA\u0007\u000f!5\t!!\u0003\u0002\u0010\u0005\t!\u0001K]8q!\t\t\"\u0003\u0004\u0001\u0005\rM\u0001AQ1\u0001\u0016\u0005\u0005!6\u0001A\t\u0003-e\u0001\"!C\f\n\u0005a!!a\u0002(pi\"Lgn\u001a\t\u0003\u0013iI!a\u0007\u0003\u0003\u0007\u0005s\u0017\u0010\u0003\u0005\u001e\u0001\t\u0015\r\u0011\"\u0001\u001f\u0003\rYW-_\u000b\u0002?A\u0011\u0001e\t\b\u0003\u0013\u0005J!A\t\u0003\u0002\rA\u0013X\rZ3g\u0013\t!SE\u0001\u0004TiJLgn\u001a\u0006\u0003E\u0011A\u0001b\n\u0001\u0003\u0002\u0003\u0006IaH\u0001\u0005W\u0016L\b\u0005\u0003\u0005*\u0001\t\u0005\t\u0015!\u0003+\u0003\u001d1\u0018\r\\;f\r:\u0004B!C\u0016 !%\u0011A\u0006\u0002\u0002\n\rVt7\r^5p]FBQA\f\u0001\u0005\u0002=\na\u0001P5oSRtDc\u0001\u00192eA\u0019Q\u0002\u0001\t\t\u000bui\u0003\u0019A\u0010\t\u000b%j\u0003\u0019\u0001\u0016\t\u000bQ\u0002A\u0011A\u001b\u0002\u000bY\fG.^3\u0016\u0003AAQa\u000e\u0001\u0005\u0002a\nQ![:TKR,\u0012!\u000f\t\u0003\u0013iJ!a\u000f\u0003\u0003\u000f\t{w\u000e\\3b]\")Q\b\u0001C\u0001}\u0005\u00191/\u001a;\u0015\u0005}y\u0004\"\u0002!=\u0001\u0004y\u0012\u0001\u00038foZ\u000bG.^3\t\u000b\t\u0003A\u0011A\"\u0002\u0011M,GOV1mk\u0016,\"\u0001R$\u0015\u0005A)\u0005\"\u0002!B\u0001\u00041\u0005CA\tH\t\u0015A\u0015I1\u0001J\u0005\t!\u0016'\u0005\u0002\u00113!)1\n\u0001C\u0001=\u0005\u0019q-\u001a;\t\u000b5\u0003A\u0011\u0001(\u0002\u000b\rdW-\u0019:\u0015\u0003=\u0003\"!\u0003)\n\u0005E#!\u0001B+oSRDQa\u0015\u0001\u0005\u0002Q\u000baa\u001c9uS>tW#A+\u0011\u0007%1\u0006#\u0003\u0002X\t\t1q\n\u001d;j_:DQ!\u0017\u0001\u0005\u0002i\u000b!a\u001c:\u0016\u0005mkFC\u0001/_!\t\tR\fB\u0003I1\n\u0007\u0011\n\u0003\u0004`1\u0012\u0005\r\u0001Y\u0001\u0004C2$\bcA\u0005b9&\u0011!\r\u0002\u0002\ty\tLh.Y7f}!)A\r\u0001C\tK\u0006QQO\u001c3fe2L\u0018N\\4\u0016\u0003\u0019\u0004Ba\u001a7 ?5\t\u0001N\u0003\u0002jU\u00069Q.\u001e;bE2,'BA6\u0005\u0003)\u0019w\u000e\u001c7fGRLwN\\\u0005\u0003[\"\u00141!T1q\u0011\u0015y\u0007\u0001\"\u00056\u0003\u0011QXM]8\t\u000bE\u0004A\u0011\u0002:\u0002\u0013\u001d,Go\u0015;sS:<W#A:\u0011\u0005QLX\"A;\u000b\u0005Y<\u0018\u0001\u00027b]\u001eT\u0011\u0001_\u0001\u0005U\u00064\u0018-\u0003\u0002%k\")1\u0010\u0001C!y\u0006AAo\\*ue&tw\rF\u0001 \u0001")
/* loaded from: classes3-dex2jar.jar:scala/sys/PropImpl.class */
public class PropImpl<T> implements Prop<T> {
    private final String key;
    private final Function1<String, T> valueFn;

    public PropImpl(String str, Function1<String, T> function1) {
        this.key = str;
        this.valueFn = function1;
    }

    private String getString() {
        return isSet() ? new StringBuilder().append((Object) "currently: ").append((Object) get()).toString() : "unset";
    }

    @Override // scala.sys.Prop
    public void clear() {
        underlying().$minus$eq((Map<String, String>) key());
    }

    @Override // scala.sys.Prop
    public String get() {
        return isSet() ? (String) underlying().getOrElse(key(), new PropImpl$$anonfun$get$1(this)) : "";
    }

    @Override // scala.sys.Prop
    public boolean isSet() {
        return underlying().contains(key());
    }

    @Override // scala.sys.Prop
    public String key() {
        return this.key;
    }

    @Override // scala.sys.Prop
    public Option<T> option() {
        return isSet() ? new Some(value()) : None$.MODULE$;
    }

    /* renamed from: or */
    public <T1> T1 m15or(Function0<T1> function0) {
        return (T1) (isSet() ? value() : function0.apply());
    }

    @Override // scala.sys.Prop
    public String set(String str) {
        String str2 = isSet() ? get() : null;
        underlying().update(key(), str);
        return str2;
    }

    @Override // scala.sys.Prop
    public <T1> T setValue(T1 t1) {
        T value = value();
        if (t1 == null) {
            set(null);
        } else {
            set(String.valueOf(t1));
        }
        return value;
    }

    public String toString() {
        Predef$ predef$ = Predef$.MODULE$;
        return new StringOps("%s (%s)").format(Predef$.MODULE$.genericWrapArray(new Object[]{key(), getString()}));
    }

    public Map<String, String> underlying() {
        return package$.MODULE$.props();
    }

    @Override // scala.sys.Prop
    public T value() {
        return isSet() ? this.valueFn.apply(get()) : zero();
    }

    @Override // scala.sys.Prop
    public T zero() {
        return null;
    }
}
