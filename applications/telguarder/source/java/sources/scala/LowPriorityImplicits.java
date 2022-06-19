package scala;

import scala.collection.generic.CanBuildFrom;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.IndexedSeq$;
import scala.collection.immutable.WrappedString;
import scala.collection.mutable.Builder;
import scala.collection.mutable.WrappedArray;
import scala.collection.mutable.WrappedArray$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
@ScalaSignature(bytes = "\u0006\u0001\u0005%hAB\u0001\u0003\u0003\u0003\u0011AA\u0001\u000bM_^\u0004&/[8sSRL\u0018*\u001c9mS\u000eLGo\u001d\u0006\u0002\u0007\u0005)1oY1mCN\u0011\u0001!\u0002\t\u0003\r\u001di\u0011AA\u0005\u0003\u0011\t\u0011a!\u00118z%\u00164\u0007\"\u0002\u0006\u0001\t\u0003a\u0011A\u0002\u001fj]&$hh\u0001\u0001\u0015\u00035\u0001\"A\u0002\u0001\t\u000b=\u0001A1\u0001\t\u0002\u0017\tLH/Z,sCB\u0004XM\u001d\u000b\u0003#]\u0001\"AE\u000b\u000e\u0003MQ!\u0001\u0006\u0002\u0002\u000fI,h\u000e^5nK&\u0011ac\u0005\u0002\t%&\u001c\u0007NQ=uK\")\u0001D\u0004a\u00013\u0005\t\u0001\u0010\u0005\u0002\u00075%\u00111D\u0001\u0002\u0005\u0005f$X\r\u000b\u0002\u000f;A\u0011aAH\u0005\u0003?\t\u0011a!\u001b8mS:,\u0007\"B\u0011\u0001\t\u0007\u0011\u0013\u0001D:i_J$xK]1qa\u0016\u0014HCA\u0012'!\t\u0011B%\u0003\u0002&'\tI!+[2i'\"|'\u000f\u001e\u0005\u00061\u0001\u0002\ra\n\t\u0003\r!J!!\u000b\u0002\u0003\u000bMCwN\u001d;)\u0005\u0001j\u0002\"\u0002\u0017\u0001\t\u0007i\u0013AC5oi^\u0013\u0018\r\u001d9feR\u0011a&\r\t\u0003%=J!\u0001M\n\u0003\u000fIK7\r[%oi\")\u0001d\u000ba\u0001eA\u0011aaM\u0005\u0003i\t\u00111!\u00138uQ\tYS\u0004C\u00038\u0001\u0011\r\u0001(A\u0006dQ\u0006\u0014xK]1qa\u0016\u0014HCA\u001d=!\t\u0011\"(\u0003\u0002<'\tA!+[2i\u0007\"\f'\u000fC\u0003>m\u0001\u0007a(A\u0001d!\t1q(\u0003\u0002A\u0005\t!1\t[1sQ\t1T\u0004C\u0003D\u0001\u0011\rA)A\u0006m_:<wK]1qa\u0016\u0014HCA#I!\t\u0011b)\u0003\u0002H'\tA!+[2i\u0019>tw\rC\u0003\u0019\u0005\u0002\u0007\u0011\n\u0005\u0002\u0007\u0015&\u00111J\u0001\u0002\u0005\u0019>tw\r\u000b\u0002C;!)a\n\u0001C\u0002\u001f\u0006aa\r\\8bi^\u0013\u0018\r\u001d9feR\u0011\u0001k\u0015\t\u0003%EK!AU\n\u0003\u0013IK7\r\u001b$m_\u0006$\b\"\u0002\rN\u0001\u0004!\u0006C\u0001\u0004V\u0013\t1&AA\u0003GY>\fG\u000f\u000b\u0002N;!)\u0011\f\u0001C\u00025\u0006iAm\\;cY\u0016<&/\u00199qKJ$\"a\u00170\u0011\u0005Ia\u0016BA/\u0014\u0005)\u0011\u0016n\u00195E_V\u0014G.\u001a\u0005\u00061a\u0003\ra\u0018\t\u0003\r\u0001L!!\u0019\u0002\u0003\r\u0011{WO\u00197fQ\tAV\u0004C\u0003e\u0001\u0011\rQ-\u0001\bc_>dW-\u00198Xe\u0006\u0004\b/\u001a:\u0015\u0005\u0019L\u0007C\u0001\nh\u0013\tA7CA\u0006SS\u000eD'i\\8mK\u0006t\u0007\"\u0002\rd\u0001\u0004Q\u0007C\u0001\u0004l\u0013\ta'AA\u0004C_>dW-\u00198)\u0005\rl\u0002\"B8\u0001\t\u0007\u0001\u0018\u0001E4f]\u0016\u0014\u0018nY,sCB\f%O]1z+\t\tH\u0010F\u0002s\u0003\u0017\u00012a\u001d={\u001b\u0005!(BA;w\u0003\u001diW\u000f^1cY\u0016T!a\u001e\u0002\u0002\u0015\r|G\u000e\\3di&|g.\u0003\u0002zi\naqK]1qa\u0016$\u0017I\u001d:bsB\u00111\u0010 \u0007\u0001\t\u0015ihN1\u0001\u007f\u0005\u0005!\u0016cA@\u0002\u0006A\u0019a!!\u0001\n\u0007\u0005\r!AA\u0004O_RD\u0017N\\4\u0011\u0007\u0019\t9!C\u0002\u0002\n\t\u00111!\u00118z\u0011\u001d\tiA\u001ca\u0001\u0003\u001f\t!\u0001_:\u0011\t\u0019\t\tB_\u0005\u0004\u0003'\u0011!!B!se\u0006L\bbBA\f\u0001\u0011\r\u0011\u0011D\u0001\roJ\f\u0007OU3g\u0003J\u0014\u0018-_\u000b\u0005\u00037\t\t\u0003\u0006\u0003\u0002\u001e\u0005\u0015\u0002\u0003B:y\u0003?\u00012a_A\u0011\t\u001di\u0018Q\u0003b\u0001\u0003G\t\"a`\u0003\t\u0011\u00055\u0011Q\u0003a\u0001\u0003O\u0001RABA\t\u0003?Aq!a\u000b\u0001\t\u0007\ti#\u0001\u0007xe\u0006\u0004\u0018J\u001c;BeJ\f\u0017\u0010\u0006\u0003\u00020\u0005E\u0002cA:ye!A\u0011QBA\u0015\u0001\u0004\t\u0019\u0004\u0005\u0003\u0007\u0003#\u0011\u0004bBA\u001c\u0001\u0011\r\u0011\u0011H\u0001\u0010oJ\f\u0007\u000fR8vE2,\u0017I\u001d:bsR!\u00111HA\u001f!\r\u0019\bp\u0018\u0005\t\u0003\u001b\t)\u00041\u0001\u0002@A!a!!\u0005`\u0011\u001d\t\u0019\u0005\u0001C\u0002\u0003\u000b\nQb\u001e:ba2{gnZ!se\u0006LH\u0003BA$\u0003\u0013\u00022a\u001d=J\u0011!\ti!!\u0011A\u0002\u0005-\u0003\u0003\u0002\u0004\u0002\u0012%Cq!a\u0014\u0001\t\u0007\t\t&\u0001\bxe\u0006\u0004h\t\\8bi\u0006\u0013(/Y=\u0015\t\u0005M\u0013Q\u000b\t\u0004gb$\u0006\u0002CA\u0007\u0003\u001b\u0002\r!a\u0016\u0011\t\u0019\t\t\u0002\u0016\u0005\b\u00037\u0002A1AA/\u000359(/\u00199DQ\u0006\u0014\u0018I\u001d:bsR!\u0011qLA1!\r\u0019\bP\u0010\u0005\t\u0003\u001b\tI\u00061\u0001\u0002dA!a!!\u0005?\u0011\u001d\t9\u0007\u0001C\u0002\u0003S\nQb\u001e:ba\nKH/Z!se\u0006LH\u0003BA6\u0003[\u00022a\u001d=\u001a\u0011!\ti!!\u001aA\u0002\u0005=\u0004\u0003\u0002\u0004\u0002\u0012eAq!a\u001d\u0001\t\u0007\t)(\u0001\bxe\u0006\u00048\u000b[8si\u0006\u0013(/Y=\u0015\t\u0005]\u0014\u0011\u0010\t\u0004gb<\u0003\u0002CA\u0007\u0003c\u0002\r!a\u001f\u0011\t\u0019\t\tb\n\u0005\b\u0003\u007f\u0002A1AAA\u0003A9(/\u00199C_>dW-\u00198BeJ\f\u0017\u0010\u0006\u0003\u0002\u0004\u0006\u0015\u0005cA:yU\"A\u0011QBA?\u0001\u0004\t9\t\u0005\u0003\u0007\u0003#Q\u0007bBAF\u0001\u0011\r\u0011QR\u0001\u000eoJ\f\u0007/\u00168ji\u0006\u0013(/Y=\u0015\t\u0005=\u0015q\u0013\t\u0005gb\f\t\nE\u0002\u0007\u0003'K1!!&\u0003\u0005\u0011)f.\u001b;\t\u0011\u00055\u0011\u0011\u0012a\u0001\u00033\u0003RABA\t\u0003#Cq!!(\u0001\t\u0007\ty*\u0001\u0006xe\u0006\u00048\u000b\u001e:j]\u001e$B!!)\u0002.B!\u00111UAU\u001b\t\t)KC\u0002\u0002(Z\f\u0011\"[7nkR\f'\r\\3\n\t\u0005-\u0016Q\u0015\u0002\u000e/J\f\u0007\u000f]3e'R\u0014\u0018N\\4\t\u0011\u0005=\u00161\u0014a\u0001\u0003c\u000b\u0011a\u001d\t\u0005\u0003g\u000bi,\u0004\u0002\u00026*!\u0011qWA]\u0003\u0011a\u0017M\\4\u000b\u0005\u0005m\u0016\u0001\u00026bm\u0006LA!a0\u00026\n11\u000b\u001e:j]\u001eDq!a1\u0001\t\u0007\t)-\u0001\u0007v]^\u0014\u0018\r]*ue&tw\r\u0006\u0003\u00022\u0006\u001d\u0007\u0002CAe\u0003\u0003\u0004\r!!)\u0002\u0005]\u001c\bbBAg\u0001\u0011\r\u0011qZ\u0001\u001bM\u0006dGNY1dWN#(/\u001b8h\u0007\u0006t')^5mI\u001a\u0013x.\\\u000b\u0005\u0003#\f\t/\u0006\u0002\u0002TBQ\u0011Q[An\u0003c\u000by.a9\u000e\u0005\u0005]'bAAmm\u00069q-\u001a8fe&\u001c\u0017\u0002BAo\u0003/\u0014AbQ1o\u0005VLG\u000e\u001a$s_6\u00042a_Aq\t\u0019i\u00181\u001ab\u0001}B1\u00111UAs\u0003?LA!a:\u0002&\nQ\u0011J\u001c3fq\u0016$7+Z9")
/* loaded from: classes3-dex2jar.jar:scala/LowPriorityImplicits.class */
public abstract class LowPriorityImplicits {
    public boolean booleanWrapper(boolean z) {
        return z;
    }

    public byte byteWrapper(byte b) {
        return b;
    }

    public char charWrapper(char c) {
        return c;
    }

    public double doubleWrapper(double d) {
        return d;
    }

    public <T> CanBuildFrom<String, T, IndexedSeq<T>> fallbackStringCanBuildFrom() {
        return new CanBuildFrom<String, T, IndexedSeq<T>>(this) { // from class: scala.LowPriorityImplicits$$anon$4
            @Override // scala.collection.generic.CanBuildFrom
            public Builder<T, IndexedSeq<T>> apply() {
                return IndexedSeq$.MODULE$.newBuilder();
            }

            public Builder<T, IndexedSeq<T>> apply(String str) {
                return IndexedSeq$.MODULE$.newBuilder();
            }
        };
    }

    public float floatWrapper(float f) {
        return f;
    }

    public <T> WrappedArray<T> genericWrapArray(Object obj) {
        return obj == null ? null : WrappedArray$.MODULE$.make(obj);
    }

    public int intWrapper(int i) {
        return i;
    }

    public long longWrapper(long j) {
        return j;
    }

    public short shortWrapper(short s) {
        return s;
    }

    public String unwrapString(WrappedString wrappedString) {
        return wrappedString != null ? wrappedString.self() : null;
    }

    public WrappedArray<Object> wrapBooleanArray(boolean[] zArr) {
        return zArr != null ? new WrappedArray.ofBoolean(zArr) : null;
    }

    public WrappedArray<Object> wrapByteArray(byte[] bArr) {
        return bArr != null ? new WrappedArray.ofByte(bArr) : null;
    }

    public WrappedArray<Object> wrapCharArray(char[] cArr) {
        return cArr != null ? new WrappedArray.ofChar(cArr) : null;
    }

    public WrappedArray<Object> wrapDoubleArray(double[] dArr) {
        return dArr != null ? new WrappedArray.ofDouble(dArr) : null;
    }

    public WrappedArray<Object> wrapFloatArray(float[] fArr) {
        return fArr != null ? new WrappedArray.ofFloat(fArr) : null;
    }

    public WrappedArray<Object> wrapIntArray(int[] iArr) {
        return iArr != null ? new WrappedArray.ofInt(iArr) : null;
    }

    public WrappedArray<Object> wrapLongArray(long[] jArr) {
        return jArr != null ? new WrappedArray.ofLong(jArr) : null;
    }

    public <T> WrappedArray<T> wrapRefArray(T[] tArr) {
        return tArr == null ? null : tArr.length == 0 ? WrappedArray$.MODULE$.empty() : new WrappedArray.ofRef(tArr);
    }

    public WrappedArray<Object> wrapShortArray(short[] sArr) {
        return sArr != null ? new WrappedArray.ofShort(sArr) : null;
    }

    public WrappedString wrapString(String str) {
        return str != null ? new WrappedString(str) : null;
    }

    public WrappedArray<BoxedUnit> wrapUnitArray(BoxedUnit[] boxedUnitArr) {
        return boxedUnitArr != null ? new WrappedArray.ofUnit(boxedUnitArr) : null;
    }
}
