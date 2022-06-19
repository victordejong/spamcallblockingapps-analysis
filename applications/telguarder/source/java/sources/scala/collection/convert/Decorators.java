package scala.collection.convert;

import java.util.Collection;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.Objects;
import scala.Function0;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.JavaConversions$;
import scala.collection.mutable.Map;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u0005\u001db\u0001C\u0001\u0003!\u0003\r\t\u0001\u0002\u0005\u0003\u0015\u0011+7m\u001c:bi>\u00148O\u0003\u0002\u0004\t\u000591m\u001c8wKJ$(BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mCN\u0011\u0001!\u0003\t\u0003\u0015-i\u0011AB\u0005\u0003\u0019\u0019\u0011a!\u00118z%\u00164\u0007\"\u0002\b\u0001\t\u0003\u0001\u0012A\u0002\u0013j]&$He\u0001\u0001\u0015\u0003E\u0001\"A\u0003\n\n\u0005M1!\u0001B+oSR4A!\u0006\u0001\u0001-\t1\u0011i\u001d&bm\u0006,\"aF\u0010\u0014\u0005QI\u0001\u0002C\r\u0015\u0005\u0003%\u000b\u0011\u0002\u000e\u0002\u0005=\u0004\bc\u0001\u0006\u001c;%\u0011AD\u0002\u0002\ty\tLh.Y7f}A\u0011ad\b\u0007\u0001\t\u0015\u0001CC1\u0001\"\u0005\u0005\t\u0015C\u0001\u0012&!\tQ1%\u0003\u0002%\r\t9aj\u001c;iS:<\u0007C\u0001\u0006'\u0013\t9cAA\u0002B]fDQ!\u000b\u000b\u0005\u0002)\na\u0001P5oSRtDCA\u0016.!\raC#H\u0007\u0002\u0001!1\u0011\u0004\u000bCA\u0002iAQa\f\u000b\u0005\u0002A\na!Y:KCZ\fW#A\u000f\u0007\tI\u0002\u0001a\r\u0002\b\u0003N\u001c6-\u00197b+\t!\u0004h\u0005\u00022\u0013!A\u0011$\rB\u0001J\u0003%a\u0007E\u0002\u000b7]\u0002\"A\b\u001d\u0005\u000b\u0001\n$\u0019A\u0011\t\u000b%\nD\u0011\u0001\u001e\u0015\u0005mb\u0004c\u0001\u00172o!1\u0011$\u000fCA\u0002YBQAP\u0019\u0005\u0002}\nq!Y:TG\u0006d\u0017-F\u00018\r\u0011\t\u0005\u0001\u0001\"\u0003!\u0005\u001b(*\u0019<b\u0007>dG.Z2uS>tWCA\"L'\t\u0001\u0015\u0002\u0003\u0005F\u0001\n\u0005\t\u0015!\u0003G\u0003\u0005I\u0007cA$I\u00156\tA!\u0003\u0002J\t\tA\u0011\n^3sC\ndW\r\u0005\u0002\u001f\u0017\u0012)\u0001\u0005\u0011b\u0001C!)\u0011\u0006\u0011C\u0001\u001bR\u0011aj\u0014\t\u0004Y\u0001S\u0005\"B#M\u0001\u00041\u0005\"B)A\t\u0003\u0011\u0016\u0001E1t\u0015\u00064\u0018mQ8mY\u0016\u001cG/[8o+\u0005\u0019\u0006c\u0001+Z\u00156\tQK\u0003\u0002W/\u0006!Q\u000f^5m\u0015\u0005A\u0016\u0001\u00026bm\u0006L!AW+\u0003\u0015\r{G\u000e\\3di&|gN\u0002\u0003]\u0001\u0001i&!E!t\u0015\u00064\u0018-\u00128v[\u0016\u0014\u0018\r^5p]V\u0011a\fZ\n\u00037&A\u0001\"R.\u0003\u0002\u0003\u0006I\u0001\u0019\t\u0004\u000f\u0006\u001c\u0017B\u00012\u0005\u0005!IE/\u001a:bi>\u0014\bC\u0001\u0010e\t\u0015\u00013L1\u0001\"\u0011\u0015I3\f\"\u0001g)\t9\u0007\u000eE\u0002-7\u000eDQ!R3A\u0002\u0001DQA[.\u0005\u0002-\f\u0011#Y:KCZ\fWI\\;nKJ\fG/[8o+\u0005a\u0007c\u0001+nG&\u0011a.\u0016\u0002\f\u000b:,X.\u001a:bi&|gN\u0002\u0003q\u0001\u0001\t(\u0001E!t\u0015\u00064\u0018\rR5di&|g.\u0019:z+\r\u0011HP`\n\u0003_&A\u0001\u0002^8\u0003\u0002\u0003\u0006I!^\u0001\u0002[B!a/_>~\u001b\u00059(B\u0001=\u0005\u0003\u001diW\u000f^1cY\u0016L!A_<\u0003\u00075\u000b\u0007\u000f\u0005\u0002\u001fy\u0012)\u0001e\u001cb\u0001CA\u0011aD \u0003\u0006\u007f>\u0014\r!\t\u0002\u0002\u0005\"1\u0011f\u001cC\u0001\u0003\u0007!B!!\u0002\u0002\bA!Af\\>~\u0011\u0019!\u0018\u0011\u0001a\u0001k\"9\u00111B8\u0005\u0002\u00055\u0011\u0001E1t\u0015\u00064\u0018\rR5di&|g.\u0019:z+\t\ty\u0001E\u0003U\u0003#YX0C\u0002\u0002\u0014U\u0013!\u0002R5di&|g.\u0019:z\u000f!\t9B\u0001E\u0001\t\u0005e\u0011A\u0003#fG>\u0014\u0018\r^8sgB!\u00111DA\u000f\u001b\u0005\u0011aaB\u0001\u0003\u0011\u0003!\u0011qD\n\u0006\u0003;I\u0011\u0011\u0005\t\u0004\u00037\u0001\u0001bB\u0015\u0002\u001e\u0011\u0005\u0011Q\u0005\u000b\u0003\u00033\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/Decorators.class */
public interface Decorators {

    /* loaded from: classes3-dex2jar.jar:scala/collection/convert/Decorators$AsJava.class */
    public class AsJava<A> {
        public final /* synthetic */ Decorators $outer;

        /* renamed from: op */
        private final Function0<A> f1535op;

        public AsJava(Decorators decorators, Function0<A> function0) {
            this.f1535op = function0;
            Objects.requireNonNull(decorators);
            this.$outer = decorators;
        }

        public A asJava() {
            return this.f1535op.apply();
        }

        public /* synthetic */ Decorators scala$collection$convert$Decorators$AsJava$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/convert/Decorators$AsJavaCollection.class */
    public class AsJavaCollection<A> {
        public final /* synthetic */ Decorators $outer;

        /* renamed from: i */
        private final Iterable<A> f1536i;

        public AsJavaCollection(Decorators decorators, Iterable<A> iterable) {
            this.f1536i = iterable;
            Objects.requireNonNull(decorators);
            this.$outer = decorators;
        }

        public Collection<A> asJavaCollection() {
            return JavaConversions$.MODULE$.asJavaCollection(this.f1536i);
        }

        public /* synthetic */ Decorators scala$collection$convert$Decorators$AsJavaCollection$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/convert/Decorators$AsJavaDictionary.class */
    public class AsJavaDictionary<A, B> {
        public final /* synthetic */ Decorators $outer;

        /* renamed from: m */
        private final Map<A, B> f1537m;

        public AsJavaDictionary(Decorators decorators, Map<A, B> map) {
            this.f1537m = map;
            Objects.requireNonNull(decorators);
            this.$outer = decorators;
        }

        public Dictionary<A, B> asJavaDictionary() {
            return JavaConversions$.MODULE$.asJavaDictionary(this.f1537m);
        }

        public /* synthetic */ Decorators scala$collection$convert$Decorators$AsJavaDictionary$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/convert/Decorators$AsJavaEnumeration.class */
    public class AsJavaEnumeration<A> {
        public final /* synthetic */ Decorators $outer;

        /* renamed from: i */
        private final Iterator<A> f1538i;

        public AsJavaEnumeration(Decorators decorators, Iterator<A> iterator) {
            this.f1538i = iterator;
            Objects.requireNonNull(decorators);
            this.$outer = decorators;
        }

        public Enumeration<A> asJavaEnumeration() {
            return JavaConversions$.MODULE$.asJavaEnumeration(this.f1538i);
        }

        public /* synthetic */ Decorators scala$collection$convert$Decorators$AsJavaEnumeration$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/convert/Decorators$AsScala.class */
    public class AsScala<A> {
        public final /* synthetic */ Decorators $outer;

        /* renamed from: op */
        private final Function0<A> f1539op;

        public AsScala(Decorators decorators, Function0<A> function0) {
            this.f1539op = function0;
            Objects.requireNonNull(decorators);
            this.$outer = decorators;
        }

        public A asScala() {
            return this.f1539op.apply();
        }

        public /* synthetic */ Decorators scala$collection$convert$Decorators$AsScala$$$outer() {
            return this.$outer;
        }
    }

    /* renamed from: scala.collection.convert.Decorators$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/convert/Decorators$class.class */
    public abstract class Cclass {
        public static void $init$(Decorators decorators) {
        }
    }
}
