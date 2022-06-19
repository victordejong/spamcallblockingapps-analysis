package scala.collection.generic;

import scala.collection.Traversable;
import scala.collection.mutable.Builder;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u0005\u0005aaB\u0001\u0003!\u0003\r\t!\u0003\u0002#\u000f\u0016tWM]5d\u00072\f7o\u001d+bOR\u0013\u0018M^3sg\u0006\u0014G.\u001a+f[Bd\u0017\r^3\u000b\u0005\r!\u0011aB4f]\u0016\u0014\u0018n\u0019\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001A\u000b\u0004\u0015U\u00013c\u0001\u0001\f\u001fA\u0011A\"D\u0007\u0002\r%\u0011aB\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\tA\t2CH\u0007\u0002\u0005%\u0011!C\u0001\u0002\u000e\u0011\u0006\u001ch*Z<Ck&dG-\u001a:\u0011\u0005Q)B\u0002\u0001\u0003\u0007-\u0001!)\u0019A\f\u0003\u0003\u0005\u000b\"\u0001G\u000e\u0011\u00051I\u0012B\u0001\u000e\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001\u0004\u000f\n\u0005u1!aA!os*\u0012qd\u000b\t\u0004)\u0001\u001aBAB\u0011\u0001\t\u000b\u0007!E\u0001\u0002D\u0007V\u00111%K\t\u00031\u0011\u00022!\n\u0014)\u001b\u0005!\u0011BA\u0014\u0005\u0005-!&/\u0019<feN\f'\r\\3\u0011\u0005QIC!\u0002\u0016!\u0005\u00049\"!\u0001-,\u00031\u0002\"!\f\u001a\u000e\u00039R!a\f\u0019\u0002\u0013Ut7\r[3dW\u0016$'BA\u0019\u0007\u0003)\tgN\\8uCRLwN\\\u0005\u0003g9\u0012\u0011#\u001e8dQ\u0016\u001c7.\u001a3WCJL\u0017M\\2f\u0011\u0015)\u0004\u0001\"\u00017\u0003\u0019!\u0013N\\5uIQ\tq\u0007\u0005\u0002\rq%\u0011\u0011H\u0002\u0002\u0005+:LG\u000fC\u0004<\u0001\t\u0007k1\u0003\u001f\u0002\u0007Q\fw-F\u0001>!\rq\u0014iE\u0007\u0002\u007f)\u0011\u0001IB\u0001\be\u00164G.Z2u\u0013\t\u0011uH\u0001\u0005DY\u0006\u001c8\u000fV1h\u0011\u0015!\u0005A\"\u0001F\u0003E\u0019G.Y:t)\u0006<7i\\7qC:LwN\\\u000b\u0002\rB\u0019\u0001cR%\n\u0005!\u0013!\u0001G$f]\u0016\u0014\u0018nY\"mCN\u001cH+Y4D_6\u0004\u0018M\\5p]B\u0011A\u0003\t\u0005\u0006\u0017\u0002!\t\u0001T\u0001\u0017O\u0016tWM]5d\u00072\f7o\u001d+bO\n+\u0018\u000e\u001c3feV\u0011Q*\u0016\u000b\u0003\u001db\u0003Ba\u0014*U/6\t\u0001K\u0003\u0002R\t\u00059Q.\u001e;bE2,\u0017BA*Q\u0005\u001d\u0011U/\u001b7eKJ\u0004\"\u0001F+\u0005\u000bYS%\u0019A\f\u0003\u0003\t\u00032\u0001\u0006\u0011U\u0011\u0015Y$\nq\u0001Z!\rq\u0014\t\u0016\u0005\u00067\u0002!\t\u0001X\u0001\u0017G2\f7o]'b]&4Wm\u001d;D_6\u0004\u0018M\\5p]V\tQ\fE\u0002_C&s!\u0001E0\n\u0005\u0001\u0014\u0011a\u00029bG.\fw-Z\u0005\u0003E\u000e\u0014QdR3oKJL7m\u00117bgNl\u0015M\\5gKN$8i\\7qC:LwN\u001c\u0006\u0003A\nACAW3iUB\u0011ABZ\u0005\u0003O\u001a\u0011!\u0002Z3qe\u0016\u001c\u0017\r^3eC\u0005I\u0017!H;tK\u0002\u001aG.Y:t)\u0006<7i\\7qC:LwN\u001c\u0011j]N$X-\u00193\"\u0003-\faA\r\u00182a9\u0002\u0004\"B7\u0001\t\u0003q\u0017aG4f]\u0016\u0014\u0018nY\"mCN\u001cX*\u00198jM\u0016\u001cHOQ;jY\u0012,'/\u0006\u0002peR\u0011\u0001\u000f\u001e\t\u0005\u001fJ\u000b8\u000f\u0005\u0002\u0015e\u0012)a\u000b\u001cb\u0001/A\u0019A\u0003I9\t\u000bUd\u00079\u0001<\u0002\u00115\fg.\u001b4fgR\u00042a\u001e>r\u001d\ta\u00010\u0003\u0002z\r\u00051\u0001K]3eK\u001aL!a\u001f?\u0003\u001b\rc\u0017m]:NC:Lg-Z:u\u0015\tIh\u0001\u000b\u0003mKzT\u0017%A@\u0002EU\u001cX\rI4f]\u0016\u0014\u0018nY\"mCN\u001cH+Y4Ck&dG-\u001a:!S:\u001cH/Z1e\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenericClassTagTraversableTemplate.class */
public interface GenericClassTagTraversableTemplate<A, CC extends Traversable<Object>> extends HasNewBuilder<A, CC> {

    /* renamed from: scala.collection.generic.GenericClassTagTraversableTemplate$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenericClassTagTraversableTemplate$class.class */
    public abstract class Cclass {
        public static void $init$(GenericClassTagTraversableTemplate genericClassTagTraversableTemplate) {
        }

        public static GenericClassTagCompanion classManifestCompanion(GenericClassTagTraversableTemplate genericClassTagTraversableTemplate) {
            return genericClassTagTraversableTemplate.classTagCompanion();
        }

        public static Builder genericClassManifestBuilder(GenericClassTagTraversableTemplate genericClassTagTraversableTemplate, ClassTag classTag) {
            return genericClassTagTraversableTemplate.genericClassTagBuilder(classTag);
        }

        public static Builder genericClassTagBuilder(GenericClassTagTraversableTemplate genericClassTagTraversableTemplate, ClassTag classTag) {
            return genericClassTagTraversableTemplate.classTagCompanion().newBuilder(classTag);
        }
    }

    GenericClassTagCompanion<CC> classManifestCompanion();

    GenericClassTagCompanion<CC> classTagCompanion();

    <B> Builder<B, CC> genericClassManifestBuilder(ClassTag<B> classTag);

    <B> Builder<B, CC> genericClassTagBuilder(ClassTag<B> classTag);

    ClassTag<A> tag();
}
