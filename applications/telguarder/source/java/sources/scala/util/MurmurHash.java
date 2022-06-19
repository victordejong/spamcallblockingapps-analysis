package scala.util;

import scala.Function1;
import scala.collection.TraversableOnce;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\t%c\u0001B\u0001\u0003\u0001\u001d\u0011!\"T;s[V\u0014\b*Y:i\u0015\t\u0019A!\u0001\u0003vi&d'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011\u0001BE\n\u0004\u0001%i\u0001C\u0001\u0006\f\u001b\u0005!\u0011B\u0001\u0007\u0005\u0005\u0019\te.\u001f*fMB!!B\u0004\t0\u0013\tyAAA\u0005Gk:\u001cG/[8ocA\u0011\u0011C\u0005\u0007\u0001\t%\u0019\u0002\u0001)A\u0001\u0002\u000b\u0007ACA\u0001U#\t)\u0002\u0004\u0005\u0002\u000b-%\u0011q\u0003\u0002\u0002\b\u001d>$\b.\u001b8h!\tQ\u0011$\u0003\u0002\u001b\t\t\u0019\u0011I\\=)\rIardI\u0014,!\tQQ$\u0003\u0002\u001f\t\tY1\u000f]3dS\u0006d\u0017N_3ec\u0011!\u0003%\t\u0012\u000f\u0005)\t\u0013B\u0001\u0012\u0005\u0003\rIe\u000e^\u0019\u0005I\u0011*cE\u0004\u0002\u000bK%\u0011a\u0005B\u0001\u0005\u0019>tw-\r\u0003%Q%RcB\u0001\u0006*\u0013\tQC!A\u0003GY>\fG/\r\u0003%Y5rcB\u0001\u0006.\u0013\tqC!\u0001\u0004E_V\u0014G.\u001a\t\u0003\u0015AJ!!\r\u0003\u0003\tUs\u0017\u000e\u001e\u0005\tg\u0001\u0011\t\u0011)A\u0005i\u0005!1/Z3e!\tQQ'\u0003\u00027\t\t\u0019\u0011J\u001c;\t\u000ba\u0002A\u0011A\u001d\u0002\rqJg.\u001b;?)\tQD\bE\u0002<\u0001Ai\u0011A\u0001\u0005\u0006g]\u0002\r\u0001\u000e\u0005\b}\u0001\u0001\r\u0011\"\u0003@\u0003\u0005AW#\u0001\u001b\t\u000f\u0005\u0003\u0001\u0019!C\u0005\u0005\u0006)\u0001n\u0018\u0013fcR\u0011qf\u0011\u0005\b\t\u0002\u000b\t\u00111\u00015\u0003\rAH%\r\u0005\u0007\r\u0002\u0001\u000b\u0015\u0002\u001b\u0002\u0005!\u0004\u0003b\u0002%\u0001\u0001\u0004%IaP\u0001\u0002G\"9!\n\u0001a\u0001\n\u0013Y\u0015!B2`I\u0015\fHCA\u0018M\u0011\u001d!\u0015*!AA\u0002QBaA\u0014\u0001!B\u0013!\u0014AA2!\u0011\u001d\u0001\u0006\u00011A\u0005\n}\n\u0011a\u001b\u0005\b%\u0002\u0001\r\u0011\"\u0003T\u0003\u0015Yw\fJ3r)\tyC\u000bC\u0004E#\u0006\u0005\t\u0019\u0001\u001b\t\rY\u0003\u0001\u0015)\u00035\u0003\tY\u0007\u0005C\u0004Y\u0001\u0001\u0007I\u0011B-\u0002\r!\f7\u000f[3e+\u0005Q\u0006C\u0001\u0006\\\u0013\taFAA\u0004C_>dW-\u00198\t\u000fy\u0003\u0001\u0019!C\u0005?\u0006Q\u0001.Y:iK\u0012|F%Z9\u0015\u0005=\u0002\u0007b\u0002#^\u0003\u0003\u0005\rA\u0017\u0005\u0007E\u0002\u0001\u000b\u0015\u0002.\u0002\u000f!\f7\u000f[3eA!9A\r\u0001a\u0001\n\u0013y\u0014!\u00035bg\"4\u0018\r\\;f\u0011\u001d1\u0007\u00011A\u0005\n\u001d\fQ\u0002[1tQZ\fG.^3`I\u0015\fHCA\u0018i\u0011\u001d!U-!AA\u0002QBaA\u001b\u0001!B\u0013!\u0014A\u00035bg\"4\u0018\r\\;fA!)A\u000e\u0001C\u0001[\u0006)!/Z:fiR\tq\u0006C\u0003p\u0001\u0011\u0005\u0001/A\u0003baBd\u0017\u0010\u0006\u00020c\")!O\u001ca\u0001!\u0005\tA\u000fC\u0003u\u0001\u0011\u0005Q/\u0001\u0004baB,g\u000e\u001a\u000b\u0003_YDQa^:A\u0002Q\n\u0011!\u001b\u0005\u0006s\u0002!\taP\u0001\u0005Q\u0006\u001c\b\u000eC\u0003|\u0001\u0011\u0005C0\u0001\u0005iCND7i\u001c3f)\u0005!\u0004F\u0002\u0001\u007f\u0003\u0007\t9\u0001\u0005\u0002\u000b\u007f&\u0019\u0011\u0011\u0001\u0003\u0003\u0015\u0011,\u0007O]3dCR,G-\t\u0002\u0002\u0006\u0005\u0019Sk]3!i\",\u0007e\u001c2kK\u000e$\b%T;s[V\u0014\b*Y:ig\u0001Jgn\u001d;fC\u0012t\u0013EAA\u0005\u0003\u0019\u0011d&\r\u0019/a\u001d9\u0011Q\u0002\u0002\t\u0002\u0005=\u0011AC've6,(\u000fS1tQB\u00191(!\u0005\u0007\r\u0005\u0011\u0001\u0012AA\n'\r\t\t\"\u0003\u0005\bq\u0005EA\u0011AA\f)\t\ty\u0001\u0003\u0006\u0002\u001c\u0005E!\u0019!C\u0007\u0003;\tAB^5tS\ndW-T1hS\u000e,\"!a\b\u0010\u0005\u0005\u0005R\u0004BL\u001f'mD\u0011\"!\n\u0002\u0012\u0001\u0006i!a\b\u0002\u001bYL7/\u001b2mK6\u000bw-[2!\u0011)\tI#!\u0005C\u0002\u00135\u00111F\u0001\rQ&$G-\u001a8NC\u001eL7-Q\u000b\u0003\u0003[y!!a\f\u001e\tU%vg\"\u0005\n\u0003g\t\t\u0002)A\u0007\u0003[\tQ\u0002[5eI\u0016tW*Y4jG\u0006\u0003\u0003BCA\u001c\u0003#\u0011\r\u0011\"\u0004\u0002:\u0005a\u0001.\u001b3eK:l\u0015mZ5d\u0005V\u0011\u00111H\b\u0003\u0003{iBAKllL!I\u0011\u0011IA\tA\u00035\u00111H\u0001\u000eQ&$G-\u001a8NC\u001eL7M\u0011\u0011\t\u0015\u0005\u0015\u0013\u0011\u0003b\u0001\n\u001b\t9%\u0001\u0007wSNL'\r\\3NSb,'/\u0006\u0002\u0002J=\u0011\u00111J\u000f\u0005%r?\u001f\u0006C\u0005\u0002P\u0005E\u0001\u0015!\u0004\u0002J\u0005ia/[:jE2,W*\u001b=fe\u0002B!\"a\u0015\u0002\u0012\t\u0007IQBA+\u00031A\u0017\u000e\u001a3f]6K\u00070\u001a:B+\t\t9f\u0004\u0002\u0002Zu!10`\u000b\u001d\u0012%\ti&!\u0005!\u0002\u001b\t9&A\u0007iS\u0012$WM\\'jq\u0016\u0014\u0018\t\t\u0005\u000b\u0003C\n\tB1A\u0005\u000e\u0005\r\u0014\u0001\u00045jI\u0012,g.T5yKJ\u0014UCAA3\u001f\t\t9'\b\u0003l\u001d\u00104\n\"CA6\u0003#\u0001\u000bQBA3\u00035A\u0017\u000e\u001a3f]6K\u00070\u001a:CA!Q\u0011qNA\t\u0005\u0004%i!!\u001d\u0002\u0017\u0019Lg.\u00197NSb,'/M\u000b\u0003\u0003gz!!!\u001e\u001e\t\u0015]/z\u001b\u0005\n\u0003s\n\t\u0002)A\u0007\u0003g\nABZ5oC2l\u0015\u000e_3sc\u0001B!\"! \u0002\u0012\t\u0007IQBA@\u0003-1\u0017N\\1m\u001b&DXM\u001d\u001a\u0016\u0005\u0005\u0005uBAAB;\u0011\u0011-Wl\u001b\t\u0013\u0005\u001d\u0015\u0011\u0003Q\u0001\u000e\u0005\u0005\u0015\u0001\u00044j]\u0006dW*\u001b=feJ\u0002\u0003BCAF\u0003#\u0011\r\u0011\"\u0004\u0002\u000e\u0006Q1/Z3e'R\u0014\u0018N\\4\u0016\u0005\u0005=uBAAI;\u001190z j\t\u0013\u0005U\u0015\u0011\u0003Q\u0001\u000e\u0005=\u0015aC:fK\u0012\u001cFO]5oO\u0002B!\"!'\u0002\u0012\t\u0007IQBAN\u0003%\u0019X-\u001a3BeJ\f\u00170\u0006\u0002\u0002\u001e>\u0011\u0011qT\u000f\u0005y\u001dQ\u0015\rC\u0005\u0002$\u0006E\u0001\u0015!\u0004\u0002\u001e\u0006Q1/Z3e\u0003J\u0014\u0018-\u001f\u0011\t\u0015\u0005\u001d\u0016\u0011\u0003b\u0001\n\u0003\tI+\u0001\u0007ti>\u0014X\rZ'bO&\u001c\u0017)\u0006\u0002\u0002,B!!\"!,5\u0013\r\ty\u000b\u0002\u0002\u0006\u0003J\u0014\u0018-\u001f\u0005\n\u0003g\u000b\t\u0002)A\u0005\u0003W\u000bQb\u001d;pe\u0016$W*Y4jG\u0006\u0003\u0003BCA\\\u0003#\u0011\r\u0011\"\u0001\u0002*\u0006a1\u000f^8sK\u0012l\u0015mZ5d\u0005\"I\u00111XA\tA\u0003%\u00111V\u0001\u000egR|'/\u001a3NC\u001eL7M\u0011\u0011\t\u0011\u0005}\u0016\u0011\u0003C\u0001\u0003\u0003\f\u0011b\u001d;beRD\u0015m\u001d5\u0015\u0007Q\n\u0019\r\u0003\u00044\u0003{\u0003\r\u0001\u000e\u0005\b\u0003\u000f\f\t\u0002\"\u0001@\u0003-\u0019H/\u0019:u\u001b\u0006<\u0017nY!\t\u000f\u0005-\u0017\u0011\u0003C\u0001\u007f\u0005Y1\u000f^1si6\u000bw-[2C\u0011!\ty-!\u0005\u0005\u0002\u0005E\u0017AC3yi\u0016tG\rS1tQRIA'a5\u0002V\u0006e\u0017Q\u001c\u0005\u0007s\u00065\u0007\u0019\u0001\u001b\t\u000f\u0005]\u0017Q\u001aa\u0001i\u0005)a/\u00197vK\"9\u00111\\Ag\u0001\u0004!\u0014AB7bO&\u001c\u0017\tC\u0004\u0002`\u00065\u0007\u0019\u0001\u001b\u0002\r5\fw-[2C\u0011!\t\u0019/!\u0005\u0005\u0002\u0005\u0015\u0018A\u00038fqRl\u0015mZ5d\u0003R\u0019A'a:\t\u000f\u0005m\u0017\u0011\u001da\u0001i!A\u00111^A\t\t\u0003\ti/\u0001\u0006oKb$X*Y4jG\n#2\u0001NAx\u0011\u001d\ty.!;A\u0002QB\u0001\"a=\u0002\u0012\u0011\u0005\u0011Q_\u0001\rM&t\u0017\r\\5{K\"\u000b7\u000f\u001b\u000b\u0004i\u0005]\bBB=\u0002r\u0002\u0007A\u0007\u0003\u0005\u0002|\u0006EA\u0011AA\u007f\u0003%\t'O]1z\u0011\u0006\u001c\b.\u0006\u0003\u0002��\n%Ac\u0001\u001b\u0003\u0002!A!1AA}\u0001\u0004\u0011)!A\u0001b!\u0015Q\u0011Q\u0016B\u0004!\r\t\"\u0011\u0002\u0003\u000b'\u0005e\b\u0015!A\u0001\u0006\u0004!\u0002f\u0001B\u00059!A!qBA\t\t\u0003\u0011\t\"\u0001\u0006tiJLgn\u001a%bg\"$2\u0001\u000eB\n\u0011!\u0011)B!\u0004A\u0002\t]\u0011!A:\u0011\t\te!q\u0004\b\u0004\u0015\tm\u0011b\u0001B\u000f\t\u00051\u0001K]3eK\u001aLAA!\t\u0003$\t11\u000b\u001e:j]\u001eT1A!\b\u0005\u0011!\u00119#!\u0005\u0005\u0002\t%\u0012!D:z[6,GO]5d\u0011\u0006\u001c\b.\u0006\u0003\u0003,\t}B#\u0002\u001b\u0003.\t\u0005\u0003\u0002\u0003B\u0018\u0005K\u0001\rA!\r\u0002\u0005a\u001c\bC\u0002B\u001a\u0005s\u0011i$\u0004\u0002\u00036)\u0019!q\u0007\u0003\u0002\u0015\r|G\u000e\\3di&|g.\u0003\u0003\u0003<\tU\"a\u0004+sCZ,'o]1cY\u0016|enY3\u0011\u0007E\u0011y\u0004\u0002\u0004\u0014\u0005K\u0011\r\u0001\u0006\u0005\u0007g\t\u0015\u0002\u0019\u0001\u001b)\u000f\u0005Ea0a\u0001\u0002\b!:\u0011\u0011\u0003@\u0002\u0004\u0005\u001d\u0001fBA\u0006}\u0006\r\u0011q\u0001")
/* loaded from: classes3-dex2jar.jar:scala/util/MurmurHash.class */
public class MurmurHash<T> implements Function1<T, BoxedUnit> {
    private int scala$util$MurmurHash$$h;
    private final int seed;
    private int scala$util$MurmurHash$$c = -1789642873;
    private int scala$util$MurmurHash$$k = 718793509;
    private boolean scala$util$MurmurHash$$hashed = false;
    private int hashvalue = scala$util$MurmurHash$$h();

    public MurmurHash(int i) {
        this.seed = i;
        Function1.Cclass.$init$(this);
        this.scala$util$MurmurHash$$h = MurmurHash$.MODULE$.startHash(i);
    }

    public static <T> int arrayHash(Object obj) {
        return MurmurHash$.MODULE$.arrayHash(obj);
    }

    public static int extendHash(int i, int i2, int i3, int i4) {
        return MurmurHash$.MODULE$.extendHash(i, i2, i3, i4);
    }

    public static int finalizeHash(int i) {
        return MurmurHash$.MODULE$.finalizeHash(i);
    }

    private int hashvalue() {
        return this.hashvalue;
    }

    private void hashvalue_$eq(int i) {
        this.hashvalue = i;
    }

    public static int nextMagicA(int i) {
        return MurmurHash$.MODULE$.nextMagicA(i);
    }

    public static int nextMagicB(int i) {
        return MurmurHash$.MODULE$.nextMagicB(i);
    }

    private boolean scala$util$MurmurHash$$hashed() {
        return this.scala$util$MurmurHash$$hashed;
    }

    public static int startHash(int i) {
        return MurmurHash$.MODULE$.startHash(i);
    }

    public static int startMagicA() {
        return MurmurHash$.MODULE$.startMagicA();
    }

    public static int startMagicB() {
        return MurmurHash$.MODULE$.startMagicB();
    }

    public static int[] storedMagicA() {
        return MurmurHash$.MODULE$.storedMagicA();
    }

    public static int[] storedMagicB() {
        return MurmurHash$.MODULE$.storedMagicB();
    }

    public static int stringHash(String str) {
        return MurmurHash$.MODULE$.stringHash(str);
    }

    public static <T> int symmetricHash(TraversableOnce<T> traversableOnce, int i) {
        return MurmurHash$.MODULE$.symmetricHash(traversableOnce, i);
    }

    @Override // scala.Function1
    public <A> Function1<T, A> andThen(Function1<BoxedUnit, A> function1) {
        return Function1.Cclass.andThen(this, function1);
    }

    public void append(int i) {
        scala$util$MurmurHash$$h_$eq(MurmurHash$.MODULE$.extendHash(scala$util$MurmurHash$$h(), i, scala$util$MurmurHash$$c(), scala$util$MurmurHash$$k()));
        scala$util$MurmurHash$$c_$eq(MurmurHash$.MODULE$.nextMagicA(scala$util$MurmurHash$$c()));
        scala$util$MurmurHash$$k_$eq(MurmurHash$.MODULE$.nextMagicB(scala$util$MurmurHash$$k()));
        scala$util$MurmurHash$$hashed_$eq(false);
    }

    @Override // scala.Function1
    /* renamed from: apply */
    public void apply2(T t) {
        scala$util$MurmurHash$$h_$eq(MurmurHash$.MODULE$.extendHash(scala$util$MurmurHash$$h(), ScalaRunTime$.MODULE$.hash(t), scala$util$MurmurHash$$c(), scala$util$MurmurHash$$k()));
        scala$util$MurmurHash$$c_$eq(MurmurHash$.MODULE$.nextMagicA(scala$util$MurmurHash$$c()));
        scala$util$MurmurHash$$k_$eq(MurmurHash$.MODULE$.nextMagicB(scala$util$MurmurHash$$k()));
        scala$util$MurmurHash$$hashed_$eq(false);
    }

    public void apply$mcD$sp(double d) {
        apply2((MurmurHash<T>) BoxesRunTime.boxToDouble(d));
    }

    @Override // scala.Function1
    public double apply$mcDD$sp(double d) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((MurmurHash<T>) BoxesRunTime.boxToDouble(d)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDF$sp(float f) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((MurmurHash<T>) BoxesRunTime.boxToFloat(f)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDI$sp(int i) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((MurmurHash<T>) BoxesRunTime.boxToInteger(i)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDJ$sp(long j) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((MurmurHash<T>) BoxesRunTime.boxToLong(j)));
        return unboxToDouble;
    }

    public void apply$mcF$sp(float f) {
        apply2((MurmurHash<T>) BoxesRunTime.boxToFloat(f));
    }

    @Override // scala.Function1
    public float apply$mcFD$sp(double d) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((MurmurHash<T>) BoxesRunTime.boxToDouble(d)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFF$sp(float f) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((MurmurHash<T>) BoxesRunTime.boxToFloat(f)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFI$sp(int i) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((MurmurHash<T>) BoxesRunTime.boxToInteger(i)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFJ$sp(long j) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((MurmurHash<T>) BoxesRunTime.boxToLong(j)));
        return unboxToFloat;
    }

    public void apply$mcI$sp(int i) {
        apply2((MurmurHash<T>) BoxesRunTime.boxToInteger(i));
    }

    @Override // scala.Function1
    public int apply$mcID$sp(double d) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((MurmurHash<T>) BoxesRunTime.boxToDouble(d)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcIF$sp(float f) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((MurmurHash<T>) BoxesRunTime.boxToFloat(f)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcII$sp(int i) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((MurmurHash<T>) BoxesRunTime.boxToInteger(i)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcIJ$sp(long j) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((MurmurHash<T>) BoxesRunTime.boxToLong(j)));
        return unboxToInt;
    }

    public void apply$mcJ$sp(long j) {
        apply2((MurmurHash<T>) BoxesRunTime.boxToLong(j));
    }

    @Override // scala.Function1
    public long apply$mcJD$sp(double d) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((MurmurHash<T>) BoxesRunTime.boxToDouble(d)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJF$sp(float f) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((MurmurHash<T>) BoxesRunTime.boxToFloat(f)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJI$sp(int i) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((MurmurHash<T>) BoxesRunTime.boxToInteger(i)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJJ$sp(long j) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((MurmurHash<T>) BoxesRunTime.boxToLong(j)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public void apply$mcVD$sp(double d) {
        apply((MurmurHash<T>) BoxesRunTime.boxToDouble(d));
    }

    @Override // scala.Function1
    public void apply$mcVF$sp(float f) {
        apply((MurmurHash<T>) BoxesRunTime.boxToFloat(f));
    }

    @Override // scala.Function1
    public void apply$mcVI$sp(int i) {
        apply((MurmurHash<T>) BoxesRunTime.boxToInteger(i));
    }

    @Override // scala.Function1
    public void apply$mcVJ$sp(long j) {
        apply((MurmurHash<T>) BoxesRunTime.boxToLong(j));
    }

    @Override // scala.Function1
    public boolean apply$mcZD$sp(double d) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((MurmurHash<T>) BoxesRunTime.boxToDouble(d)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZF$sp(float f) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((MurmurHash<T>) BoxesRunTime.boxToFloat(f)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZI$sp(int i) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((MurmurHash<T>) BoxesRunTime.boxToInteger(i)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZJ$sp(long j) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((MurmurHash<T>) BoxesRunTime.boxToLong(j)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public <A> Function1<A, BoxedUnit> compose(Function1<A, T> function1) {
        return Function1.Cclass.compose(this, function1);
    }

    public int hash() {
        if (!scala$util$MurmurHash$$hashed()) {
            hashvalue_$eq(MurmurHash$.MODULE$.finalizeHash(scala$util$MurmurHash$$h()));
            scala$util$MurmurHash$$hashed_$eq(true);
        }
        return hashvalue();
    }

    public int hashCode() {
        return hash();
    }

    public void reset() {
        scala$util$MurmurHash$$h_$eq(MurmurHash$.MODULE$.startHash(this.seed));
        scala$util$MurmurHash$$c_$eq(-1789642873);
        scala$util$MurmurHash$$k_$eq(718793509);
        scala$util$MurmurHash$$hashed_$eq(false);
    }

    public int scala$util$MurmurHash$$c() {
        return this.scala$util$MurmurHash$$c;
    }

    public void scala$util$MurmurHash$$c_$eq(int i) {
        this.scala$util$MurmurHash$$c = i;
    }

    public int scala$util$MurmurHash$$h() {
        return this.scala$util$MurmurHash$$h;
    }

    public void scala$util$MurmurHash$$h_$eq(int i) {
        this.scala$util$MurmurHash$$h = i;
    }

    public void scala$util$MurmurHash$$hashed_$eq(boolean z) {
        this.scala$util$MurmurHash$$hashed = z;
    }

    public int scala$util$MurmurHash$$k() {
        return this.scala$util$MurmurHash$$k;
    }

    public void scala$util$MurmurHash$$k_$eq(int i) {
        this.scala$util$MurmurHash$$k = i;
    }

    @Override // scala.Function1
    public String toString() {
        return Function1.Cclass.toString(this);
    }
}
