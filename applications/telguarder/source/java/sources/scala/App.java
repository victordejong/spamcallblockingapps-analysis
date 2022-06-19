package scala;

import scala.collection.generic.TraversableForwarder;
import scala.collection.mutable.ListBuffer;
import scala.collection.mutable.StringBuilder;
import scala.compat.Platform$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.TraitSetter;
import scala.util.Properties$;
import scala.util.PropertiesTrait;
@ScalaSignature(bytes = "\u0006\u0001\u00054q!\u0001\u0002\u0011\u0002\u0007\u0005QAA\u0002BaBT\u0011aA\u0001\u0006g\u000e\fG.Y\u0002\u0001'\r\u0001aA\u0003\t\u0003\u000f!i\u0011AA\u0005\u0003\u0013\t\u0011a!\u00118z%\u00164\u0007CA\u0004\f\u0013\ta!AA\u0006EK2\f\u00170\u001a3J]&$\b\"\u0002\b\u0001\t\u0003y\u0011A\u0002\u0013j]&$H\u0005F\u0001\u0011!\t9\u0011#\u0003\u0002\u0013\u0005\t!QK\\5u\u0011\u001d!\u0002A1A\u0005\u0002U\ta\"\u001a=fGV$\u0018n\u001c8Ti\u0006\u0014H/F\u0001\u0017!\t9q#\u0003\u0002\u0019\u0005\t!Aj\u001c8h\u0011\u0019Q\u0002\u0001)A\u0005-\u0005yQ\r_3dkRLwN\\*uCJ$\b\u0005\u000b\u0003\u001a9}\t\u0003CA\u0004\u001e\u0013\tq\"A\u0001\u000beKB\u0014XmY1uK\u0012|e/\u001a:sS\u0012LgnZ\u0011\u0002A\u00059S\r_3dkRLwN\\*uCJ$\be\u001d5pk2$\u0007E\\8uA\t,\u0007e\u001c<feJLG\rZ3oC\u0005\u0011\u0013A\u0002\u001a/cEr\u0003\u0007C\u0003%\u0001\u0011EQ%\u0001\u0003be\u001e\u001cX#\u0001\u0014\u0011\u0007\u001d9\u0013&\u0003\u0002)\u0005\t)\u0011I\u001d:bsB\u0011!&\f\b\u0003\u000f-J!\u0001\f\u0002\u0002\rA\u0013X\rZ3g\u0013\tqsF\u0001\u0004TiJLgn\u001a\u0006\u0003Y\tACa\t\u000f2C\u0005\n!'A\u000fbe\u001e\u001c\be\u001d5pk2$\u0007E\\8uA\t,\u0007e\u001c<feJLG\rZ3o\u0011%!\u0004\u00011AA\u0002\u0013%Q%A\u0003`CJ<7\u000fC\u00057\u0001\u0001\u0007\t\u0019!C\u0005o\u0005Iq,\u0019:hg~#S-\u001d\u000b\u0003!aBq!O\u001b\u0002\u0002\u0003\u0007a%A\u0002yIEBaa\u000f\u0001!B\u00131\u0013AB0be\u001e\u001c\b\u0005C\u0004>\u0001\t\u0007I\u0011\u0002 \u0002\u0011%t\u0017\u000e^\"pI\u0016,\u0012a\u0010\t\u0004\u0001\u0016;U\"A!\u000b\u0005\t\u001b\u0015aB7vi\u0006\u0014G.\u001a\u0006\u0003\t\n\t!bY8mY\u0016\u001cG/[8o\u0013\t1\u0015I\u0001\u0006MSN$()\u001e4gKJ\u00042a\u0002%\u0011\u0013\tI%AA\u0005Gk:\u001cG/[8oa!11\n\u0001Q\u0001\n}\n\u0011\"\u001b8ji\u000e{G-\u001a\u0011\t\u000b5\u0003A\u0011\t(\u0002\u0017\u0011,G.Y=fI&s\u0017\u000e\u001e\u000b\u0003!=Ca\u0001\u0015'\u0005\u0002\u0004\t\u0016\u0001\u00022pIf\u00042a\u0002*\u0011\u0013\t\u0019&A\u0001\u0005=Eft\u0017-\\3?Q\u0011aU\u000bW\u0011\u0011\u0005\u001d1\u0016BA,\u0003\u0005)!W\r\u001d:fG\u0006$X\rZ\u0011\u00023\u0006IC\u000b[3!I\u0016d\u0017-_3e\u0013:LG\u000fI7fG\"\fg.[:nA]LG\u000e\u001c\u0011eSN\f\u0007\u000f]3be:BQa\u0017\u0001\u0005\u0002q\u000bA!\\1j]R\u0011\u0001#\u0018\u0005\u0006Ii\u0003\rA\n\u0015\u00055ry\u0016%I\u0001a\u0003ui\u0017-\u001b8!g\"|W\u000f\u001c3!]>$\bEY3!_Z,'O]5eI\u0016t\u0007")
/* loaded from: classes3-dex2jar.jar:scala/App.class */
public interface App extends DelayedInit {

    /* renamed from: scala.App$class */
    /* loaded from: classes3-dex2jar.jar:scala/App$class.class */
    public abstract class Cclass {
        public static void $init$(App app) {
            Platform$ platform$ = Platform$.MODULE$;
            app.scala$App$_setter_$executionStart_$eq(System.currentTimeMillis());
            app.scala$App$_setter_$scala$App$$initCode_$eq(new ListBuffer());
        }

        public static String[] args(App app) {
            return app.scala$App$$_args();
        }

        public static void delayedInit(App app, Function0 function0) {
            app.scala$App$$initCode().$plus$eq((ListBuffer<Function0<BoxedUnit>>) function0);
        }

        public static void main(App app, String[] strArr) {
            app.scala$App$$_args_$eq(strArr);
            TraversableForwarder.Cclass.foreach(app.scala$App$$initCode(), new App$$anonfun$main$1(app));
            if (PropertiesTrait.Cclass.propIsSet(Properties$.MODULE$, "scala.time")) {
                Platform$ platform$ = Platform$.MODULE$;
                long currentTimeMillis = System.currentTimeMillis();
                long executionStart = app.executionStart();
                Console$ console$ = Console$.MODULE$;
                console$.out().println((Object) new StringBuilder().append((Object) "[total ").append(BoxesRunTime.boxToLong(currentTimeMillis - executionStart)).append((Object) "ms]").toString());
            }
        }
    }

    String[] args();

    @Override // scala.DelayedInit
    void delayedInit(Function0<BoxedUnit> function0);

    long executionStart();

    void main(String[] strArr);

    String[] scala$App$$_args();

    @TraitSetter
    void scala$App$$_args_$eq(String[] strArr);

    ListBuffer<Function0<BoxedUnit>> scala$App$$initCode();

    void scala$App$_setter_$executionStart_$eq(long j);

    void scala$App$_setter_$scala$App$$initCode_$eq(ListBuffer listBuffer);
}
