package scala.sys.process;

import java.io.File;
import java.net.URL;
import scala.Function0;
import scala.Function1;
import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Some;
import scala.Tuple2;
import scala.collection.Seq;
import scala.collection.Seq$;
import scala.collection.TraversableOnce;
import scala.reflect.ClassTag$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.sys.process.ProcessBuilder;
import scala.sys.process.ProcessBuilderImpl;
@ScalaSignature(bytes = "\u0006\u0001\u0005ucaB\u0001\u0003!\u0003\r\t!\u0003\u0002\u0010!J|7-Z:t\u0007J,\u0017\r^5p]*\u00111\u0001B\u0001\baJ|7-Z:t\u0015\t)a!A\u0002tsNT\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001'\t\u0001!\u0002\u0005\u0002\f\u00195\ta!\u0003\u0002\u000e\r\t1\u0011I\\=SK\u001aDQa\u0004\u0001\u0005\u0002A\ta\u0001J5oSR$C#A\t\u0011\u0005-\u0011\u0012BA\n\u0007\u0005\u0011)f.\u001b;\t\u000bU\u0001A\u0011\u0001\f\u0002\u000b\u0005\u0004\b\u000f\\=\u0015\u0005]Y\u0002C\u0001\r\u001a\u001b\u0005\u0011\u0011B\u0001\u000e\u0003\u00059\u0001&o\\2fgN\u0014U/\u001b7eKJDQ\u0001\b\u000bA\u0002u\tqaY8n[\u0006tG\r\u0005\u0002\u001fC9\u00111bH\u0005\u0003A\u0019\ta\u0001\u0015:fI\u00164\u0017B\u0001\u0012$\u0005\u0019\u0019FO]5oO*\u0011\u0001E\u0002\u0005\u0006+\u0001!\t!\n\u000b\u0003/\u0019BQ\u0001\b\u0013A\u0002\u001d\u00022\u0001K\u0016\u001e\u001d\tY\u0011&\u0003\u0002+\r\u00059\u0001/Y2lC\u001e,\u0017B\u0001\u0017.\u0005\r\u0019V-\u001d\u0006\u0003U\u0019AQ!\u0006\u0001\u0005\u0002=\"2a\u0006\u00192\u0011\u0015ab\u00061\u0001\u001e\u0011\u0015\u0011d\u00061\u0001(\u0003%\t'oZ;nK:$8\u000fC\u0003\u0016\u0001\u0011\u0005A\u0007\u0006\u0003\u0018kYz\u0004\"\u0002\u000f4\u0001\u0004i\u0002\"B\u001c4\u0001\u0004A\u0014aA2xIB\u0011\u0011\b\u0010\b\u00031iJ!a\u000f\u0002\u0002\u001fA\u0014xnY3tg&sG/\u001a:oC2L!!\u0010 \u0003\t\u0019KG.\u001a\u0006\u0003w\tAQ\u0001Q\u001aA\u0002\u0005\u000b\u0001\"\u001a=ue\u0006,eN\u001e\t\u0004\u0017\t#\u0015BA\"\u0007\u0005)a$/\u001a9fCR,GM\u0010\t\u0005\u0017\u0015kR$\u0003\u0002G\r\t1A+\u001e9mKJBQ!\u0006\u0001\u0005\u0002!#BaF%K\u0017\")Ad\u0012a\u0001O!)qg\u0012a\u0001q!)\u0001i\u0012a\u0001\u0003\")Q\u0003\u0001C\u0001\u001bR!qCT(T\u0011\u0015aB\n1\u0001\u001e\u0011\u00159D\n1\u0001Q!\rY\u0011\u000bO\u0005\u0003%\u001a\u0011aa\u00149uS>t\u0007\"\u0002!M\u0001\u0004\t\u0005\"B\u000b\u0001\t\u0003)F\u0003B\fW/bCQ\u0001\b+A\u0002\u001dBQa\u000e+A\u0002ACQ\u0001\u0011+A\u0002\u0005CQ!\u0006\u0001\u0005\u0002i#\"aF.\t\u000bqK\u0006\u0019A/\u0002\u000f\t,\u0018\u000e\u001c3feB\u0011\u0011HX\u0005\u0003?z\u0012qB\u0013)s_\u000e,7o\u001d\"vS2$WM\u001d\u0005\u0006+\u0001!\t!\u0019\u000b\u0003E&\u0004\"a\u00194\u000f\u0005a!\u0017BA3\u0003\u00039\u0001&o\\2fgN\u0014U/\u001b7eKJL!a\u001a5\u0003\u0017\u0019KG.\u001a\"vS2$WM\u001d\u0006\u0003K\nAQA\u001b1A\u0002a\nAAZ5mK\")Q\u0003\u0001C\u0001YR\u0011Q\u000e\u001d\t\u0003G:L!a\u001c5\u0003\u0015U\u0013FJQ;jY\u0012,'\u000fC\u0003rW\u0002\u0007!/A\u0002ve2\u0004\"!O:\n\u0005Qt$aA+S\u0019\")Q\u0003\u0001C\u0001mR\u0011qc\u001e\u0005\u0006qV\u0004\r!_\u0001\u0006m\u0006dW/\u001a\t\u0003\u0017iL!a\u001f\u0004\u0003\u000f\t{w\u000e\\3b]\")Q\u0003\u0001C\u0001{R!qC`A\u0001\u0011\u0015yH\u00101\u0001\u001e\u0003\u0011q\u0017-\\3\t\u0011\u0005\rA\u0010\"a\u0001\u0003\u000b\t\u0011\"\u001a=jiZ\u000bG.^3\u0011\u000b-\t9!a\u0003\n\u0007\u0005%aA\u0001\u0005=Eft\u0017-\\3?!\rY\u0011QB\u0005\u0004\u0003\u001f1!aA%oi\"9\u00111\u0003\u0001\u0005\u0002\u0005U\u0011\u0001C1qa2L8+Z9\u0016\t\u0005]\u0011\u0011\u0007\u000b\u0005\u00033\t\u0019\u0005\u0006\u0003\u0002\u001c\u0005\r\u0002\u0003\u0002\u0015,\u0003;\u00012aYA\u0010\u0013\r\t\t\u0003\u001b\u0002\u0007'>,(oY3\t\u0011\u0005\u0015\u0012\u0011\u0003a\u0002\u0003O\tqaY8om\u0016\u0014H\u000fE\u0004\f\u0003S\ti#!\b\n\u0007\u0005-bAA\u0005Gk:\u001cG/[8ocA!\u0011qFA\u0019\u0019\u0001!\u0001\"a\r\u0002\u0012\t\u0007\u0011Q\u0007\u0002\u0002)F!\u0011qGA\u001f!\rY\u0011\u0011H\u0005\u0004\u0003w1!a\u0002(pi\"Lgn\u001a\t\u0004\u0017\u0005}\u0012bAA!\r\t\u0019\u0011I\\=\t\u0011\u0005\u0015\u0013\u0011\u0003a\u0001\u0003\u000f\n\u0001BY;jY\u0012,'o\u001d\t\u0005Q-\ni\u0003C\u0004\u0002L\u0001!\t!!\u0014\u0002\u0007\r\fG\u000fF\u0003\u0018\u0003\u001f\n\t\u0006C\u0004k\u0003\u0013\u0002\r!!\b\t\u0011\u0005M\u0013\u0011\na\u0001\u0003+\nQAZ5mKN\u0004Ba\u0003\"\u0002\u001e!9\u00111\n\u0001\u0005\u0002\u0005eCcA\f\u0002\\!A\u00111KA,\u0001\u0004\tY\u0002")
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessCreation.class */
public interface ProcessCreation {

    /* renamed from: scala.sys.process.ProcessCreation$class */
    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessCreation$class.class */
    public abstract class Cclass {
        public static void $init$(ProcessCreation processCreation) {
        }

        public static ProcessBuilder.FileBuilder apply(ProcessCreation processCreation, File file) {
            return new ProcessBuilderImpl.FileImpl(ProcessBuilder$.MODULE$, file);
        }

        public static ProcessBuilder.URLBuilder apply(ProcessCreation processCreation, URL url) {
            return new ProcessBuilderImpl.URLImpl(ProcessBuilder$.MODULE$, url);
        }

        public static ProcessBuilder apply(ProcessCreation processCreation, ProcessBuilder processBuilder) {
            return new ProcessBuilderImpl.Simple(ProcessBuilder$.MODULE$, processBuilder);
        }

        public static ProcessBuilder apply(ProcessCreation processCreation, String str) {
            return processCreation.apply(str, None$.MODULE$, Predef$.MODULE$.wrapRefArray(new Tuple2[0]));
        }

        public static ProcessBuilder apply(ProcessCreation processCreation, String str, File file, Seq seq) {
            return processCreation.apply(str, new Some(file), seq);
        }

        public static ProcessBuilder apply(ProcessCreation processCreation, String str, Function0 function0) {
            return new ProcessBuilderImpl.Dummy(ProcessBuilder$.MODULE$, str, function0);
        }

        public static ProcessBuilder apply(ProcessCreation processCreation, String str, Option option, Seq seq) {
            return processCreation.apply(Predef$.MODULE$.wrapRefArray(str.split("\\s+")), option, seq);
        }

        public static ProcessBuilder apply(ProcessCreation processCreation, String str, Seq seq) {
            return processCreation.apply((Seq) seq.$plus$colon(str, Seq$.MODULE$.canBuildFrom()), None$.MODULE$, Predef$.MODULE$.wrapRefArray(new Tuple2[0]));
        }

        public static ProcessBuilder apply(ProcessCreation processCreation, Seq seq) {
            return processCreation.apply(seq, None$.MODULE$, Predef$.MODULE$.wrapRefArray(new Tuple2[0]));
        }

        public static ProcessBuilder apply(ProcessCreation processCreation, Seq seq, File file, Seq seq2) {
            return processCreation.apply(seq, new Some(file), seq2);
        }

        public static ProcessBuilder apply(ProcessCreation processCreation, Seq seq, Option option, Seq seq2) {
            ProcessBuilder processBuilder = new ProcessBuilder((String[]) seq.toArray(ClassTag$.MODULE$.apply(String.class)));
            ProcessCreation$$anonfun$apply$2 processCreation$$anonfun$apply$2 = new ProcessCreation$$anonfun$apply$2(processCreation, processBuilder);
            if (!option.isEmpty()) {
                processCreation$$anonfun$apply$2.jpb$1.directory((File) option.get());
            }
            seq2.foreach(new ProcessCreation$$anonfun$apply$3(processCreation, processBuilder));
            return processCreation.apply(processBuilder);
        }

        public static ProcessBuilder apply(ProcessCreation processCreation, boolean z) {
            return processCreation.apply(BoxesRunTime.boxToBoolean(z).toString(), new ProcessCreation$$anonfun$apply$1(processCreation, z));
        }

        public static Seq applySeq(ProcessCreation processCreation, Seq seq, Function1 function1) {
            return (Seq) seq.map(function1, Seq$.MODULE$.canBuildFrom());
        }

        public static ProcessBuilder cat(ProcessCreation processCreation, Seq seq) {
            Predef$.MODULE$.require(seq.nonEmpty());
            return (ProcessBuilder) ((TraversableOnce) seq.map(new ProcessCreation$$anonfun$cat$1(processCreation), Seq$.MODULE$.canBuildFrom())).reduceLeft(new ProcessCreation$$anonfun$cat$2(processCreation));
        }

        public static ProcessBuilder cat(ProcessCreation processCreation, ProcessBuilder.Source source, Seq seq) {
            return processCreation.cat((Seq) seq.$plus$colon(source, Seq$.MODULE$.canBuildFrom()));
        }
    }

    ProcessBuilder.FileBuilder apply(File file);

    ProcessBuilder.URLBuilder apply(URL url);

    ProcessBuilder apply(ProcessBuilder processBuilder);

    ProcessBuilder apply(String str);

    ProcessBuilder apply(String str, File file, Seq<Tuple2<String, String>> seq);

    ProcessBuilder apply(String str, Function0<Object> function0);

    ProcessBuilder apply(String str, Option<File> option, Seq<Tuple2<String, String>> seq);

    ProcessBuilder apply(String str, Seq<String> seq);

    ProcessBuilder apply(Seq<String> seq);

    ProcessBuilder apply(Seq<String> seq, File file, Seq<Tuple2<String, String>> seq2);

    ProcessBuilder apply(Seq<String> seq, Option<File> option, Seq<Tuple2<String, String>> seq2);

    ProcessBuilder apply(boolean z);

    <T> Seq<ProcessBuilder.Source> applySeq(Seq<T> seq, Function1<T, ProcessBuilder.Source> function1);

    ProcessBuilder cat(Seq<ProcessBuilder.Source> seq);

    ProcessBuilder cat(ProcessBuilder.Source source, Seq<ProcessBuilder.Source> seq);
}
