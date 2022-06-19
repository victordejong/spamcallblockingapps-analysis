package scala.collection.generic;

import scala.Tuple2;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.ParIterable;
import scala.collection.parallel.ParMap;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001a3q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\u000bHK:,'/[2QCJl\u0015\r\u001d+f[Bd\u0017\r^3\u000b\u0005\r!\u0011aB4f]\u0016\u0014\u0018n\u0019\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001A\u000b\u0005\u0015a\u0011sgE\u0002\u0001\u0017=\u0001\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g!\u0011\u0001\u0012c\u0005\u0013\u000e\u0003\tI!A\u0005\u0002\u0003%\u001d+g.\u001a:jGB\u000b'\u000fV3na2\fG/\u001a\t\u0005\u0019Q1\u0012%\u0003\u0002\u0016\r\t1A+\u001e9mKJ\u0002\"a\u0006\r\r\u0001\u0011)\u0011\u0004\u0001b\u00015\t\t1*\u0005\u0002\u001c=A\u0011A\u0002H\u0005\u0003;\u0019\u0011qAT8uQ&tw\r\u0005\u0002\r?%\u0011\u0001E\u0002\u0002\u0004\u0003:L\bCA\f#\t\u0019\u0019\u0003\u0001\"b\u00015\t\ta\u000b\u0005\u0002&Q5\taE\u0003\u0002(\t\u0005A\u0001/\u0019:bY2,G.\u0003\u0002*M\tY\u0001+\u0019:Ji\u0016\u0014\u0018M\u00197f\u0011\u0015Y\u0003\u0001\"\u0001-\u0003\u0019!\u0013N\\5uIQ\tQ\u0006\u0005\u0002\r]%\u0011qF\u0002\u0002\u0005+:LG\u000f\u0003\u00042\u0001\u0001&\tFM\u0001\f]\u0016<8i\\7cS:,'/F\u00014!\u0011)Cg\u0005\u001c\n\u0005U2#\u0001C\"p[\nLg.\u001a:\u0011\t]9d#\t\u0003\u0007q\u0001!)\u0019A\u001d\u0003\u0005\r\u001bUc\u0001\u001e@\u0005F\u00111d\u000f\t\u0005Kqr\u0014)\u0003\u0002>M\t1\u0001+\u0019:NCB\u0004\"aF \u0005\u000b\u0001;$\u0019\u0001\u000e\u0003\u0003a\u0003\"a\u0006\"\u0005\u000b\r;$\u0019\u0001\u000e\u0003\u0003eCQ!\u0012\u0001\u0007\u0002\u0019\u000bA\"\\1q\u0007>l\u0007/\u00198j_:,\u0012a\u0012\t\u0004!!S\u0015BA%\u0003\u0005Y9UM\\3sS\u000e\u0004\u0016M]'ba\u000e{W\u000e]1oS>t\u0007CA\f8\u0011\u0015a\u0005\u0001\"\u0001N\u0003I9WM\\3sS\u000el\u0015\r]\"p[\nLg.\u001a:\u0016\u00079\u0013V+F\u0001P!\u0011)C\u0007U,\u0011\t1!\u0012\u000b\u0016\t\u0003/I#QaU&C\u0002i\u0011\u0011\u0001\u0015\t\u0003/U#QAV&C\u0002i\u0011\u0011!\u0015\t\u0005/]\nF\u000b")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenericParMapTemplate.class */
public interface GenericParMapTemplate<K, V, CC extends ParMap<Object, Object>> extends GenericParTemplate<Tuple2<K, V>, ParIterable> {

    /* renamed from: scala.collection.generic.GenericParMapTemplate$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenericParMapTemplate$class.class */
    public abstract class Cclass {
        public static void $init$(GenericParMapTemplate genericParMapTemplate) {
        }

        public static Combiner genericMapCombiner(GenericParMapTemplate genericParMapTemplate) {
            return genericParMapTemplate.mapCompanion().newCombiner();
        }

        public static Combiner newCombiner(GenericParMapTemplate genericParMapTemplate) {
            return genericParMapTemplate.mapCompanion().newCombiner();
        }
    }

    <P, Q> Combiner<Tuple2<P, Q>, CC> genericMapCombiner();

    GenericParMapCompanion<CC> mapCompanion();

    @Override // scala.collection.generic.GenericParTemplate, scala.collection.generic.HasNewCombiner
    Combiner<Tuple2<K, V>, CC> newCombiner();
}
