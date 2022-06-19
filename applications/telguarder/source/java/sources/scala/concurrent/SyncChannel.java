package scala.concurrent;

import scala.MatchError;
import scala.Predef$;
import scala.Tuple2;
import scala.collection.Seq;
import scala.collection.immutable.List;
import scala.collection.immutable.List$;
import scala.collection.immutable.Nil$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u000193A!\u0001\u0002\u0001\u000f\tY1+\u001f8d\u0007\"\fgN\\3m\u0015\t\u0019A!\u0001\u0006d_:\u001cWO\u001d:f]RT\u0011!B\u0001\u0006g\u000e\fG.Y\u0002\u0001+\tAAc\u0005\u0002\u0001\u0013A\u0011!bC\u0007\u0002\t%\u0011A\u0002\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000b9\u0001A\u0011A\b\u0002\rqJg.\u001b;?)\u0005\u0001\u0002cA\t\u0001%5\t!\u0001\u0005\u0002\u0014)1\u0001A!B\u000b\u0001\u0005\u00041\"!A!\u0012\u0005]Q\u0002C\u0001\u0006\u0019\u0013\tIBAA\u0004O_RD\u0017N\\4\u0011\u0005)Y\u0012B\u0001\u000f\u0005\u0005\r\te.\u001f\u0005\b=\u0001\u0001\r\u0011\"\u0003 \u00035\u0001XM\u001c3j]\u001e<&/\u001b;fgV\t\u0001\u0005E\u0002\"M!j\u0011A\t\u0006\u0003G\u0011\n\u0011\"[7nkR\f'\r\\3\u000b\u0005\u0015\"\u0011AC2pY2,7\r^5p]&\u0011qE\t\u0002\u0005\u0019&\u001cH\u000f\u0005\u0003\u000bSIY\u0013B\u0001\u0016\u0005\u0005\u0019!V\u000f\u001d7feA\u0019\u0011\u0003\f\u0018\n\u00055\u0012!aB*z]\u000e4\u0016M\u001d\t\u0003\u0015=J!\u0001\r\u0003\u0003\u000f\t{w\u000e\\3b]\"9!\u0007\u0001a\u0001\n\u0013\u0019\u0014!\u00059f]\u0012LgnZ,sSR,7o\u0018\u0013fcR\u0011Ag\u000e\t\u0003\u0015UJ!A\u000e\u0003\u0003\tUs\u0017\u000e\u001e\u0005\bqE\n\t\u00111\u0001!\u0003\rAH%\r\u0005\u0007u\u0001\u0001\u000b\u0015\u0002\u0011\u0002\u001dA,g\u000eZ5oO^\u0013\u0018\u000e^3tA!9A\b\u0001a\u0001\n\u0013i\u0014\u0001\u00049f]\u0012Lgn\u001a*fC\u0012\u001cX#\u0001 \u0011\u0007\u00052s\bE\u0002\u0012YIAq!\u0011\u0001A\u0002\u0013%!)\u0001\tqK:$\u0017N\\4SK\u0006$7o\u0018\u0013fcR\u0011Ag\u0011\u0005\bq\u0001\u000b\t\u00111\u0001?\u0011\u0019)\u0005\u0001)Q\u0005}\u0005i\u0001/\u001a8eS:<'+Z1eg\u0002BQa\u0012\u0001\u0005\u0002!\u000bQa\u001e:ji\u0016$\"\u0001N%\t\u000b)3\u0005\u0019\u0001\n\u0002\t\u0011\fG/\u0019\u0005\u0006\u0019\u0002!\t!T\u0001\u0005e\u0016\fG-F\u0001\u0013\u0001")
/* loaded from: classes3-dex2jar.jar:scala/concurrent/SyncChannel.class */
public class SyncChannel<A> {
    private List<Tuple2<A, SyncVar<Object>>> pendingWrites = Nil$.MODULE$;
    private List<SyncVar<A>> pendingReads = Nil$.MODULE$;

    private List<SyncVar<A>> pendingReads() {
        return this.pendingReads;
    }

    private void pendingReads_$eq(List<SyncVar<A>> list) {
        this.pendingReads = list;
    }

    private List<Tuple2<A, SyncVar<Object>>> pendingWrites() {
        return this.pendingWrites;
    }

    private void pendingWrites_$eq(List<Tuple2<A, SyncVar<Object>>> list) {
        this.pendingWrites = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public A read() {
        SyncVar syncVar = new SyncVar();
        synchronized (this) {
            if (pendingWrites().isEmpty()) {
                pendingReads_$eq(List$.MODULE$.apply((Seq) Predef$.MODULE$.wrapRefArray(new SyncVar[]{syncVar})).$colon$colon$colon(pendingReads()));
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            } else {
                Tuple2<A, SyncVar<Object>> head = pendingWrites().head();
                if (head == null) {
                    throw new MatchError(head);
                }
                Tuple2 tuple2 = new Tuple2(head.mo269_1(), head.mo268_2());
                Object mo269_1 = tuple2.mo269_1();
                pendingWrites_$eq((List) pendingWrites().tail());
                ((SyncVar) tuple2.mo268_2()).set(BoxesRunTime.boxToBoolean(true));
                syncVar.set(mo269_1);
                BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
            }
            return (A) syncVar.get();
        }
    }

    public void write(A a) {
        SyncVar syncVar = new SyncVar();
        synchronized (this) {
            if (pendingReads().isEmpty()) {
                pendingWrites_$eq(List$.MODULE$.apply((Seq) Predef$.MODULE$.wrapRefArray(new Tuple2[]{new Tuple2(a, syncVar)})).$colon$colon$colon(pendingWrites()));
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            } else {
                pendingReads_$eq((List) pendingReads().tail());
                pendingReads().head().set(a);
                syncVar.set(BoxesRunTime.boxToBoolean(true));
                BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
            }
        }
        syncVar.get();
    }
}
