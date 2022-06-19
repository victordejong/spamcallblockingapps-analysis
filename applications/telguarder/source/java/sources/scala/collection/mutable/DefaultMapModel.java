package scala.collection.mutable;

import scala.None$;
import scala.Option;
import scala.Some;
import scala.Tuple2;
import scala.collection.Iterator;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u00014q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\bEK\u001a\fW\u000f\u001c;NCBlu\u000eZ3m\u0015\t\u0019A!A\u0004nkR\f'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0007))rdE\u0002\u0001\u0017=\u0001\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g!\u0011\u0001\u0012c\u0005\u0010\u000e\u0003\tI!A\u0005\u0002\u0003\u00075\u000b\u0007\u000f\u0005\u0002\u0015+1\u0001A!\u0002\f\u0001\u0005\u00049\"!A!\u0012\u0005aY\u0002C\u0001\u0007\u001a\u0013\tQbAA\u0004O_RD\u0017N\\4\u0011\u00051a\u0012BA\u000f\u0007\u0005\r\te.\u001f\t\u0003)}!Q\u0001\t\u0001C\u0002]\u0011\u0011A\u0011\u0005\u0006E\u0001!\taI\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003\u0011\u0002\"\u0001D\u0013\n\u0005\u00192!\u0001B+oSR,A\u0001\u000b\u0001\u0001S\t)QI\u001c;ssB!\u0001CK\n\u001f\u0013\tY#A\u0001\u0007EK\u001a\fW\u000f\u001c;F]R\u0014\u0018\u0010C\u0003.\u0001\u0019Ea&A\u0005gS:$WI\u001c;ssR\u0011q&\r\t\u0003a\u001dj\u0011\u0001\u0001\u0005\u0006e1\u0002\raE\u0001\u0004W\u0016L\b\"\u0002\u001b\u0001\r#)\u0014\u0001C1eI\u0016sGO]=\u0015\u0005\u00112\u0004\"B\u001c4\u0001\u0004y\u0013!A3\t\u000be\u0002a\u0011\u0003\u001e\u0002\u000f\u0015tGO]5fgV\t1\bE\u0002={=j\u0011\u0001B\u0005\u0003}\u0011\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0005\u0006\u0001\u0002!\t!Q\u0001\u0004O\u0016$HC\u0001\"F!\ra1IH\u0005\u0003\t\u001a\u0011aa\u00149uS>t\u0007\"\u0002\u001a@\u0001\u0004\u0019\u0002\"B$\u0001\t\u0003B\u0015a\u00019viR\u0019!)\u0013&\t\u000bI2\u0005\u0019A\n\t\u000b-3\u0005\u0019\u0001\u0010\u0002\u000bY\fG.^3\t\u000b5\u0003A\u0011\u0001(\u0002\u0011\u0011\u0002H.^:%KF$\"\u0001M(\t\u000bAc\u0005\u0019A)\u0002\u0005-4\b\u0003\u0002\u0007S'yI!a\u0015\u0004\u0003\rQ+\b\u000f\\33\u0011\u0015)\u0006\u0001\"\u0001W\u0003!IG/\u001a:bi>\u0014X#A,\u0011\u0007qj\u0014\u000b\u000b\u0003\u00013rs\u0006C\u0001\u0007[\u0013\tYfA\u0001\u0006eKB\u0014XmY1uK\u0012\f\u0013!X\u0001\u001c)\"L7\u000f\t;sC&$\be^5mY\u0002\u0012W\r\t:f[>4X\r\u001a\u0018\"\u0003}\u000baA\r\u00182c9\u0002\u0004")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/DefaultMapModel.class */
public interface DefaultMapModel<A, B> extends Map<A, B> {

    /* renamed from: scala.collection.mutable.DefaultMapModel$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/DefaultMapModel$class.class */
    public abstract class Cclass {
        public static void $init$(DefaultMapModel defaultMapModel) {
        }

        public static Option get(DefaultMapModel defaultMapModel, Object obj) {
            DefaultEntry<A, B> findEntry = defaultMapModel.findEntry(obj);
            return findEntry == null ? None$.MODULE$ : new Some(findEntry.value());
        }

        public static Iterator iterator(DefaultMapModel defaultMapModel) {
            return defaultMapModel.entries().map(new DefaultMapModel$$anonfun$iterator$1(defaultMapModel));
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Option put(DefaultMapModel defaultMapModel, Object obj, Object obj2) {
            None$ none$;
            DefaultEntry<A, B> findEntry = defaultMapModel.findEntry(obj);
            if (findEntry == null) {
                defaultMapModel.addEntry(new DefaultEntry<>(obj, obj2));
                none$ = None$.MODULE$;
            } else {
                B value = findEntry.value();
                findEntry.value_$eq(obj2);
                none$ = new Some(value);
            }
            return none$;
        }
    }

    @Override // scala.collection.mutable.MapLike
    DefaultMapModel<A, B> $plus$eq(Tuple2<A, B> tuple2);

    void addEntry(DefaultEntry<A, B> defaultEntry);

    Iterator<DefaultEntry<A, B>> entries();

    DefaultEntry<A, B> findEntry(A a);

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    Option<B> get(A a);

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    Iterator<Tuple2<A, B>> iterator();

    @Override // scala.collection.mutable.MapLike
    Option<B> put(A a, B b);
}
