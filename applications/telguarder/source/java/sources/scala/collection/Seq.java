package scala.collection;

import scala.PartialFunction;
import scala.collection.generic.GenericCompanion;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u00154q!\u0001\u0002\u0011\u0002\u0007\u0005qAA\u0002TKFT!a\u0001\u0003\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\u0006\u0003\u0015\u00198-\u00197b\u0007\u0001)\"\u0001C\u000b\u0014\u000f\u0001IQB\b\u0012&YA\u0011!bC\u0007\u0002\t%\u0011A\u0002\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\t)q\u0001cE\u0005\u0003\u001f\u0011\u0011q\u0002U1si&\fGNR;oGRLwN\u001c\t\u0003\u0015EI!A\u0005\u0003\u0003\u0007%sG\u000f\u0005\u0002\u0015+1\u0001AA\u0002\f\u0001\t\u000b\u0007qCA\u0001B#\tA2\u0004\u0005\u0002\u000b3%\u0011!\u0004\u0002\u0002\b\u001d>$\b.\u001b8h!\tQA$\u0003\u0002\u001e\t\t\u0019\u0011I\\=\u0011\u0007}\u00013#D\u0001\u0003\u0013\t\t#A\u0001\u0005Ji\u0016\u0014\u0018M\u00197f!\ry2eE\u0005\u0003I\t\u0011aaR3o'\u0016\f\b\u0003\u0002\u0014*'-j\u0011a\n\u0006\u0003Q\t\tqaZ3oKJL7-\u0003\u0002+O\tQr)\u001a8fe&\u001cGK]1wKJ\u001c\u0018M\u00197f)\u0016l\u0007\u000f\\1uKB\u0011q\u0004\u0001\t\u0005?5\u001ar&\u0003\u0002/\u0005\t91+Z9MS.,\u0007cA\u0010\u0001'!)\u0011\u0007\u0001C\u0001e\u00051A%\u001b8ji\u0012\"\u0012a\r\t\u0003\u0015QJ!!\u000e\u0003\u0003\tUs\u0017\u000e\u001e\u0005\u0006o\u0001!\t\u0005O\u0001\nG>l\u0007/\u00198j_:,\u0012!\u000f\t\u0004MiZ\u0013BA\u001e(\u0005A9UM\\3sS\u000e\u001cu.\u001c9b]&|g\u000eC\u0003>\u0001\u0011\u0005c(A\u0002tKF,\u0012aL\u0004\u0006\u0001\nA\t!Q\u0001\u0004'\u0016\f\bCA\u0010C\r\u0015\t!\u0001#\u0001D'\t\u0011E\tE\u0002'\u000b.J!AR\u0014\u0003\u0015M+\u0017OR1di>\u0014\u0018\u0010C\u0003I\u0005\u0012\u0005\u0011*\u0001\u0004=S:LGO\u0010\u000b\u0002\u0003\")1J\u0011C\u0002\u0019\u0006a1-\u00198Ck&dGM\u0012:p[V\u0011QJV\u000b\u0002\u001dB)aeT)V/&\u0011\u0001k\n\u0002\r\u0007\u0006t')^5mI\u001a\u0013x.\u001c\t\u0003%Nk\u0011AQ\u0005\u0003)j\u0012AaQ8mYB\u0011AC\u0016\u0003\u0006-)\u0013\ra\u0006\t\u0004?\u0001)\u0006\"B-C\t\u0003Q\u0016A\u00038fo\n+\u0018\u000e\u001c3feV\u00111lY\u000b\u00029B!Q\f\u00192e\u001b\u0005q&BA0\u0003\u0003\u001diW\u000f^1cY\u0016L!!\u00190\u0003\u000f\t+\u0018\u000e\u001c3feB\u0011Ac\u0019\u0003\u0006-a\u0013\ra\u0006\t\u0004?\u0001\u0011\u0007")
/* loaded from: classes3-dex2jar.jar:scala/collection/Seq.class */
public interface Seq<A> extends PartialFunction<Object, A>, Iterable<A>, GenSeq<A>, SeqLike<A, Seq<A>> {

    /* renamed from: scala.collection.Seq$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/Seq$class.class */
    public abstract class Cclass {
        public static void $init$(Seq seq) {
        }

        public static GenericCompanion companion(Seq seq) {
            return Seq$.MODULE$;
        }

        public static Seq seq(Seq seq) {
            return seq;
        }
    }

    GenericCompanion<Seq> companion();

    Seq<A> seq();
}
