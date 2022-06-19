package scala.collection.generic;

import scala.Some;
import scala.collection.Seq;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001y2Q!\u0001\u0002\u0002\u0002%\u0011!bU3r\r\u0006\u001cGo\u001c:z\u0015\t\u0019A!A\u0004hK:,'/[2\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005)\t2c\u0001\u0001\fUA\u0019A\"D\b\u000e\u0003\tI!A\u0004\u0002\u0003\u001b\u001d+gnU3r\r\u0006\u001cGo\u001c:z!\t\u0001\u0012\u0003\u0004\u0001\u0005\u000bI\u0001!\u0019A\n\u0003\u0005\r\u001bUC\u0001\u000b\"#\t)\u0012\u0004\u0005\u0002\u0017/5\ta!\u0003\u0002\u0019\r\t9aj\u001c;iS:<'c\u0001\u000e\u001dO\u0019!1\u0004\u0001\u0001\u001a\u00051a$/\u001a4j]\u0016lWM\u001c;?!\rib\u0004I\u0007\u0002\t%\u0011q\u0004\u0002\u0002\u0004'\u0016\f\bC\u0001\t\"\t\u0015\u0011\u0013C1\u0001$\u0005\u0005A\u0016CA\u000b%!\t1R%\u0003\u0002'\r\t\u0019\u0011I\\=\u0011\t1A\u0003eD\u0005\u0003S\t\u0011!dR3oKJL7\r\u0016:bm\u0016\u00148/\u00192mKR+W\u000e\u001d7bi\u0016\u00042\u0001D\u0016\u0010\u0013\ta#A\u0001\nUe\u00064XM]:bE2,g)Y2u_JL\b\"\u0002\u0018\u0001\t\u0003y\u0013A\u0002\u001fj]&$h\bF\u00011!\ra\u0001a\u0004\u0005\u0006e\u0001!\taM\u0001\u000bk:\f\u0007\u000f\u001d7z'\u0016\fXC\u0001\u001b;)\t)D\bE\u0002\u0017maJ!a\u000e\u0004\u0003\tM{W.\u001a\t\u0004!EI\u0004C\u0001\t;\t\u0015Y\u0014G1\u0001$\u0005\u0005\t\u0005\"B\u001f2\u0001\u0004A\u0014!\u0001=")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/SeqFactory.class */
public abstract class SeqFactory<CC extends Seq<Object>> extends GenSeqFactory<CC> implements TraversableFactory<CC> {
    public <A> Some<CC> unapplySeq(CC cc) {
        return new Some<>(cc);
    }
}
