package scala.collection.generic;

import java.util.concurrent.atomic.AtomicInteger;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001q2q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\bBi>l\u0017nY%oI\u0016Dh\t\\1h\u0015\t\u0019A!A\u0004hK:,'/[2\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0014\u0007\u0001Qa\u0002\u0005\u0002\f\u00195\ta!\u0003\u0002\u000e\r\t1\u0011I\\=SK\u001a\u0004\"a\u0004\t\u000e\u0003\tI!!\u0005\u0002\u0003\u0015MKwM\\1mY&tw\rC\u0003\u0014\u0001\u0011\u0005A#\u0001\u0004%S:LG\u000f\n\u000b\u0002+A\u00111BF\u0005\u0003/\u0019\u0011A!\u00168ji\"9\u0011\u0004\u0001b\u0001\n\u0013Q\u0012aB5oi\u001ad\u0017mZ\u000b\u00027A\u0011A$J\u0007\u0002;)\u0011adH\u0001\u0007CR|W.[2\u000b\u0005\u0001\n\u0013AC2p]\u000e,(O]3oi*\u0011!eI\u0001\u0005kRLGNC\u0001%\u0003\u0011Q\u0017M^1\n\u0005\u0019j\"!D!u_6L7-\u00138uK\u001e,'\u000f\u0003\u0004)\u0001\u0001\u0006IaG\u0001\tS:$h\r\\1hA!1!\u0006\u0001I\u0005\u0002-\n\u0011\"\u001b8eKb4E.Y4\u0016\u00031\u0002\"aC\u0017\n\u000592!aA%oi\"1\u0001\u0007\u0001I\u0005\u0002E\nAb]3u\u0013:$W\r\u001f$mC\u001e$\"!\u0006\u001a\t\u000bMz\u0003\u0019\u0001\u0017\u0002\u0003\u0019Da!\u000e\u0001\u0011\n\u00031\u0014!F:fi&sG-\u001a=GY\u0006<\u0017JZ$sK\u0006$XM\u001d\u000b\u0003+]BQa\r\u001bA\u00021Ba!\u000f\u0001\u0011\n\u0003Q\u0014\u0001F:fi&sG-\u001a=GY\u0006<\u0017J\u001a'fgN,'\u000f\u0006\u0002\u0016w!)1\u0007\u000fa\u0001Y\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/AtomicIndexFlag.class */
public interface AtomicIndexFlag extends Signalling {

    /* renamed from: scala.collection.generic.AtomicIndexFlag$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/generic/AtomicIndexFlag$class.class */
    public abstract class Cclass {
        public static int indexFlag(AtomicIndexFlag atomicIndexFlag) {
            return atomicIndexFlag.scala$collection$generic$AtomicIndexFlag$$intflag().get();
        }

        public static void setIndexFlag(AtomicIndexFlag atomicIndexFlag, int i) {
            atomicIndexFlag.scala$collection$generic$AtomicIndexFlag$$intflag().set(i);
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x0025, code lost:
            if (r4.scala$collection$generic$AtomicIndexFlag$$intflag().compareAndSet(r0, r5) != false) goto L5;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void setIndexFlagIfGreater(scala.collection.generic.AtomicIndexFlag r4, int r5) {
            /*
                r0 = 1
                r6 = r0
            L2:
                r0 = r4
                java.util.concurrent.atomic.AtomicInteger r0 = r0.scala$collection$generic$AtomicIndexFlag$$intflag()
                int r0 = r0.get()
                r7 = r0
                r0 = r5
                r1 = r7
                if (r0 > r1) goto L17
            L11:
                r0 = 0
                r8 = r0
                goto L2b
            L17:
                r0 = r6
                r8 = r0
                r0 = r4
                java.util.concurrent.atomic.AtomicInteger r0 = r0.scala$collection$generic$AtomicIndexFlag$$intflag()
                r1 = r7
                r2 = r5
                boolean r0 = r0.compareAndSet(r1, r2)
                if (r0 == 0) goto L2b
                goto L11
            L2b:
                r0 = r8
                r6 = r0
                r0 = r8
                if (r0 != 0) goto L2
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.generic.AtomicIndexFlag.Cclass.setIndexFlagIfGreater(scala.collection.generic.AtomicIndexFlag, int):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x0025, code lost:
            if (r4.scala$collection$generic$AtomicIndexFlag$$intflag().compareAndSet(r0, r5) != false) goto L5;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void setIndexFlagIfLesser(scala.collection.generic.AtomicIndexFlag r4, int r5) {
            /*
                r0 = 1
                r6 = r0
            L2:
                r0 = r4
                java.util.concurrent.atomic.AtomicInteger r0 = r0.scala$collection$generic$AtomicIndexFlag$$intflag()
                int r0 = r0.get()
                r7 = r0
                r0 = r5
                r1 = r7
                if (r0 < r1) goto L17
            L11:
                r0 = 0
                r8 = r0
                goto L2b
            L17:
                r0 = r6
                r8 = r0
                r0 = r4
                java.util.concurrent.atomic.AtomicInteger r0 = r0.scala$collection$generic$AtomicIndexFlag$$intflag()
                r1 = r7
                r2 = r5
                boolean r0 = r0.compareAndSet(r1, r2)
                if (r0 == 0) goto L2b
                goto L11
            L2b:
                r0 = r8
                r6 = r0
                r0 = r8
                if (r0 != 0) goto L2
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.generic.AtomicIndexFlag.Cclass.setIndexFlagIfLesser(scala.collection.generic.AtomicIndexFlag, int):void");
        }
    }

    @Override // scala.collection.generic.Signalling
    int indexFlag();

    AtomicInteger scala$collection$generic$AtomicIndexFlag$$intflag();

    /* renamed from: scala$collection$generic$AtomicIndexFlag$_setter_$scala$collection$generic$AtomicIndexFlag$$intflag_$eq */
    void mo110xe71037f1(AtomicInteger atomicInteger);

    @Override // scala.collection.generic.Signalling
    void setIndexFlag(int i);

    @Override // scala.collection.generic.Signalling
    void setIndexFlagIfGreater(int i);

    @Override // scala.collection.generic.Signalling
    void setIndexFlagIfLesser(int i);
}
