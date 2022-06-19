package scala.collection;

import scala.collection.generic.GenericTraversableTemplate;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.StringBuilder;
import scala.reflect.ScalaSignature;
import scala.runtime.BooleanRef;
@ScalaSignature(bytes = "\u0006\u0001A3\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005q!\u0013\u0002\r-&,w/T6TiJLgn\u001a\u0006\u0003\u0007\u0011\t!bY8mY\u0016\u001cG/[8o\u0015\u0005)\u0011!B:dC2\f7\u0001A\u000b\u0003\u0011q\u0019\"\u0001A\u0005\u0011\u0005)YQ\"\u0001\u0003\n\u00051!!AB!osJ+g\rC\u0003\u000f\u0001\u0011\u0005q\"\u0001\u0004%S:LG\u000f\n\u000b\u0002!A\u0011!\"E\u0005\u0003%\u0011\u0011A!\u00168ji\"1A\u0003\u0001Q\u0005\u0012U\tq\u0001\u001e5jgN+\u0017/F\u0001\u0017!\r9\u0002DG\u0007\u0002\u0005%\u0011\u0011D\u0001\u0002\u0004'\u0016\f\bCA\u000e\u001d\u0019\u0001!a!\b\u0001\u0005\u0006\u0004q\"!A!\u0012\u0005}\u0011\u0003C\u0001\u0006!\u0013\t\tCAA\u0004O_RD\u0017N\\4\u0011\u0005)\u0019\u0013B\u0001\u0013\u0005\u0005\r\te.\u001f\u0005\u0006M\u0001!\teJ\u0001\t[.\u001cFO]5oOV\t\u0001\u0006\u0005\u0002*Y9\u0011!BK\u0005\u0003W\u0011\ta\u0001\u0015:fI\u00164\u0017BA\u0017/\u0005\u0019\u0019FO]5oO*\u00111\u0006\u0002\u0005\u0006M\u0001!\t\u0005\r\u000b\u0003QEBQAM\u0018A\u0002!\n1a]3q\u0011\u00151\u0003\u0001\"\u00115)\u0011ASg\u000e\u001d\t\u000bY\u001a\u0004\u0019\u0001\u0015\u0002\u000bM$\u0018M\u001d;\t\u000bI\u001a\u0004\u0019\u0001\u0015\t\u000be\u001a\u0004\u0019\u0001\u0015\u0002\u0007\u0015tG\rC\u0003<\u0001\u0011\u0005C(A\u0005bI\u0012\u001cFO]5oOR)Q\b\u0012$H\u0011B\u0011a(\u0011\b\u0003\u0015}J!\u0001\u0011\u0003\u0002\u000fA\f7m[1hK&\u0011!i\u0011\u0002\u000e'R\u0014\u0018N\\4Ck&dG-\u001a:\u000b\u0005\u0001#\u0001\"B#;\u0001\u0004i\u0014!\u00012\t\u000bYR\u0004\u0019\u0001\u0015\t\u000bIR\u0004\u0019\u0001\u0015\t\u000beR\u0004\u0019\u0001\u0015\u0013\u0007)cUJ\u0002\u0003L\u0001\u0001I%\u0001\u0004\u001fsK\u001aLg.Z7f]Rt\u0004cA\f\u00015A\u0019qC\u0014\u000e\n\u0005=\u0013!a\u0003+sCZ,'o]1cY\u0016\u0004")
/* loaded from: classes3-dex2jar.jar:scala/collection/ViewMkString.class */
public interface ViewMkString<A> {

    /* renamed from: scala.collection.ViewMkString$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/ViewMkString$class.class */
    public abstract class Cclass {
        public static void $init$(ViewMkString viewMkString) {
        }

        public static StringBuilder addString(ViewMkString viewMkString, StringBuilder stringBuilder, String str, String str2, String str3) {
            BooleanRef create = BooleanRef.create(true);
            stringBuilder.append(str);
            ((GenericTraversableTemplate) viewMkString).foreach(new ViewMkString$$anonfun$addString$1(viewMkString, create, stringBuilder, str2));
            stringBuilder.append(str3);
            return stringBuilder;
        }

        public static String mkString(ViewMkString viewMkString) {
            return ((TraversableOnce) viewMkString).mkString("");
        }

        public static String mkString(ViewMkString viewMkString, String str) {
            return ((TraversableOnce) viewMkString).mkString("", str, "");
        }

        public static String mkString(ViewMkString viewMkString, String str, String str2, String str3) {
            return viewMkString.thisSeq().addString(new StringBuilder(), str, str2, str3).toString();
        }

        public static Seq thisSeq(ViewMkString viewMkString) {
            return new ArrayBuffer().$plus$plus$eq((TraversableOnce) ((TraversableOnce) viewMkString)).result();
        }
    }

    StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3);

    String mkString();

    String mkString(String str);

    String mkString(String str, String str2, String str3);

    Seq<A> thisSeq();
}
