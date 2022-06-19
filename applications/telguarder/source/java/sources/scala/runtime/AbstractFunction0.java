package scala.runtime;

import scala.Function0;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001M3Q!\u0001\u0002\u0002\u0002\u001d\u0011\u0011#\u00112tiJ\f7\r\u001e$v]\u000e$\u0018n\u001c81\u0015\t\u0019A!A\u0004sk:$\u0018.\\3\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\t%M\u0019\u0001!C\u0007\u0011\u0005)YQ\"\u0001\u0003\n\u00051!!AB!osJ+g\rE\u0002\u000b\u001dAI!a\u0004\u0003\u0003\u0013\u0019+hn\u0019;j_:\u0004\u0004CA\t\u0013\u0019\u0001!\u0011b\u0005\u0001!\u0002\u0003%)\u0019\u0001\u000b\u0003\u0003I\u000b\"!\u0006\r\u0011\u0005)1\u0012BA\f\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"AC\r\n\u0005i!!aA!os\"\u001a!\u0003H\u0010\u0011\u0005)i\u0012B\u0001\u0010\u0005\u0005-\u0019\b/Z2jC2L'0\u001a32\u000b\r\u0002Si\u0012$\u0011\u0007\u0005\"sE\u0004\u0002\u000bE%\u00111\u0005B\u0001\u000e'B,7-[1mSj\f'\r\\3\n\u0005\u00152#!B$s_V\u0004(BA\u0012\u0005!-Q\u0001FK\u00171gYJDh\u0010\"\n\u0005%\"!A\u0002+va2,\u0017H\u0004\u0002\u000bW%\u0011A\u0006B\u0001\u0005\u0005f$XM\u0004\u0002\u000b]%\u0011q\u0006B\u0001\u0006'\"|'\u000f\u001e\b\u0003\u0015EJ!A\r\u0003\u0002\u0007%sGO\u0004\u0002\u000bi%\u0011Q\u0007B\u0001\u0005\u0019>twM\u0004\u0002\u000bo%\u0011\u0001\bB\u0001\u0005\u0007\"\f'O\u0004\u0002\u000bu%\u00111\bB\u0001\u0006\r2|\u0017\r\u001e\b\u0003\u0015uJ!A\u0010\u0003\u0002\r\u0011{WO\u00197f\u001d\tQ\u0001)\u0003\u0002B\t\u00059!i\\8mK\u0006tgB\u0001\u0006D\u0013\t!E!\u0001\u0003V]&$\u0018B\u0001$'\u0003)\u0001&/[7ji&4Xm]\u0019\u0006G\u0005\u0012\u0003jI\u0019\u0005I%kUA\u0004\u0002K\u001b6\t1J\u0003\u0002M\r\u00051AH]8pizJ\u0011!\u0002\u0005\u0006\u001f\u0002!\t\u0001U\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003E\u00032A\u0015\u0001\u0011\u001b\u0005\u0011\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractFunction0.class */
public abstract class AbstractFunction0<R> implements Function0<R> {
    public AbstractFunction0() {
        Function0.Cclass.$init$(this);
    }

    @Override // scala.Function0
    public byte apply$mcB$sp() {
        byte unboxToByte;
        unboxToByte = BoxesRunTime.unboxToByte(apply());
        return unboxToByte;
    }

    @Override // scala.Function0
    public char apply$mcC$sp() {
        char unboxToChar;
        unboxToChar = BoxesRunTime.unboxToChar(apply());
        return unboxToChar;
    }

    @Override // scala.Function0
    public double apply$mcD$sp() {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply());
        return unboxToDouble;
    }

    @Override // scala.Function0
    public float apply$mcF$sp() {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply());
        return unboxToFloat;
    }

    @Override // scala.Function0
    public int apply$mcI$sp() {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply());
        return unboxToInt;
    }

    @Override // scala.Function0
    public long apply$mcJ$sp() {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply());
        return unboxToLong;
    }

    @Override // scala.Function0
    public short apply$mcS$sp() {
        short unboxToShort;
        unboxToShort = BoxesRunTime.unboxToShort(apply());
        return unboxToShort;
    }

    @Override // scala.Function0
    public void apply$mcV$sp() {
        apply();
    }

    @Override // scala.Function0
    public boolean apply$mcZ$sp() {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply());
        return unboxToBoolean;
    }

    @Override // scala.Function0, scala.Proxy
    public String toString() {
        return Function0.Cclass.toString(this);
    }
}
