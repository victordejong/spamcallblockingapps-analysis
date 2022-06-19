package scala.p029io;

import scala.collection.mutable.StringBuilder;
import scala.math.package$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\u00154a!\u0001\u0002\u0002\u0002\u00111!\u0001\u0003)pg&$\u0018n\u001c8\u000b\u0005\r!\u0011AA5p\u0015\u0005)\u0011!B:dC2\f7C\u0001\u0001\b!\tA\u0011\"D\u0001\u0005\u0013\tQAA\u0001\u0004B]f\u0014VM\u001a\u0005\u0006\u0019\u0001!\tAD\u0001\u0007y%t\u0017\u000e\u001e \u0004\u0001Q\tq\u0002\u0005\u0002\u0011\u00015\t!\u0001C\u0003\u0013\u0001\u0019\u00051#\u0001\u0006dQ\u0016\u001c7.\u00138qkR$2\u0001F\f\u001d!\tAQ#\u0003\u0002\u0017\t\t!QK\\5u\u0011\u0015A\u0012\u00031\u0001\u001a\u0003\u0011a\u0017N\\3\u0011\u0005!Q\u0012BA\u000e\u0005\u0005\rIe\u000e\u001e\u0005\u0006;E\u0001\r!G\u0001\u0007G>dW/\u001c8\t\u000f}\u0001!\u0019!C\u0003A\u0005IA*\u0013(F?\nKEkU\u000b\u0002C=\t!%H\u0001\u0015\u0011\u0019!\u0003\u0001)A\u0007C\u0005QA*\u0013(F?\nKEk\u0015\u0011\t\u000f\u0019\u0002!\u0019!C\u0003O\u0005Y1i\u0014'V\u001b:{&)\u0013+T+\u0005As\"A\u0015\u001e\u0003-Aaa\u000b\u0001!\u0002\u001bA\u0013\u0001D\"P\u0019Vkej\u0018\"J)N\u0003\u0003bB\u0017\u0001\u0005\u0004%)AL\u0001\n\u0019&sUiX'B'.+\u0012aL\b\u0002au\u0019qb����\t\rI\u0002\u0001\u0015!\u00040\u0003)a\u0015JT#`\u001b\u0006\u001b6\n\t\u0005\bi\u0001\u0011\r\u0011\"\u00026\u0003-\u0019u\nT+N\u001d~k\u0015iU&\u0016\u0003Yz\u0011aN\u000f\u0003\u000f}Ha!\u000f\u0001!\u0002\u001b1\u0014\u0001D\"P\u0019VkejX'B'.\u0003\u0003\"B\u001e\u0001\t\u000ba\u0014AB3oG>$W\rF\u0002\u001a{yBQ\u0001\u0007\u001eA\u0002eAQ!\b\u001eA\u0002eAQ\u0001\u0007\u0001\u0005\u0006\u0001#\"!G!\t\u000b\t{\u0004\u0019A\r\u0002\u0007A|7\u000fC\u0003\u001e\u0001\u0011\u0015A\t\u0006\u0002\u001a\u000b\")!i\u0011a\u00013!)q\t\u0001C\u0001\u0011\u0006AAo\\*ue&tw\r\u0006\u0002J!B\u0011!*\u0014\b\u0003\u0011-K!\u0001\u0014\u0003\u0002\rA\u0013X\rZ3g\u0013\tquJ\u0001\u0004TiJLgn\u001a\u0006\u0003\u0019\u0012AQA\u0011$A\u0002eAC\u0001\u0001*V/B\u0011\u0001bU\u0005\u0003)\u0012\u0011!\u0002Z3qe\u0016\u001c\u0017\r^3eC\u00051\u0016a\u0007+iSN\u00043\r\\1tg\u0002:\u0018\u000e\u001c7!E\u0016\u0004#/Z7pm\u0016$g&I\u0001Y\u0003\u0019\u0011d&\r\u0019/a\u001d1!L\u0001E\u0001\tm\u000b\u0001\u0002U8tSRLwN\u001c\t\u0003!q3a!\u0001\u0002\t\u0002\u0011i6C\u0001/\u0010\u0011\u0015aA\f\"\u0001`)\u0005Y\u0006\"\u0002\n]\t\u0003\tGc\u0001\u000bcG\")\u0001\u0004\u0019a\u00013!)Q\u0004\u0019a\u00013!\"ALU+X\u0001")
/* renamed from: scala.io.Position */
/* loaded from: classes3-dex2jar.jar:scala/io/Position.class */
public abstract class Position {
    private final int COLUMN_BITS;
    private final int COLUMN_MASK;
    private final int LINE_BITS;
    private final int LINE_MASK;

    public final int COLUMN_BITS() {
        return 11;
    }

    public final int COLUMN_MASK() {
        return 2047;
    }

    public final int LINE_BITS() {
        return 20;
    }

    public final int LINE_MASK() {
        return 1048575;
    }

    public abstract void checkInput(int i, int i2);

    public final int column(int i) {
        return i & 2047;
    }

    public final int encode(int i, int i2) {
        checkInput(i, i2);
        return i >= 1048575 ? 2147481600 : (i << 11) | package$.MODULE$.min(2047, i2);
    }

    public final int line(int i) {
        return (i >> 11) & 1048575;
    }

    public String toString(int i) {
        return new StringBuilder().append(line(i)).append((Object) ":").append(BoxesRunTime.boxToInteger(column(i))).toString();
    }
}
