package scala.collection.concurrent;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple3;
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/RDCSS_Descriptor$.class */
public final class RDCSS_Descriptor$ implements Serializable {
    public static final RDCSS_Descriptor$ MODULE$ = null;

    static {
        new RDCSS_Descriptor$();
    }

    private RDCSS_Descriptor$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <K, V> RDCSS_Descriptor<K, V> apply(INode<K, V> iNode, MainNode<K, V> mainNode, INode<K, V> iNode2) {
        return new RDCSS_Descriptor<>(iNode, mainNode, iNode2);
    }

    public final String toString() {
        return "RDCSS_Descriptor";
    }

    public <K, V> Option<Tuple3<INode<K, V>, MainNode<K, V>, INode<K, V>>> unapply(RDCSS_Descriptor<K, V> rDCSS_Descriptor) {
        return rDCSS_Descriptor == null ? None$.MODULE$ : new Some(new Tuple3(rDCSS_Descriptor.old(), rDCSS_Descriptor.expectedmain(), rDCSS_Descriptor.m181nv()));
    }
}
