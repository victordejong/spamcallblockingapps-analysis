package scala.collection.mutable;

import scala.Serializable;
import scala.collection.mutable.HashEntry;
import scala.reflect.ScalaSignature;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u000153A!\u0001\u0002\u0003\u0013\tYA*\u001b8lK\u0012,e\u000e\u001e:z\u0015\t\u0019A!A\u0004nkR\f'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0007))\u0002e\u0005\u0003\u0001\u0017=\u0011\u0003C\u0001\u0007\u000e\u001b\u00051\u0011B\u0001\b\u0007\u0005\u0019\te.\u001f*fMB!\u0001#E\n\u001f\u001b\u0005\u0011\u0011B\u0001\n\u0003\u0005%A\u0015m\u001d5F]R\u0014\u0018\u0010\u0005\u0002\u0015+1\u0001A!\u0002\f\u0001\u0005\u00049\"!A!\u0012\u0005aY\u0002C\u0001\u0007\u001a\u0013\tQbAA\u0004O_RD\u0017N\\4\u0011\u00051a\u0012BA\u000f\u0007\u0005\r\te.\u001f\t\u0005!\u0001\u0019r\u0004\u0005\u0002\u0015A\u0011)\u0011\u0005\u0001b\u0001/\t\t!\t\u0005\u0002\rG%\u0011AE\u0002\u0002\r'\u0016\u0014\u0018.\u00197ju\u0006\u0014G.\u001a\u0005\tM\u0001\u0011)\u0019!C\u0001O\u0005\u00191.Z=\u0016\u0003MA\u0001\"\u000b\u0001\u0003\u0002\u0003\u0006IaE\u0001\u0005W\u0016L\b\u0005\u0003\u0005,\u0001\t\u0005\r\u0011\"\u0001-\u0003\u00151\u0018\r\\;f+\u0005y\u0002\u0002\u0003\u0018\u0001\u0005\u0003\u0007I\u0011A\u0018\u0002\u0013Y\fG.^3`I\u0015\fHC\u0001\u00194!\ta\u0011'\u0003\u00023\r\t!QK\\5u\u0011\u001d!T&!AA\u0002}\t1\u0001\u001f\u00132\u0011!1\u0004A!A!B\u0013y\u0012A\u0002<bYV,\u0007\u0005C\u00039\u0001\u0011\u0005\u0011(\u0001\u0004=S:LGO\u0010\u000b\u0004=iZ\u0004\"\u0002\u00148\u0001\u0004\u0019\u0002\"B\u00168\u0001\u0004y\u0002bB\u001f\u0001\u0001\u0004%\tAP\u0001\bK\u0006\u0014H.[3s+\u0005q\u0002b\u0002!\u0001\u0001\u0004%\t!Q\u0001\fK\u0006\u0014H.[3s?\u0012*\u0017\u000f\u0006\u00021\u0005\"9AgPA\u0001\u0002\u0004q\u0002B\u0002#\u0001A\u0003&a$\u0001\u0005fCJd\u0017.\u001a:!\u0011\u001d1\u0005\u00011A\u0005\u0002y\nQ\u0001\\1uKJDq\u0001\u0013\u0001A\u0002\u0013\u0005\u0011*A\u0005mCR,'o\u0018\u0013fcR\u0011\u0001G\u0013\u0005\bi\u001d\u000b\t\u00111\u0001\u001f\u0011\u0019a\u0005\u0001)Q\u0005=\u00051A.\u0019;fe\u0002\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinkedEntry.class */
public final class LinkedEntry<A, B> implements HashEntry<A, LinkedEntry<A, B>>, Serializable {
    private final A key;
    private Object next;
    private B value;
    private LinkedEntry<A, B> earlier = null;
    private LinkedEntry<A, B> later = null;

    public LinkedEntry(A a, B b) {
        this.key = a;
        this.value = b;
        HashEntry.Cclass.$init$(this);
    }

    public LinkedEntry<A, B> earlier() {
        return this.earlier;
    }

    public void earlier_$eq(LinkedEntry<A, B> linkedEntry) {
        this.earlier = linkedEntry;
    }

    @Override // scala.collection.mutable.HashEntry
    public A key() {
        return this.key;
    }

    public LinkedEntry<A, B> later() {
        return this.later;
    }

    public void later_$eq(LinkedEntry<A, B> linkedEntry) {
        this.later = linkedEntry;
    }

    @Override // scala.collection.mutable.HashEntry
    public Object next() {
        return this.next;
    }

    @Override // scala.collection.mutable.HashEntry
    @TraitSetter
    public void next_$eq(Object obj) {
        this.next = obj;
    }

    public B value() {
        return this.value;
    }

    public void value_$eq(B b) {
        this.value = b;
    }
}
