package scala.util;

import scala.Predef$;
import scala.Serializable;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.immutable.List$;
import scala.collection.immutable.Range;
import scala.collection.immutable.Range$;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Stream$;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.Builder;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u0005=e\u0001B\u0001\u0003\u0001\u001d\u0011aAU1oI>l'BA\u0002\u0005\u0003\u0011)H/\u001b7\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001aE\u0002\u0001\u00111\u0001\"!\u0003\u0006\u000e\u0003\u0011I!a\u0003\u0003\u0003\r\u0005s\u0017PU3g!\tIQ\"\u0003\u0002\u000f\t\ta1+\u001a:jC2L'0\u00192mK\"A\u0001\u0003\u0001BC\u0002\u0013\u0005\u0011#\u0001\u0003tK24W#\u0001\n\u0011\u0005M9R\"\u0001\u000b\u000b\u0005\r)\"\"\u0001\f\u0002\t)\fg/Y\u0005\u0003\u0003QA\u0001\"\u0007\u0001\u0003\u0002\u0003\u0006IAE\u0001\u0006g\u0016dg\r\t\u0005\u00067\u0001!\t\u0001H\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0005uy\u0002C\u0001\u0010\u0001\u001b\u0005\u0011\u0001\"\u0002\t\u001b\u0001\u0004\u0011\u0002\"B\u000e\u0001\t\u0003\tCCA\u000f#\u0011\u0015\u0019\u0003\u00051\u0001%\u0003\u0011\u0019X-\u001a3\u0011\u0005%)\u0013B\u0001\u0014\u0005\u0005\u0011auN\\4\t\u000bm\u0001A\u0011\u0001\u0015\u0015\u0005uI\u0003\"B\u0012(\u0001\u0004Q\u0003CA\u0005,\u0013\taCAA\u0002J]RDQa\u0007\u0001\u0005\u00029\"\u0012!\b\u0005\u0006a\u0001!\t!M\u0001\f]\u0016DHOQ8pY\u0016\fg\u000eF\u00013!\tI1'\u0003\u00025\t\t9!i\\8mK\u0006t\u0007\"\u0002\u001c\u0001\t\u00039\u0014!\u00038fqR\u0014\u0015\u0010^3t)\tA4\b\u0005\u0002\ns%\u0011!\b\u0002\u0002\u0005+:LG\u000fC\u0003=k\u0001\u0007Q(A\u0003csR,7\u000fE\u0002\n}\u0001K!a\u0010\u0003\u0003\u000b\u0005\u0013(/Y=\u0011\u0005%\t\u0015B\u0001\"\u0005\u0005\u0011\u0011\u0015\u0010^3\t\u000b\u0011\u0003A\u0011A#\u0002\u00159,\u0007\u0010\u001e#pk\ndW\rF\u0001G!\tIq)\u0003\u0002I\t\t1Ai\\;cY\u0016DQA\u0013\u0001\u0005\u0002-\u000b\u0011B\\3yi\u001acw.\u0019;\u0015\u00031\u0003\"!C'\n\u00059#!!\u0002$m_\u0006$\b\"\u0002)\u0001\t\u0003)\u0015\u0001\u00048fqR<\u0015-^:tS\u0006t\u0007\"\u0002*\u0001\t\u0003\u0019\u0016a\u00028fqRLe\u000e\u001e\u000b\u0002U!)!\u000b\u0001C\u0001+R\u0011!F\u0016\u0005\u0006/R\u0003\rAK\u0001\u0002]\")\u0011\f\u0001C\u00015\u0006Aa.\u001a=u\u0019>tw\rF\u0001%\u0011\u0015a\u0006\u0001\"\u0001^\u0003)qW\r\u001f;TiJLgn\u001a\u000b\u0003=\u0016\u0004\"a\u00182\u000f\u0005%\u0001\u0017BA1\u0005\u0003\u0019\u0001&/\u001a3fM&\u00111\r\u001a\u0002\u0007'R\u0014\u0018N\\4\u000b\u0005\u0005$\u0001\"\u00024\\\u0001\u0004Q\u0013A\u00027f]\u001e$\b\u000eC\u0003i\u0001\u0011\u0005\u0011.A\toKb$\bK]5oi\u0006\u0014G.Z\"iCJ$\u0012A\u001b\t\u0003\u0013-L!\u0001\u001c\u0003\u0003\t\rC\u0017M\u001d\u0005\u0006]\u0002!\ta\\\u0001\bg\u0016$8+Z3e)\tA\u0004\u000fC\u0003$[\u0002\u0007A\u0005C\u0003s\u0001\u0011\u00051/A\u0004tQV4g\r\\3\u0016\tQ\fi\u0002\u001f\u000b\u0004k\u0006UBc\u0001<\u0002\"A!q\u000f_A\u000e\u0019\u0001!Q!_9C\u0002i\u0014!aQ\"\u0016\u0007m\fy!\u0005\u0002}\u007fB\u0011\u0011\"`\u0005\u0003}\u0012\u0011qAT8uQ&tw\r\u0005\u0004\u0002\u0002\u0005\u001d\u0011Q\u0002\b\u0004\u0013\u0005\r\u0011bAA\u0003\t\u00059\u0001/Y2lC\u001e,\u0017\u0002BA\u0005\u0003\u0017\u0011q\u0002\u0016:bm\u0016\u00148/\u00192mK>s7-\u001a\u0006\u0004\u0003\u000b!\u0001cA<\u0002\u0010\u00119\u0011\u0011\u0003=C\u0002\u0005M!!\u0001-\u0012\u0007q\f)\u0002E\u0002\n\u0003/I1!!\u0007\u0005\u0005\r\te.\u001f\t\u0004o\u0006uAaBA\u0010c\n\u0007\u00111\u0003\u0002\u0002)\"9\u00111E9A\u0004\u0005\u0015\u0012A\u00012g!!\t9#!\rw\u000371XBAA\u0015\u0015\u0011\tY#!\f\u0002\u000f\u001d,g.\u001a:jG*\u0019\u0011q\u0006\u0003\u0002\u0015\r|G\u000e\\3di&|g.\u0003\u0003\u00024\u0005%\"\u0001D\"b]\n+\u0018\u000e\u001c3Ge>l\u0007BBA\u001cc\u0002\u0007a/\u0001\u0002yg\"9\u00111\b\u0001\u0005\u0006\u0005u\u0012aH:dC2\fG%\u001e;jY\u0012\u0012\u0016M\u001c3p[\u0012\"\u0013n]!ma\"\fg*^7%cQ\u0019!'a\u0010\t\u000f\u0005\u0005\u0013\u0011\ba\u0001U\u0006\t1\r\u000b\u0005\u0002:\u0005\u0015\u00131JA(!\rI\u0011qI\u0005\u0004\u0003\u0013\"!A\u00033faJ,7-\u0019;fI\u0006\u0012\u0011QJ\u0001C!J,7/\u001a:wK\u0012\u0004cm\u001c:!E\u0006\u001c7n^1sIN\u0004#-\u001b8bef\u00043m\\7qCRL'-\u001b7jift\u0003\u0005V8!e\u0016lwN^3!S:\u0004#GL\u00193]at\u0013EAA)\u0003\u0019\u0011d&M\u0019/m!9\u0011Q\u000b\u0001\u0005\u0002\u0005]\u0013\u0001D1ma\"\fg.^7fe&\u001cWCAA-!\u0015\tY&!\u0019k\u001b\t\tiF\u0003\u0003\u0002`\u00055\u0012!C5n[V$\u0018M\u00197f\u0013\u0011\t\u0019'!\u0018\u0003\rM#(/Z1n\u000f\u001d\t9G\u0001E\u0001\u0003S\naAU1oI>l\u0007c\u0001\u0010\u0002l\u00191\u0011A\u0001E\u0001\u0003[\u001a2!a\u001b\u001e\u0011\u001dY\u00121\u000eC\u0001\u0003c\"\"!!\u001b\t\u0011\u0005U\u00141\u000eC\u0002\u0003o\n!C[1wCJ\u000bg\u000eZ8n)>\u0014\u0016M\u001c3p[R\u0019Q$!\u001f\t\u000f\u0005m\u00141\u000fa\u0001%\u0005\t!\u000f\u0003\u0006\u0002��\u0005-\u0014\u0011!C\u0005\u0003\u0003\u000b1B]3bIJ+7o\u001c7wKR\u0011\u00111\u0011\t\u0005\u0003\u000b\u000bY)\u0004\u0002\u0002\b*\u0019\u0011\u0011R\u000b\u0002\t1\fgnZ\u0005\u0005\u0003\u001b\u000b9I\u0001\u0004PE*,7\r\u001e")
/* loaded from: classes3-dex2jar.jar:scala/util/Random.class */
public class Random implements Serializable {
    private final java.util.Random self;

    public Random() {
        this(new java.util.Random());
    }

    public Random(int i) {
        this(i);
    }

    public Random(long j) {
        this(new java.util.Random(j));
    }

    public Random(java.util.Random random) {
        this.self = random;
    }

    public static Random javaRandomToRandom(java.util.Random random) {
        return Random$.MODULE$.javaRandomToRandom(random);
    }

    public Stream<Object> alphanumeric() {
        return Stream$.MODULE$.continually(new Random$$anonfun$alphanumeric$1(this));
    }

    public boolean nextBoolean() {
        return self().nextBoolean();
    }

    public void nextBytes(byte[] bArr) {
        self().nextBytes(bArr);
    }

    public double nextDouble() {
        return self().nextDouble();
    }

    public float nextFloat() {
        return self().nextFloat();
    }

    public double nextGaussian() {
        return self().nextGaussian();
    }

    public int nextInt() {
        return self().nextInt();
    }

    public int nextInt(int i) {
        return self().nextInt(i);
    }

    public long nextLong() {
        return self().nextLong();
    }

    public char nextPrintableChar() {
        return (char) (self().nextInt(94) + 33);
    }

    public String nextString(int i) {
        return ((TraversableOnce) List$.MODULE$.fill(i, new Random$$anonfun$nextString$1(this))).mkString();
    }

    public final boolean scala$util$Random$$isAlphaNum$1(char c) {
        return (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || (c >= '0' && c <= '9');
    }

    public final char scala$util$Random$$nextAlphaNum$1() {
        return "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".charAt(self().nextInt(62));
    }

    public final char scala$util$Random$$safeChar$1() {
        return (char) (nextInt(55295) + 1);
    }

    public final void scala$util$Random$$swap$1(int i, int i2, ArrayBuffer arrayBuffer) {
        Object apply = arrayBuffer.apply(i);
        arrayBuffer.update(i, arrayBuffer.apply(i2));
        arrayBuffer.update(i2, apply);
    }

    public java.util.Random self() {
        return this.self;
    }

    public void setSeed(long j) {
        self().setSeed(j);
    }

    public <T, CC extends TraversableOnce<Object>> CC shuffle(CC cc, CanBuildFrom<CC, T, CC> canBuildFrom) {
        ArrayBuffer $plus$plus$eq = new ArrayBuffer().$plus$plus$eq((TraversableOnce) cc);
        Predef$ predef$ = Predef$.MODULE$;
        int length = $plus$plus$eq.length();
        Range$ range$ = Range$.MODULE$;
        Range by = new Range.Inclusive(length, 2, 1).m153by(-1);
        by.scala$collection$immutable$Range$$validateMaxLength();
        boolean z = (by.start() == Integer.MIN_VALUE && by.end() == Integer.MIN_VALUE) ? false : true;
        int start = by.start();
        int terminalElement = by.terminalElement();
        int step = by.step();
        int i = 0;
        while (true) {
            if (!z ? i < by.numRangeElements() : start != terminalElement) {
                scala$util$Random$$swap$1(start - 1, nextInt(start), $plus$plus$eq);
                i++;
                start += step;
            } else {
                return (CC) ((Builder) canBuildFrom.apply(cc).$plus$plus$eq($plus$plus$eq)).result();
            }
        }
    }
}
