package scala.util.hashing;

import scala.Product;
import scala.collection.Map;
import scala.collection.Seq;
import scala.collection.Set;
import scala.collection.TraversableOnce;
import scala.collection.immutable.List;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.IntRef;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\t\u001dd!B\u0001\u0003\u0001\tA!aC've6,(\u000fS1tQNR!a\u0001\u0003\u0002\u000f!\f7\u000f[5oO*\u0011QAB\u0001\u0005kRLGNC\u0001\b\u0003\u0015\u00198-\u00197b'\t\u0001\u0011\u0002\u0005\u0002\u000b\u00175\ta!\u0003\u0002\r\r\t1\u0011I\\=SK\u001aDQA\u0004\u0001\u0005\u0002A\ta\u0001P5oSRt4\u0001\u0001\u000b\u0002#A\u0011!\u0003A\u0007\u0002\u0005!)A\u0003\u0001C\u0003+\u0005\u0019Q.\u001b=\u0015\u0007YI2\u0004\u0005\u0002\u000b/%\u0011\u0001D\u0002\u0002\u0004\u0013:$\b\"\u0002\u000e\u0014\u0001\u00041\u0012\u0001\u00025bg\"DQ\u0001H\nA\u0002Y\tA\u0001Z1uC\")a\u0004\u0001C\u0003?\u00059Q.\u001b=MCN$Hc\u0001\f!C!)!$\ba\u0001-!)A$\ba\u0001-!)1\u0005\u0001C\u0003I\u0005aa-\u001b8bY&TX\rS1tQR\u0019a#\n\u0014\t\u000bi\u0011\u0003\u0019\u0001\f\t\u000b\u001d\u0012\u0003\u0019\u0001\f\u0002\r1,gn\u001a;i\u0011\u0015I\u0003\u0001\"\u0004+\u0003%\tg/\u00197b]\u000eDW\r\u0006\u0002\u0017W!)!\u0004\u000ba\u0001-!)Q\u0006\u0001C\u0003]\u0005Y\u0001O]8ek\u000e$\b*Y:i)\r1r\u0006\u000e\u0005\u0006a1\u0002\r!M\u0001\u0002qB\u0011!BM\u0005\u0003g\u0019\u0011q\u0001\u0015:pIV\u001cG\u000fC\u00036Y\u0001\u0007a#\u0001\u0003tK\u0016$\u0007\"B\u001c\u0001\t\u000bA\u0014AC:ue&tw\rS1tQR\u0019a#\u000f\"\t\u000bi2\u0004\u0019A\u001e\u0002\u0007M$(\u000f\u0005\u0002=\u007f9\u0011!\"P\u0005\u0003}\u0019\ta\u0001\u0015:fI\u00164\u0017B\u0001!B\u0005\u0019\u0019FO]5oO*\u0011aH\u0002\u0005\u0006kY\u0002\rA\u0006\u0005\u0006\t\u0002!)!R\u0001\u000ek:|'\u000fZ3sK\u0012D\u0015m\u001d5\u0015\u0007Y1%\u000bC\u0003H\u0007\u0002\u0007\u0001*\u0001\u0002ygB\u0019\u0011\nT(\u000f\u0005)Q\u0015BA&\u0007\u0003\u001d\u0001\u0018mY6bO\u0016L!!\u0014(\u0003\u001fQ\u0013\u0018M^3sg\u0006\u0014G.Z(oG\u0016T!a\u0013\u0004\u0011\u0005)\u0001\u0016BA)\u0007\u0005\r\te.\u001f\u0005\u0006k\r\u0003\rA\u0006\u0005\u0006)\u0002!)!V\u0001\f_J$WM]3e\u0011\u0006\u001c\b\u000eF\u0002\u0017-^CQaR*A\u0002!CQ!N*A\u0002YAQ!\u0017\u0001\u0005\u0006i\u000b\u0011\"\u0019:sCfD\u0015m\u001d5\u0016\u0005m\u001bGc\u0001\f][\")Q\f\u0017a\u0001=\u0006\t\u0011\rE\u0002\u000b?\u0006L!\u0001\u0019\u0004\u0003\u000b\u0005\u0013(/Y=\u0011\u0005\t\u001cG\u0002\u0001\u0003\nIb\u0003\u000b\u0011!AC\u0002\u0015\u0014\u0011\u0001V\t\u0003M>\u0003\"AC4\n\u0005!4!a\u0002(pi\"Lgn\u001a\u0015\u0003G*\u0004\"AC6\n\u000514!aC:qK\u000eL\u0017\r\\5{K\u0012DQ!\u000e-A\u0002YAQa\u001c\u0001\u0005\u0006A\f\u0011BY=uKND\u0015m\u001d5\u0015\u0007Y\th\u000fC\u0003\u001d]\u0002\u0007!\u000fE\u0002\u000b?N\u0004\"A\u0003;\n\u0005U4!\u0001\u0002\"zi\u0016DQ!\u000e8A\u0002YAQ\u0001\u001f\u0001\u0005\u0006e\f\u0001\u0002\\5ti\"\u000b7\u000f\u001b\u000b\u0005-i\fy\u0001C\u0003Ho\u0002\u00071\u0010M\u0002}\u0003\u0017\u0001R!`A\u0003\u0003\u0013i\u0011A \u0006\u0004\u007f\u0006\u0005\u0011!C5n[V$\u0018M\u00197f\u0015\r\t\u0019AB\u0001\u000bG>dG.Z2uS>t\u0017bAA\u0004}\n!A*[:u!\r\u0011\u00171\u0002\u0003\u000b\u0003\u001bQ\u0018\u0011!A\u0001\u0006\u0003)'aA0%c!)Qg\u001ea\u0001-\u001d9\u00111\u0003\u0002\t\u0002\u0005U\u0011aC've6,(\u000fS1tQN\u00022AEA\f\r\u0019\t!\u0001#\u0001\u0002\u001aM\u0019\u0011qC\t\t\u000f9\t9\u0002\"\u0001\u0002\u001eQ\u0011\u0011Q\u0003\u0005\u000b\u0003C\t9B1A\u0005\u0006\u0005\r\u0012!C1se\u0006L8+Z3e+\t\t)c\u0004\u0002\u0002(u!Ah\u0002&b\u0011%\tY#a\u0006!\u0002\u001b\t)#\u0001\u0006beJ\f\u0017pU3fI\u0002B!\"a\f\u0002\u0018\t\u0007IQAA\u0019\u0003)\u0019HO]5oON+W\rZ\u000b\u0003\u0003gy!!!\u000e\u001e\t]X}P5\u0005\n\u0003s\t9\u0002)A\u0007\u0003g\t1b\u001d;sS:<7+Z3eA!Q\u0011QHA\f\u0005\u0004%)!a\u0010\u0002\u0017A\u0014x\u000eZ;diN+W\rZ\u000b\u0003\u0003\u0003z!!a\u0011\u001e\t)w0X0\u0005\n\u0003\u000f\n9\u0002)A\u0007\u0003\u0003\nA\u0002\u001d:pIV\u001cGoU3fI\u0002B!\"a\u0013\u0002\u0018\t\u0007IQAA'\u00035\u0019\u00180\\7fiJL7mU3fIV\u0011\u0011qJ\b\u0003\u0003#jB!.Jx^#I\u0011QKA\fA\u00035\u0011qJ\u0001\u000fgflW.\u001a;sS\u000e\u001cV-\u001a3!\u0011)\tI&a\u0006C\u0002\u0013\u0015\u00111L\u0001\u0010iJ\fg/\u001a:tC\ndWmU3fIV\u0011\u0011QL\b\u0003\u0003?jBa:\u001e\f,!I\u00111MA\fA\u00035\u0011QL\u0001\u0011iJ\fg/\u001a:tC\ndWmU3fI\u0002B!\"a\u001a\u0002\u0018\t\u0007IQAA5\u0003\u001d\u0019X-]*fK\u0012,\u0012A\u0006\u0005\t\u0003[\n9\u0002)A\u0007-\u0005A1/Z9TK\u0016$\u0007\u0005\u0003\u0006\u0002r\u0005]!\u0019!C\u0003\u0003S\nq!\\1q'\u0016,G\r\u0003\u0005\u0002v\u0005]\u0001\u0015!\u0004\u0017\u0003!i\u0017\r]*fK\u0012\u0004\u0003BCA=\u0003/\u0011\r\u0011\"\u0002\u0002j\u000591/\u001a;TK\u0016$\u0007\u0002CA?\u0003/\u0001\u000bQ\u0002\f\u0002\u0011M,GoU3fI\u0002Bq!WA\f\t\u0003\t\t)\u0006\u0003\u0002\u0004\u0006-Ec\u0001\f\u0002\u0006\"9Q,a A\u0002\u0005\u001d\u0005\u0003\u0002\u0006`\u0003\u0013\u00032AYAF\t)!\u0017q\u0010Q\u0001\u0002\u0003\u0015\r!\u001a\u0015\u0004\u0003\u0017S\u0007bB8\u0002\u0018\u0011\u0005\u0011\u0011\u0013\u000b\u0004-\u0005M\u0005B\u0002\u000f\u0002\u0010\u0002\u0007!\u000fC\u0004U\u0003/!\t!a&\u0015\u0007Y\tI\n\u0003\u0004H\u0003+\u0003\r\u0001\u0013\u0005\b[\u0005]A\u0011AAO)\r1\u0012q\u0014\u0005\u0007a\u0005m\u0005\u0019A\u0019\t\u000f]\n9\u0002\"\u0001\u0002$R\u0019a#!*\t\rA\n\t\u000b1\u0001<\u0011\u001d!\u0015q\u0003C\u0001\u0003S#2AFAV\u0011\u00199\u0015q\u0015a\u0001\u0011\"A\u0011qVA\f\t\u0003\t\t,A\u0004tKFD\u0015m\u001d5\u0015\u0007Y\t\u0019\fC\u0004H\u0003[\u0003\r!!.1\t\u0005]\u0016\u0011\u0019\t\u0007\u0003s\u000bY,a0\u000e\u0005\u0005\u0005\u0011\u0002BA_\u0003\u0003\u00111aU3r!\r\u0011\u0017\u0011\u0019\u0003\f\u0003\u0007\f\u0019,!A\u0001\u0002\u000b\u0005QMA\u0002`IIB\u0001\"a2\u0002\u0018\u0011\u0005\u0011\u0011Z\u0001\b[\u0006\u0004\b*Y:i)\r1\u00121\u001a\u0005\b\u000f\u0006\u0015\u0007\u0019AAga\u0019\ty-a6\u0002^BA\u0011\u0011XAi\u0003+\fY.\u0003\u0003\u0002T\u0006\u0005!aA'baB\u0019!-a6\u0005\u0017\u0005e\u00171ZA\u0001\u0002\u0003\u0015\t!\u001a\u0002\u0004?\u0012\u001a\u0004c\u00012\u0002^\u0012Y\u0011q\\Af\u0003\u0003\u0005\tQ!\u0001f\u0005\ryF\u0005\u000e\u0005\t\u0003G\f9\u0002\"\u0001\u0002f\u000691/\u001a;ICNDGc\u0001\f\u0002h\"9q)!9A\u0002\u0005%\b\u0007BAv\u0003g\u0004b!!/\u0002n\u0006E\u0018\u0002BAx\u0003\u0003\u00111aU3u!\r\u0011\u00171\u001f\u0003\f\u0003k\f9/!A\u0001\u0002\u000b\u0005QMA\u0002`IU2q!!?\u0002\u0018\u0001\tYP\u0001\u0007BeJ\f\u0017\u0010S1tQ&tw-\u0006\u0003\u0002~\n%1#BA|\u0013\u0005}\b#\u0002\n\u0003\u0002\t\u0015\u0011b\u0001B\u0002\u0005\t9\u0001*Y:iS:<\u0007\u0003\u0002\u0006`\u0005\u000f\u00012A\u0019B\u0005\t)!\u0017q\u001fQ\u0001\u0002\u0003\u0015\r!\u001a\u0015\u0004\u0005\u0013Q\u0007b\u0002\b\u0002x\u0012\u0005!q\u0002\u000b\u0003\u0005#\u0001bAa\u0005\u0002x\n\u001dQBAA\f\u0011\u001dQ\u0012q\u001fC\u0001\u0005/!2A\u0006B\r\u0011\u001di&Q\u0003a\u0001\u0005\u000bA\u0001B!\b\u0002\u0018\u0011\u0005!qD\u0001\rCJ\u0014\u0018-\u001f%bg\"LgnZ\u000b\u0005\u0005C\u00119#\u0006\u0002\u0003$A1!1CA|\u0005K\u00012A\u0019B\u0014\t)!'1\u0004Q\u0001\u0002\u0003\u0015\r!\u001a\u0015\u0004\u0005OQ\u0007\u0002\u0003B\u0017\u0003/!\tAa\f\u0002\u0019\tLH/Z:ICND\u0017N\\4\u0016\u0005\tE\"#\u0002B\u001a\u0013\t]ba\u0002B\u001b\u0005W\u0001!\u0011\u0007\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0005%\t\u0005!\u000f\u0003\u0005\u0003<\u0005]A\u0011\u0001B\u001f\u00039y'\u000fZ3sK\u0012D\u0015m\u001d5j]\u001e,\"Aa\u0010\u0013\u000b\t\u0005\u0013Ba\u0011\u0007\u000f\tU\"\u0011\b\u0001\u0003@A!!C!\u0001I\u0011!\u00119%a\u0006\u0005\u0002\t%\u0013A\u00049s_\u0012,8\r\u001e%bg\"LgnZ\u000b\u0003\u0005\u0017\u0012RA!\u0014\n\u0005\u001f2qA!\u000e\u0003F\u0001\u0011Y\u0005\u0005\u0003\u0013\u0005\u0003\t\u0004\u0002\u0003B*\u0003/!\tA!\u0016\u0002\u001bM$(/\u001b8h\u0011\u0006\u001c\b.\u001b8h+\t\u00119FE\u0003\u0003Z%\u0011YFB\u0004\u00036\tE\u0003Aa\u0016\u0011\tI\u0011\ta\u000f\u0005\t\u0005?\n9\u0002\"\u0001\u0003b\u0005\u0001RO\\8sI\u0016\u0014X\r\u001a%bg\"LgnZ\u000b\u0003\u0005G\u0012RA!\u001a\n\u0005\u00072qA!\u000e\u0003^\u0001\u0011\u0019\u0007")
/* loaded from: classes3-dex2jar.jar:scala/util/hashing/MurmurHash3.class */
public class MurmurHash3 {

    /* loaded from: classes3-dex2jar.jar:scala/util/hashing/MurmurHash3$ArrayHashing.class */
    public static class ArrayHashing<T> implements Hashing<Object> {
        @Override // scala.util.hashing.Hashing
        public int hash(Object obj) {
            return MurmurHash3$.MODULE$.arrayHash(obj);
        }

        public int hash$mcB$sp(byte[] bArr) {
            return hash(bArr);
        }

        public int hash$mcC$sp(char[] cArr) {
            return hash(cArr);
        }

        public int hash$mcD$sp(double[] dArr) {
            return hash(dArr);
        }

        public int hash$mcF$sp(float[] fArr) {
            return hash(fArr);
        }

        public int hash$mcI$sp(int[] iArr) {
            return hash(iArr);
        }

        public int hash$mcJ$sp(long[] jArr) {
            return hash(jArr);
        }

        public int hash$mcS$sp(short[] sArr) {
            return hash(sArr);
        }

        public int hash$mcV$sp(BoxedUnit[] boxedUnitArr) {
            return hash(boxedUnitArr);
        }

        public int hash$mcZ$sp(boolean[] zArr) {
            return hash(zArr);
        }
    }

    public static <T> ArrayHashing<T> arrayHashing() {
        return MurmurHash3$.MODULE$.arrayHashing();
    }

    public static int arraySeed() {
        return MurmurHash3$.MODULE$.arraySeed();
    }

    private final int avalanche(int i) {
        int i2 = (i ^ (i >>> 16)) * (-2048144789);
        int i3 = (i2 ^ (i2 >>> 13)) * (-1028477387);
        return i3 ^ (i3 >>> 16);
    }

    public static Object bytesHashing() {
        return MurmurHash3$.MODULE$.bytesHashing();
    }

    public static int mapHash(Map<?, ?> map) {
        return MurmurHash3$.MODULE$.mapHash(map);
    }

    public static int mapSeed() {
        return MurmurHash3$.MODULE$.mapSeed();
    }

    public static Object orderedHashing() {
        return MurmurHash3$.MODULE$.orderedHashing();
    }

    public static Object productHashing() {
        return MurmurHash3$.MODULE$.productHashing();
    }

    public static int productSeed() {
        return MurmurHash3$.MODULE$.productSeed();
    }

    public static int seqHash(Seq<?> seq) {
        return MurmurHash3$.MODULE$.seqHash(seq);
    }

    public static int seqSeed() {
        return MurmurHash3$.MODULE$.seqSeed();
    }

    public static int setHash(Set<?> set) {
        return MurmurHash3$.MODULE$.setHash(set);
    }

    public static int setSeed() {
        return MurmurHash3$.MODULE$.setSeed();
    }

    public static Object stringHashing() {
        return MurmurHash3$.MODULE$.stringHashing();
    }

    public static int stringSeed() {
        return MurmurHash3$.MODULE$.stringSeed();
    }

    public static int symmetricSeed() {
        return MurmurHash3$.MODULE$.symmetricSeed();
    }

    public static int traversableSeed() {
        return MurmurHash3$.MODULE$.traversableSeed();
    }

    public static Object unorderedHashing() {
        return MurmurHash3$.MODULE$.unorderedHashing();
    }

    public final <T> int arrayHash(Object obj, int i) {
        for (int i2 = 0; i2 < ScalaRunTime$.MODULE$.array_length(obj); i2++) {
            i = mix(i, ScalaRunTime$.MODULE$.hash(ScalaRunTime$.MODULE$.array_apply(obj, i2)));
        }
        return finalizeHash(i, ScalaRunTime$.MODULE$.array_length(obj));
    }

    public final int arrayHash$mBc$sp(byte[] bArr, int i) {
        int i2 = i;
        for (byte b : bArr) {
            i2 = mix(i2, b);
        }
        return finalizeHash(i2, bArr.length);
    }

    public final int arrayHash$mCc$sp(char[] cArr, int i) {
        for (char c : cArr) {
            i = mix(i, c);
        }
        return finalizeHash(i, cArr.length);
    }

    public final int arrayHash$mDc$sp(double[] dArr, int i) {
        for (double d : dArr) {
            i = mix(i, ScalaRunTime$.MODULE$.hash(d));
        }
        return finalizeHash(i, dArr.length);
    }

    public final int arrayHash$mFc$sp(float[] fArr, int i) {
        int i2 = i;
        for (float f : fArr) {
            i2 = mix(i2, ScalaRunTime$.MODULE$.hash(f));
        }
        return finalizeHash(i2, fArr.length);
    }

    public final int arrayHash$mIc$sp(int[] iArr, int i) {
        int i2 = i;
        for (int i3 : iArr) {
            i2 = mix(i2, i3);
        }
        return finalizeHash(i2, iArr.length);
    }

    public final int arrayHash$mJc$sp(long[] jArr, int i) {
        for (long j : jArr) {
            i = mix(i, ScalaRunTime$.MODULE$.hash(j));
        }
        return finalizeHash(i, jArr.length);
    }

    public final int arrayHash$mSc$sp(short[] sArr, int i) {
        for (short s : sArr) {
            i = mix(i, s);
        }
        return finalizeHash(i, sArr.length);
    }

    public final int arrayHash$mVc$sp(BoxedUnit[] boxedUnitArr, int i) {
        int i2 = i;
        for (int i3 = 0; i3 < boxedUnitArr.length; i3++) {
            i2 = mix(i2, 0);
        }
        return finalizeHash(i2, boxedUnitArr.length);
    }

    public final int arrayHash$mZc$sp(boolean[] zArr, int i) {
        for (boolean z : zArr) {
            i = mix(i, z ? 1231 : 1237);
        }
        return finalizeHash(i, zArr.length);
    }

    public final int bytesHash(byte[] bArr, int i) {
        int length = bArr.length;
        int i2 = 0;
        while (length >= 4) {
            i = mix(i, (bArr[i2 + 0] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24));
            i2 += 4;
            length -= 4;
        }
        int i3 = length == 3 ? ((bArr[i2 + 2] & 255) << 16) ^ 0 : 0;
        int i4 = i3;
        if (length >= 2) {
            i4 = i3 ^ ((bArr[i2 + 1] & 255) << 8);
        }
        int i5 = i;
        if (length >= 1) {
            i5 = mixLast(i, (bArr[i2 + 0] & 255) ^ i4);
        }
        return finalizeHash(i5, bArr.length);
    }

    public final int finalizeHash(int i, int i2) {
        return avalanche(i ^ i2);
    }

    public final int listHash(List<?> list, int i) {
        int i2 = 0;
        while (!list.isEmpty()) {
            Object head = list.head();
            list = (List) list.tail();
            i = mix(i, ScalaRunTime$.MODULE$.hash(head));
            i2++;
        }
        return finalizeHash(i, i2);
    }

    public final int mix(int i, int i2) {
        return (Integer.rotateLeft(mixLast(i, i2), 13) * 5) - 430675100;
    }

    public final int mixLast(int i, int i2) {
        return i ^ (Integer.rotateLeft(i2 * (-862048943), 15) * 461845907);
    }

    public final int orderedHash(TraversableOnce<Object> traversableOnce, int i) {
        IntRef create = IntRef.create(0);
        IntRef create2 = IntRef.create(i);
        traversableOnce.foreach(new MurmurHash3$$anonfun$orderedHash$1(this, create, create2));
        return finalizeHash(create2.elem, create.elem);
    }

    public final int productHash(Product product, int i) {
        int i2;
        int productArity = product.productArity();
        if (productArity == 0) {
            i2 = product.productPrefix().hashCode();
        } else {
            int i3 = i;
            for (int i4 = 0; i4 < productArity; i4++) {
                i3 = mix(i3, ScalaRunTime$.MODULE$.hash(product.productElement(i4)));
            }
            i2 = finalizeHash(i3, productArity);
        }
        return i2;
    }

    public final int stringHash(String str, int i) {
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= str.length()) {
                break;
            }
            i = mix(i, (str.charAt(i2) << 16) + str.charAt(i3));
            i2 += 2;
        }
        int i4 = i;
        if (i2 < str.length()) {
            i4 = mixLast(i, str.charAt(i2));
        }
        return finalizeHash(i4, str.length());
    }

    public final int unorderedHash(TraversableOnce<Object> traversableOnce, int i) {
        IntRef create = IntRef.create(0);
        IntRef create2 = IntRef.create(0);
        IntRef create3 = IntRef.create(0);
        IntRef create4 = IntRef.create(1);
        traversableOnce.foreach(new MurmurHash3$$anonfun$unorderedHash$1(this, create, create2, create3, create4));
        return finalizeHash(mixLast(mix(mix(i, create.elem), create2.elem), create4.elem), create3.elem);
    }
}
