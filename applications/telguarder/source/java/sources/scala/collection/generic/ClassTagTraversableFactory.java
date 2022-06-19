package scala.collection.generic;

import java.util.Objects;
import scala.collection.Traversable;
import scala.collection.mutable.Builder;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u00054Q!\u0001\u0002\u0002\u0002%\u0011!d\u00117bgN$\u0016m\u001a+sCZ,'o]1cY\u00164\u0015m\u0019;pefT!a\u0001\u0003\u0002\u000f\u001d,g.\u001a:jG*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011!\"E\n\u0003\u0001-\u00012\u0001D\u0007\u0010\u001b\u0005\u0011\u0011B\u0001\b\u0003\u0005a9UM\\3sS\u000e\u001cE.Y:t)\u0006<7i\\7qC:LwN\u001c\t\u0003!Ea\u0001\u0001B\u0003\u0013\u0001\t\u00071C\u0001\u0002D\u0007V\u0011A#I\t\u0003+e\u0001\"AF\f\u000e\u0003\u0019I!\u0001\u0007\u0004\u0003\u000f9{G\u000f[5oOJ\u0019!\u0004H\u0014\u0007\tm\u0001\u0001!\u0007\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0004;y\u0001S\"\u0001\u0003\n\u0005}!!a\u0003+sCZ,'o]1cY\u0016\u0004\"\u0001E\u0011\u0005\u000b\t\n\"\u0019A\u0012\u0003\u0003a\u000b\"!\u0006\u0013\u0011\u0005Y)\u0013B\u0001\u0014\u0007\u0005\r\te.\u001f\t\u0005\u0019!\u0002s\"\u0003\u0002*\u0005\t\u0011s)\u001a8fe&\u001c7\t\\1tgR\u000bw\r\u0016:bm\u0016\u00148/\u00192mKR+W\u000e\u001d7bi\u0016DQa\u000b\u0001\u0005\u00021\na\u0001P5oSRtD#A\u0017\u0011\u00071\u0001qB\u0002\u00030\u0001\u0001\u0001$aE$f]\u0016\u0014\u0018nY\"b]\n+\u0018\u000e\u001c3Ge>lWCA\u0019?'\rq#'\u000e\t\u0003-MJ!\u0001\u000e\u0004\u0003\r\u0005s\u0017PU3g!\u0015aa\u0007O\u001fA\u0013\t9$A\u0001\u0007DC:\u0014U/\u001b7e\rJ|W\u000e\r\u0002:wA\u0019\u0001#\u0005\u001e\u0011\u0005AYD!\u0003\u001f/\u0003\u0003\u0005\tQ!\u0001$\u0005\ryF%\r\t\u0003!y\"Qa\u0010\u0018C\u0002\r\u0012\u0011!\u0011\t\u0004!Ei\u0004\u0002\u0003\"/\u0005\u0003\u0005\u000b1B\"\u0002\u0007Q\fw\rE\u0002E\u000fvj\u0011!\u0012\u0006\u0003\r\u001a\tqA]3gY\u0016\u001cG/\u0003\u0002I\u000b\nA1\t\\1tgR\u000bw\rC\u0003,]\u0011\u0005!\nF\u0001L)\tae\nE\u0002N]uj\u0011\u0001\u0001\u0005\u0006\u0005&\u0003\u001da\u0011\u0005\u0006!:\"\t!U\u0001\u0006CB\u0004H.\u001f\u000b\u0003%b\u0003Ba\u0015,>\u00016\tAK\u0003\u0002V\t\u00059Q.\u001e;bE2,\u0017BA,U\u0005\u001d\u0011U/\u001b7eKJDQ!W(A\u0002i\u000bAA\u001a:p[B\u00121,\u0018\t\u0004!Ea\u0006C\u0001\t^\t%q\u0006,!A\u0001\u0002\u000b\u00051EA\u0002`IIBQ\u0001\u0015\u0018\u0005\u0002\u0001$\u0012A\u0015")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/ClassTagTraversableFactory.class */
public abstract class ClassTagTraversableFactory<CC extends Traversable<Object>> extends GenericClassTagCompanion<CC> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/generic/ClassTagTraversableFactory$GenericCanBuildFrom.class */
    public class GenericCanBuildFrom<A> implements CanBuildFrom<CC, A, CC> {
        public final /* synthetic */ ClassTagTraversableFactory $outer;
        private final ClassTag<A> tag;

        public GenericCanBuildFrom(ClassTagTraversableFactory<CC> classTagTraversableFactory, ClassTag<A> classTag) {
            this.tag = classTag;
            Objects.requireNonNull(classTagTraversableFactory);
            this.$outer = classTagTraversableFactory;
        }

        @Override // scala.collection.generic.CanBuildFrom
        public Builder<A, CC> apply() {
            return (Builder<A, CC>) m169x22bd8a06().newBuilder(this.tag);
        }

        @Override // scala.collection.generic.CanBuildFrom
        public /* bridge */ /* synthetic */ Builder apply(Object obj) {
            return apply((GenericCanBuildFrom<A>) ((Traversable) obj));
        }

        public Builder<A, CC> apply(CC cc) {
            return ((GenericClassTagTraversableTemplate) cc).genericClassTagBuilder(this.tag);
        }

        /* renamed from: scala$collection$generic$ClassTagTraversableFactory$GenericCanBuildFrom$$$outer */
        public /* synthetic */ ClassTagTraversableFactory m169x22bd8a06() {
            return this.$outer;
        }
    }
}
