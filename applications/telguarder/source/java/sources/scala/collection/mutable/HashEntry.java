package scala.collection.mutable;

import scala.reflect.ScalaSignature;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001A2q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\u0005ICNDWI\u001c;ss*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\rQ!dJ\n\u0003\u0001-\u0001\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g\u0011\u0015\u0001\u0002\u0001\"\u0001\u0012\u0003\u0019!\u0013N\\5uIQ\t!\u0003\u0005\u0002\r'%\u0011AC\u0002\u0002\u0005+:LG\u000fC\u0004\u0017\u0001\t\u0007i\u0011A\f\u0002\u0007-,\u00170F\u0001\u0019!\tI\"\u0004\u0004\u0001\u0005\u000bm\u0001!\u0019\u0001\u000f\u0003\u0003\u0005\u000b\"!\b\u0011\u0011\u00051q\u0012BA\u0010\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001D\u0011\n\u0005\t2!aA!os\"IA\u0005\u0001a\u0001\u0002\u0004%\t!J\u0001\u0005]\u0016DH/F\u0001'!\tIr\u0005B\u0003)\u0001\t\u0007ADA\u0001F\u0011%Q\u0003\u00011AA\u0002\u0013\u00051&\u0001\u0005oKb$x\fJ3r)\t\u0011B\u0006C\u0004.S\u0005\u0005\t\u0019\u0001\u0014\u0002\u0007a$\u0013\u0007\u0003\u00040\u0001\u0001\u0006KAJ\u0001\u0006]\u0016DH\u000f\t")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/HashEntry.class */
public interface HashEntry<A, E> {

    /* renamed from: scala.collection.mutable.HashEntry$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/HashEntry$class.class */
    public abstract class Cclass {
        public static void $init$(HashEntry hashEntry) {
        }
    }

    A key();

    E next();

    @TraitSetter
    void next_$eq(E e);
}
