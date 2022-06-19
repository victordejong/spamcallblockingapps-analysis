package scala.collection.generic;

import java.util.Objects;
import scala.Tuple2;
import scala.collection.GenMap;
import scala.collection.Seq;
import scala.collection.mutable.Builder;
import scala.collection.mutable.MapBuilder;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001}4Q!\u0001\u0002\u0002\u0002%\u0011QbR3o\u001b\u0006\u0004h)Y2u_JL(BA\u0002\u0005\u0003\u001d9WM\\3sS\u000eT!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b\u0007\u0001)\"A\u0003\f\u0014\u0005\u0001Y\u0001C\u0001\u0007\u000e\u001b\u00051\u0011B\u0001\b\u0007\u0005\u0019\te.\u001f*fM\")\u0001\u0003\u0001C\u0001#\u00051A(\u001b8jiz\"\u0012A\u0005\t\u0004'\u0001!R\"\u0001\u0002\u0011\u0005U1B\u0002\u0001\u0003\u0006/\u0001\u0011\r\u0001\u0007\u0002\u0003\u0007\u000e+2!G\u0013-#\tQR\u0004\u0005\u0002\r7%\u0011AD\u0002\u0002\b\u001d>$\b.\u001b8h%\rq\u0002E\f\u0004\u0005?\u0001\u0001QD\u0001\u0007=e\u00164\u0017N\\3nK:$h\b\u0005\u0003\"E\u0011ZS\"\u0001\u0003\n\u0005\r\"!AB$f]6\u000b\u0007\u000f\u0005\u0002\u0016K\u0011)aE\u0006b\u0001O\t\t\u0011)\u0005\u0002\u001bQA\u0011A\"K\u0005\u0003U\u0019\u00111!\u00118z!\t)B\u0006B\u0003.-\t\u0007qEA\u0001C!\u0015\ts\u0006J\u00162\u0013\t\u0001DA\u0001\u0006HK:l\u0015\r\u001d'jW\u0016\u0004B!\u0006\f%W\u0015!1\u0007\u0001\u00015\u0005\u0011\u0019u\u000e\u001c71\u0007U:$\b\u0005\u0003\u0016-YJ\u0004CA\u000b8\t%A$'!A\u0001\u0002\u000b\u0005qEA\u0002`IE\u0002\"!\u0006\u001e\u0005\u0013m\u0012\u0014\u0011!A\u0001\u0006\u00039#aA0%e!)Q\b\u0001D\u0001}\u0005)Q-\u001c9usV\u0019qH\u0011#\u0016\u0003\u0001\u0003B!\u0006\fB\u0007B\u0011QC\u0011\u0003\u0006Mq\u0012\ra\n\t\u0003+\u0011#Q!\f\u001fC\u0002\u001dBQA\u0012\u0001\u0005\u0002\u001d\u000bQ!\u00199qYf,2\u0001S&N)\tIe\n\u0005\u0003\u0016-)c\u0005CA\u000bL\t\u00151SI1\u0001(!\t)R\nB\u0003.\u000b\n\u0007q\u0005C\u0003P\u000b\u0002\u0007\u0001+A\u0003fY\u0016l7\u000fE\u0002\r#NK!A\u0015\u0004\u0003\u0015q\u0012X\r]3bi\u0016$g\b\u0005\u0003\r)*c\u0015BA+\u0007\u0005\u0019!V\u000f\u001d7fe!)q\u000b\u0001C\u00011\u0006Qa.Z<Ck&dG-\u001a:\u0016\u0007e\u0013G-F\u0001[!\u0011Yf\fY3\u000e\u0003qS!!\u0018\u0003\u0002\u000f5,H/\u00192mK&\u0011q\f\u0018\u0002\b\u0005VLG\u000eZ3s!\u0011aA+Y2\u0011\u0005U\u0011G!\u0002\u0014W\u0005\u00049\u0003CA\u000be\t\u0015icK1\u0001(!\u0011)b#Y2\u0007\t\u001d\u0004\u0001\u0001\u001b\u0002\u0010\u001b\u0006\u00048)\u00198Ck&dGM\u0012:p[V\u0019\u0011.]:\u0014\u0007\u0019\\!\u000eE\u0003\u0014W6|G/\u0003\u0002m\u0005\ta1)\u00198Ck&dGM\u0012:p[B\u0011aNM\u0007\u0002\u0001A!A\u0002\u00169s!\t)\u0012\u000fB\u0003'M\n\u0007q\u0005\u0005\u0002\u0016g\u0012)QF\u001ab\u0001OA!QC\u00069s\u0011\u0015\u0001b\r\"\u0001w)\u00059\b\u0003\u00028gaJDQA\u00124\u0005\u0002e$\"A_>\u0011\tmsv\u000e\u001e\u0005\u0006yb\u0004\r!\\\u0001\u0005MJ|W\u000eC\u0003GM\u0012\u0005a\u0010F\u0001{\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenMapFactory.class */
public abstract class GenMapFactory<CC extends GenMap<Object, Object>> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenMapFactory$MapCanBuildFrom.class */
    public class MapCanBuildFrom<A, B> implements CanBuildFrom<CC, Tuple2<A, B>, CC> {
        public final /* synthetic */ GenMapFactory $outer;

        public MapCanBuildFrom(GenMapFactory<CC> genMapFactory) {
            Objects.requireNonNull(genMapFactory);
            this.$outer = genMapFactory;
        }

        @Override // scala.collection.generic.CanBuildFrom
        public Builder<Tuple2<A, B>, CC> apply() {
            return scala$collection$generic$GenMapFactory$MapCanBuildFrom$$$outer().newBuilder();
        }

        @Override // scala.collection.generic.CanBuildFrom
        public /* bridge */ /* synthetic */ Builder apply(Object obj) {
            return apply((MapCanBuildFrom<A, B>) ((GenMap) obj));
        }

        public Builder<Tuple2<A, B>, CC> apply(CC cc) {
            return scala$collection$generic$GenMapFactory$MapCanBuildFrom$$$outer().newBuilder();
        }

        public /* synthetic */ GenMapFactory scala$collection$generic$GenMapFactory$MapCanBuildFrom$$$outer() {
            return this.$outer;
        }
    }

    public <A, B> CC apply(Seq<Tuple2<A, B>> seq) {
        return (CC) ((Builder) newBuilder().$plus$plus$eq(seq)).result();
    }

    public abstract <A, B> CC empty();

    public <A, B> Builder<Tuple2<A, B>, CC> newBuilder() {
        return new MapBuilder(empty());
    }
}
