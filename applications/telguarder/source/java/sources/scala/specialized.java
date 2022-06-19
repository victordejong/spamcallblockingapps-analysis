package scala;

import scala.Specializable;
import scala.annotation.Annotation;
import scala.annotation.StaticAnnotation;
import scala.collection.Seq;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001)2A!\u0001\u0002\u0001\u000b\tY1\u000f]3dS\u0006d\u0017N_3e\u0015\u0005\u0019\u0011!B:dC2\f7\u0001A\n\u0004\u0001\u0019a\u0001CA\u0004\u000b\u001b\u0005A!BA\u0005\u0003\u0003)\tgN\\8uCRLwN\\\u0005\u0003\u0017!\u0011!\"\u00118o_R\fG/[8o!\t9Q\"\u0003\u0002\u000f\u0011\t\u00012\u000b^1uS\u000e\feN\\8uCRLwN\u001c\u0005\t!\u0001\u0011\t\u0011)A\u0005#\u0005)qM]8vaB\u0011!C\u0006\b\u0003'Qi\u0011AA\u0005\u0003+\t\tQb\u00159fG&\fG.\u001b>bE2,\u0017BA\f\u0019\u0005A\u0019\u0006/Z2jC2L'0\u001a3He>,\bO\u0003\u0002\u0016\u0005!)!\u0004\u0001C\u00017\u00051A(\u001b8jiz\"\"\u0001H\u000f\u0011\u0005M\u0001\u0001\"\u0002\t\u001a\u0001\u0004\t\u0002\"\u0002\u000e\u0001\t\u0003yBC\u0001\u000f!\u0011\u0015\tc\u00041\u0001#\u0003\u0015!\u0018\u0010]3t!\r\u00192%J\u0005\u0003I\t\u0011!\u0002\u0010:fa\u0016\fG/\u001a3?!\t\u0019b%\u0003\u0002(\u0005\ti1\u000b]3dS\u0006d\u0017N_1cY\u0016DQA\u0007\u0001\u0005\u0002%\"\u0012\u0001\b")
/* loaded from: classes3-dex2jar.jar:scala/specialized.class */
public class specialized extends Annotation implements StaticAnnotation {
    public specialized() {
        this(Specializable$.MODULE$.Primitives());
    }

    public specialized(Specializable.SpecializedGroup specializedGroup) {
    }

    public specialized(Seq<Specializable> seq) {
        this(new Specializable.Group(seq.toList()));
    }
}
