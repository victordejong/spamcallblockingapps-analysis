package scala.collection.parallel;

import scala.Function1;
import scala.Option;
import scala.Product;
import scala.Serializable;
import scala.collection.Iterator;
import scala.collection.Set;
import scala.collection.Set$;
import scala.collection.TraversableOnce;
import scala.collection.mutable.StringBuilder;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\u0005\u001draB\u0001\u0003\u0003\u0003E\t!C\u0001\u0013\u0007>l\u0007o\\:ji\u0016$\u0006N]8xC\ndWM\u0003\u0002\u0004\t\u0005A\u0001/\u0019:bY2,GN\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001\u0001\u0005\u0002\u000b\u00175\t!AB\u0004\r\u0005\u0005\u0005\t\u0012A\u0007\u0003%\r{W\u000e]8tSR,G\u000b\u001b:po\u0006\u0014G.Z\n\u0004\u00179I\u0003\u0003B\b\u0013)\u0001j\u0011\u0001\u0005\u0006\u0003#\u0019\tqA];oi&lW-\u0003\u0002\u0014!\t\t\u0012IY:ue\u0006\u001cGOR;oGRLwN\\\u0019\u0011\u0007U1\u0002$D\u0001\u0005\u0013\t9BAA\u0002TKR\u0004\"!G\u000f\u000f\u0005iYR\"\u0001\u0004\n\u0005q1\u0011a\u00029bG.\fw-Z\u0005\u0003=}\u0011\u0011\u0002\u00165s_^\f'\r\\3\u000b\u0005q1\u0001C\u0001\u0006\"\r\u0011a!A\u0011\u0012\u0014\t\u0005\u001ac%\u000b\t\u00033\u0011J!!J\u0010\u0003\u0013\u0015C8-\u001a9uS>t\u0007C\u0001\u000e(\u0013\tAcAA\u0004Qe>$Wo\u0019;\u0011\u0005iQ\u0013BA\u0016\u0007\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011!i\u0013E!f\u0001\n\u0003q\u0013A\u0003;ie><\u0018M\u00197fgV\tA\u0003\u0003\u00051C\tE\t\u0015!\u0003\u0015\u0003-!\bN]8xC\ndWm\u001d\u0011\t\u000bI\nC\u0011A\u001a\u0002\rqJg.\u001b;?)\t\u0001C\u0007C\u0003.c\u0001\u0007A\u0003C\u00047C\u0005\u0005I\u0011A\u001c\u0002\t\r|\u0007/\u001f\u000b\u0003AaBq!L\u001b\u0011\u0002\u0003\u0007A\u0003C\u0004;CE\u0005I\u0011A\u001e\u0002\u001d\r|\u0007/\u001f\u0013eK\u001a\fW\u000f\u001c;%cU\tAH\u000b\u0002\u0015{-\na\b\u0005\u0002@\t6\t\u0001I\u0003\u0002B\u0005\u0006IQO\\2iK\u000e\\W\r\u001a\u0006\u0003\u0007\u001a\t!\"\u00198o_R\fG/[8o\u0013\t)\u0005IA\tv]\u000eDWmY6fIZ\u000b'/[1oG\u0016DqaR\u0011\u0002\u0002\u0013\u0005\u0003*A\u0007qe>$Wo\u0019;Qe\u00164\u0017\u000e_\u000b\u0002\u0013B\u0011!jT\u0007\u0002\u0017*\u0011A*T\u0001\u0005Y\u0006twMC\u0001O\u0003\u0011Q\u0017M^1\n\u0005A[%AB*ue&tw\rC\u0004SC\u0005\u0005I\u0011A*\u0002\u0019A\u0014x\u000eZ;di\u0006\u0013\u0018\u000e^=\u0016\u0003Q\u0003\"AG+\n\u0005Y3!aA%oi\"9\u0001,IA\u0001\n\u0003I\u0016A\u00049s_\u0012,8\r^#mK6,g\u000e\u001e\u000b\u00035v\u0003\"AG.\n\u0005q3!aA!os\"9alVA\u0001\u0002\u0004!\u0016a\u0001=%c!9\u0001-IA\u0001\n\u0003\n\u0017a\u00049s_\u0012,8\r^%uKJ\fGo\u001c:\u0016\u0003\t\u00042!F2[\u0013\t!GA\u0001\u0005Ji\u0016\u0014\u0018\r^8s\u0011\u001d1\u0017%!A\u0005\u0002\u001d\f\u0001bY1o\u000bF,\u0018\r\u001c\u000b\u0003Q.\u0004\"AG5\n\u0005)4!a\u0002\"p_2,\u0017M\u001c\u0005\b=\u0016\f\t\u00111\u0001[\u0011\u001di\u0017%!A\u0005B9\f\u0001\u0002[1tQ\u000e{G-\u001a\u000b\u0002)\"9\u0001/IA\u0001\n\u0003\n\u0018AB3rk\u0006d7\u000f\u0006\u0002ie\"9al\\A\u0001\u0002\u0004Q\u0006\u0006B\u0011uof\u0004\"AG;\n\u0005Y4!A\u00033faJ,7-\u0019;fI\u0006\n\u00010A\u000eUQ&\u001c\be\u00197bgN\u0004s/\u001b7mA\t,\u0007E]3n_Z,GML\u0011\u0002u\u00061!GL\u00192]ABQAM\u0006\u0005\u0002q$\u0012!\u0003\u0005\b}.\t\t\u0011\"\u0012��\u0003!!xn\u0015;sS:<G#A%\t\u0013\u0005\r1\"!A\u0005\u0002\u0006\u0015\u0011!B1qa2LHc\u0001\u0011\u0002\b!1Q&!\u0001A\u0002QA\u0011\"a\u0003\f\u0003\u0003%\t)!\u0004\u0002\u000fUt\u0017\r\u001d9msR!\u0011qBA\u000b!\u0011Q\u0012\u0011\u0003\u000b\n\u0007\u0005MaA\u0001\u0004PaRLwN\u001c\u0005\n\u0003/\tI!!AA\u0002\u0001\n1\u0001\u001f\u00131\u0011%\tYbCA\u0001\n\u0013\ti\"A\u0006sK\u0006$'+Z:pYZ,GCAA\u0010!\rQ\u0015\u0011E\u0005\u0004\u0003GY%AB(cU\u0016\u001cG\u000f\u000b\u0003\fi^L\b")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/CompositeThrowable.class */
public final class CompositeThrowable extends Exception implements Product, Serializable {
    private final Set<Throwable> throwables;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CompositeThrowable(Set<Throwable> set) {
        super(new StringBuilder().append((Object) "Multiple exceptions thrown during a parallel computation: ").append((Object) ((TraversableOnce) set.map(new CompositeThrowable$$anonfun$$lessinit$greater$1(), Set$.MODULE$.canBuildFrom())).mkString("\n\n")).toString());
        this.throwables = set;
        Product.Cclass.$init$(this);
    }

    public static <A> Function1<Set<Throwable>, A> andThen(Function1<CompositeThrowable, A> function1) {
        return CompositeThrowable$.MODULE$.andThen(function1);
    }

    public static CompositeThrowable apply(Set<Throwable> set) {
        return CompositeThrowable$.MODULE$.apply(set);
    }

    public static <A> Function1<A, CompositeThrowable> compose(Function1<A, Set<Throwable>> function1) {
        return CompositeThrowable$.MODULE$.compose(function1);
    }

    public static Option<Set<Throwable>> unapply(CompositeThrowable compositeThrowable) {
        return CompositeThrowable$.MODULE$.unapply(compositeThrowable);
    }

    @Override // scala.Equals
    public boolean canEqual(Object obj) {
        return obj instanceof CompositeThrowable;
    }

    public CompositeThrowable copy(Set<Throwable> set) {
        return new CompositeThrowable(set);
    }

    public Set<Throwable> copy$default$1() {
        return throwables();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0044, code lost:
        if ((r0 != null ? r0.equals(r0) : r0 == null) != false) goto L16;
     */
    @Override // scala.Equals
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r3
            r1 = r4
            if (r0 == r1) goto L47
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof scala.collection.parallel.CompositeThrowable
            if (r0 == 0) goto L49
            r0 = r4
            scala.collection.parallel.CompositeThrowable r0 = (scala.collection.parallel.CompositeThrowable) r0
            r7 = r0
            r0 = r3
            scala.collection.Set r0 = r0.throwables()
            r4 = r0
            r0 = r7
            scala.collection.Set r0 = r0.throwables()
            r7 = r0
            r0 = r4
            if (r0 != 0) goto L2e
            r0 = r7
            if (r0 == 0) goto L37
            goto L3d
        L2e:
            r0 = r4
            r1 = r7
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L3d
        L37:
            r0 = 1
            r8 = r0
            goto L40
        L3d:
            r0 = 0
            r8 = r0
        L40:
            r0 = r5
            r6 = r0
            r0 = r8
            if (r0 == 0) goto L49
        L47:
            r0 = 1
            r6 = r0
        L49:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.parallel.CompositeThrowable.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ScalaRunTime$.MODULE$._hashCode(this);
    }

    @Override // scala.Product
    public int productArity() {
        return 1;
    }

    @Override // scala.Product
    public Object productElement(int i) {
        if (i == 0) {
            return throwables();
        }
        throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
    }

    @Override // scala.Product
    public Iterator<Object> productIterator() {
        return ScalaRunTime$.MODULE$.typedProductIterator(this);
    }

    @Override // scala.Product
    public String productPrefix() {
        return "CompositeThrowable";
    }

    public Set<Throwable> throwables() {
        return this.throwables;
    }
}
