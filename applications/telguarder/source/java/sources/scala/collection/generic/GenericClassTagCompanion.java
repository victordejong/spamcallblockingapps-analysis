package scala.collection.generic;

import scala.collection.Seq;
import scala.collection.Traversable;
import scala.collection.mutable.Builder;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001y3Q!\u0001\u0002\u0002\u0002%\u0011\u0001dR3oKJL7m\u00117bgN$\u0016mZ\"p[B\fg.[8o\u0015\t\u0019A!A\u0004hK:,'/[2\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005)12C\u0001\u0001\f!\taQ\"D\u0001\u0007\u0013\tqaA\u0001\u0004B]f\u0014VM\u001a\u0005\u0006!\u0001!\t!E\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003I\u00012a\u0005\u0001\u0015\u001b\u0005\u0011\u0001CA\u000b\u0017\u0019\u0001!aa\u0006\u0001\u0005\u0006\u0004A\"AA\"D+\tI\"%\u0005\u0002\u001b;A\u0011AbG\u0005\u00039\u0019\u0011qAT8uQ&tw\rE\u0002\u001f?\u0005j\u0011\u0001B\u0005\u0003A\u0011\u00111\u0002\u0016:bm\u0016\u00148/\u00192mKB\u0011QC\t\u0003\u0006GY\u0011\r\u0001\n\u0002\u00021F\u0011!$\n\t\u0003\u0019\u0019J!a\n\u0004\u0003\u0007\u0005s\u00170\u0002\u0004*\u0001\u0001\u0006\tB\u000b\u0002\u0005\u0007>dG\u000e\r\u0002,[A\u0019QC\u0006\u0017\u0011\u0005UiC!\u0003\u0018)\u0003\u0003\u0005\tQ!\u0001%\u0005\ryF%\r\u0005\u0006a\u00011\t!M\u0001\u000b]\u0016<()^5mI\u0016\u0014XC\u0001\u001a;)\t\u0019T\b\u0005\u00035oebT\"A\u001b\u000b\u0005Y\"\u0011aB7vi\u0006\u0014G.Z\u0005\u0003qU\u0012qAQ;jY\u0012,'\u000f\u0005\u0002\u0016u\u0011)1h\fb\u0001I\t\t\u0011\tE\u0002\u0016-eBQAP\u0018A\u0004}\n1a\u001c:e!\r\u00015)O\u0007\u0002\u0003*\u0011!IB\u0001\be\u00164G.Z2u\u0013\t!\u0015I\u0001\u0005DY\u0006\u001c8\u000fV1h\u0011\u00151\u0005\u0001\"\u0001H\u0003\u0015)W\u000e\u001d;z+\tA5\n\u0006\u0002J\u0019B\u0019QC\u0006&\u0011\u0005UYE!B\u001eF\u0005\u0004!\u0003bB'F\u0003\u0003\u0005\u001dAT\u0001\u000bKZLG-\u001a8dK\u0012\n\u0004c\u0001!D\u0015\")\u0001\u000b\u0001C\u0001#\u0006)\u0011\r\u001d9msV\u0011!K\u0016\u000b\u0003'f#\"\u0001V,\u0011\u0007U1R\u000b\u0005\u0002\u0016-\u0012)1h\u0014b\u0001I!)ah\u0014a\u00021B\u0019\u0001iQ+\t\u000bi{\u0005\u0019A.\u0002\u000b\u0015dW-\\:\u0011\u00071aV+\u0003\u0002^\r\tQAH]3qK\u0006$X\r\u001a ")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenericClassTagCompanion.class */
public abstract class GenericClassTagCompanion<CC extends Traversable<Object>> {
    public <A> CC apply(Seq<A> seq, ClassTag<A> classTag) {
        Builder<A, CC> newBuilder = newBuilder(classTag);
        newBuilder.$plus$plus$eq(seq);
        return newBuilder.result();
    }

    public <A> CC empty(ClassTag<A> classTag) {
        return newBuilder(classTag).result();
    }

    public abstract <A> Builder<A, CC> newBuilder(ClassTag<A> classTag);
}
