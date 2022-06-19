package scala.sys.process;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Some;
import scala.Tuple2;
import scala.collection.immutable.List;
import scala.collection.mutable.StringBuilder;
import scala.concurrent.SyncVar;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.sys.package$;
@ScalaSignature(bytes = "\u0006\u0001\t]hAC\u0001\u0003!\u0003\r\tA\u0001\u0005\u0003r\nY\u0001K]8dKN\u001c\u0018*\u001c9m\u0015\t\u0019A!A\u0004qe>\u001cWm]:\u000b\u0005\u00151\u0011aA:zg*\tq!A\u0003tG\u0006d\u0017m\u0005\u0002\u0001\u0013A\u0011!bC\u0007\u0002\r%\u0011AB\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000b9\u0001A\u0011\u0001\t\u0002\r\u0011Jg.\u001b;%\u0007\u0001!\u0012!\u0005\t\u0003\u0015II!a\u0005\u0004\u0003\tUs\u0017\u000e^\u0004\u0007+\u0001A\tA\u0001\f\u0002\u000bM\u0003\u0018m\u001e8\u0011\u0005]AR\"\u0001\u0001\u0007\re\u0001\u0001\u0012\u0001\u0002\u001b\u0005\u0015\u0019\u0006/Y<o'\tA\u0012\u0002C\u0003\u001d1\u0011\u0005Q$\u0001\u0004=S:LGO\u0010\u000b\u0002-!)q\u0004\u0007C\u0001A\u0005)\u0011\r\u001d9msR\u0011\u0011%\u000b\t\u0003E\u001dj\u0011a\t\u0006\u0003I\u0015\nA\u0001\\1oO*\ta%\u0001\u0003kCZ\f\u0017B\u0001\u0015$\u0005\u0019!\u0006N]3bI\"1!F\bCA\u0002-\n\u0011A\u001a\t\u0004\u00151\n\u0012BA\u0017\u0007\u0005!a$-\u001f8b[\u0016t\u0004\"B\u0010\u0019\t\u0003yCcA\u00111c!1!F\fCA\u0002-BQA\r\u0018A\u0002M\na\u0001Z1f[>t\u0007C\u0001\u00065\u0013\t)dAA\u0004C_>dW-\u00198\b\r]\u0002\u0001\u0012\u0001\u00029\u0003\u00191U\u000f^;sKB\u0011q#\u000f\u0004\u0007u\u0001A\tAA\u001e\u0003\r\u0019+H/\u001e:f'\tI\u0014\u0002C\u0003\u001ds\u0011\u0005Q\bF\u00019\u0011\u0015y\u0012\b\"\u0001@+\t\u0001e\t\u0006\u0002B\u001fB\u0019!B\u0011#\n\u0005\r3!!\u0003$v]\u000e$\u0018n\u001c81!\t)e\t\u0004\u0001\u0005\u000b\u001ds$\u0019\u0001%\u0003\u0003Q\u000b\"!\u0013'\u0011\u0005)Q\u0015BA&\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"AC'\n\u000593!aA!os\"1!F\u0010CA\u0002A\u00032A\u0003\u0017E\r\u0015\u0011\u0006\u0001\u0001\u0002T\u0005)\te\u000e\u001a)s_\u000e,7o]\n\u0003#R\u0003\"aF+\u0007\u000bY\u0003\u0001AA,\u0003#M+\u0017/^3oi&\fG\u000e\u0015:pG\u0016\u001c8o\u0005\u0002V1B\u0011q#\u0017\u0004\u00075\u0002\t\tAA.\u0003\u001f\r{W\u000e]8v]\u0012\u0004&o\\2fgN\u001c\"!\u0017/\u0011\u0005]ifA\u00020\u0001\u0003\u0003\u0011qL\u0001\u0007CCNL7\r\u0015:pG\u0016\u001c8oE\u0002^\u0013\u0001\u0004\"!\u00192\u000e\u0003\tI!a\u0019\u0002\u0003\u000fA\u0013xnY3tg\")A$\u0018C\u0001KR\tA\fC\u0003h;\u001a\u0005\u0001#A\u0003ti\u0006\u0014H\u000fC\u0003\u001d3\u0012\u0005\u0011\u000eF\u0001Y\u0011\u0015Y\u0017\f\"\u0001\u0011\u0003\u001d!Wm\u001d;s_fDQ!\\-\u0005\u00029\f\u0011\"\u001a=jiZ\u000bG.^3\u0015\u0003=\u0004\"A\u00039\n\u0005E4!aA%oi\")q-\u0017C\u0001!!QA/\u0017I\u0001\u0012\u000f\u0007K\u0011B;\u0002\u0007a$C'F\u0001w!\u0011Qq/_?\n\u0005a4!A\u0002+va2,'\u0007E\u0002\u000b\u0005j\u00042AC>p\u0013\tahA\u0001\u0004PaRLwN\u001c\t\u0004\u0015\t\u000b\u0002\u0002C@Z\u0011\u0003\u0005\u000b\u0015\u0002<\u0002\ta$C\u0007\t\u0005\u000b\u0003\u0007I\u0006R1A\u0005\u0012\u0005\u0015\u0011\u0001D4fi\u0016C\u0018\u000e\u001e,bYV,W#A=\t\u0013\u0005%\u0011\f#A!B\u0013I\u0018!D4fi\u0016C\u0018\u000e\u001e,bYV,\u0007\u0005\u0003\u0006\u0002\u000eeC)\u0019!C\t\u0003\u001f\t\u0011\u0002Z3tiJ|\u00170\u001a:\u0016\u0003uD\u0011\"a\u0005Z\u0011\u0003\u0005\u000b\u0015B?\u0002\u0015\u0011,7\u000f\u001e:ps\u0016\u0014\b\u0005\u0003\u0005\u0002\u0018e\u0003k\u0011CA\r\u0003=\u0011XO\\!oI\u0016C\u0018\u000e\u001e,bYV,G#\u0001>\t\u0011\u0005u\u0011\f)C\t\u0003?\t\u0001C];o\u0013:$XM\u001d:vaRL'\r\\3\u0016\t\u0005\u0005\u0012\u0011\u0006\u000b\u0005\u0003G\ty\u0003\u0006\u0003\u0002&\u0005-\u0002\u0003\u0002\u0006|\u0003O\u00012!RA\u0015\t\u00199\u00151\u0004b\u0001\u0011\"A\u0011QFA\u000e\t\u0003\u00071&A\u0006eKN$(o\\=J[Bd\u0007\"CA\u0019\u00037!\t\u0019AA\u001a\u0003\u0019\t7\r^5p]B!!\u0002LA\u0014\u0011)\t9$\u0016B\u0001B\u0003%\u0011\u0011H\u0001\u0002CB\u0019\u0011-a\u000f\n\u0007\u0005u\"A\u0001\bQe>\u001cWm]:Ck&dG-\u001a:\t\u0015\u0005\u0005SK!A!\u0002\u0013\tI$A\u0001c\u0011)\t)%\u0016B\u0001B\u0003%\u0011qI\u0001\u0003S>\u00042!YA%\u0013\r\tYE\u0001\u0002\n!J|7-Z:t\u0013>C!\"a\u0014V\u0005\u0003\u0005\u000b\u0011BA)\u0003U)g/\u00197vCR,7+Z2p]\u0012\u0004&o\\2fgN\u0004RACA*_NJ1!!\u0016\u0007\u0005%1UO\\2uS>t\u0017\u0007\u0003\u0004\u001d+\u0012\u0005\u0011\u0011\f\u000b\n)\u0006m\u0013QLA0\u0003CB\u0001\"a\u000e\u0002X\u0001\u0007\u0011\u0011\b\u0005\t\u0003\u0003\n9\u00061\u0001\u0002:!A\u0011QIA,\u0001\u0004\t9\u0005\u0003\u0005\u0002P\u0005]\u0003\u0019AA)\u0011!\t9\"\u0016Q\u0005R\u0005e\u0001BCA\u001c#\n\u0005\t\u0015!\u0003\u0002:!Q\u0011\u0011I)\u0003\u0002\u0003\u0006I!!\u000f\t\u0015\u0005\u0015\u0013K!A!\u0002\u0013\t9\u0005\u0003\u0004\u001d#\u0012\u0005\u0011Q\u000e\u000b\t\u0003_\n\t(a\u001d\u0002vA\u0011q#\u0015\u0005\t\u0003o\tY\u00071\u0001\u0002:!A\u0011\u0011IA6\u0001\u0004\tI\u0004\u0003\u0005\u0002F\u0005-\u0004\u0019AA$\r\u001d\tI\b\u0001\u0001\u0003\u0003w\u0012\u0011b\u0014:Qe>\u001cWm]:\u0014\u0007\u0005]D\u000bC\u0006\u00028\u0005]$\u0011!Q\u0001\n\u0005e\u0002bCA!\u0003o\u0012\t\u0011)A\u0005\u0003sA1\"!\u0012\u0002x\t\u0005\t\u0015!\u0003\u0002H!9A$a\u001e\u0005\u0002\u0005\u0015E\u0003CAD\u0003\u0013\u000bY)!$\u0011\u0007]\t9\b\u0003\u0005\u00028\u0005\r\u0005\u0019AA\u001d\u0011!\t\t%a!A\u0002\u0005e\u0002\u0002CA#\u0003\u0007\u0003\r!a\u0012\u0007\u000f\u0005E\u0005\u0001\u0001\u0002\u0002\u0014\ny\u0001K]8dKN\u001c8+Z9vK:\u001cWmE\u0002\u0002\u0010RC1\"a\u000e\u0002\u0010\n\u0005\t\u0015!\u0003\u0002:!Y\u0011\u0011IAH\u0005\u0003\u0005\u000b\u0011BA\u001d\u0011-\t)%a$\u0003\u0002\u0003\u0006I!a\u0012\t\u000fq\ty\t\"\u0001\u0002\u001eRA\u0011qTAQ\u0003G\u000b)\u000bE\u0002\u0018\u0003\u001fC\u0001\"a\u000e\u0002\u001c\u0002\u0007\u0011\u0011\b\u0005\t\u0003\u0003\nY\n1\u0001\u0002:!A\u0011QIAN\u0001\u0004\t9EB\u0004\u0002*\u0002\u0001!!a+\u0003\u001dAK\u0007/\u001a3Qe>\u001cWm]:fgN\u0019\u0011q\u0015-\t\u0017\u0005]\u0012q\u0015B\u0001B\u0003%\u0011\u0011\b\u0005\f\u0003\u0003\n9K!A!\u0002\u0013\tI\u0004C\u0006\u00024\u0006\u001d&\u0011!Q\u0001\n\u0005\u001d\u0013!\u00033fM\u0006,H\u000e^%P\u0011)\t9,a*\u0003\u0002\u0003\u0006IaM\u0001\bi>,%O]8s\u0011\u001da\u0012q\u0015C\u0001\u0003w#\"\"!0\u0002@\u0006\u0005\u00171YAc!\r9\u0012q\u0015\u0005\t\u0003o\tI\f1\u0001\u0002:!A\u0011\u0011IA]\u0001\u0004\tI\u0004\u0003\u0005\u00024\u0006e\u0006\u0019AA$\u0011\u001d\t9,!/A\u0002MB\u0011\"a\u0006\u0002(\u0002&\t&!\u0007\u0007\u0011\u0005-\u0007!!\u0001\u0003\u0003\u001b\u0014!\u0002U5qKRC'/Z1e'\r\tI-\t\u0005\u000b\u0003#\fIM!A!\u0002\u0013\u0019\u0014AB5t'&t7\u000eC\u0006\u0002V\u0006%'\u0011!Q\u0001\n\u0005]\u0017a\u00027bE\u0016dgI\u001c\t\u0005\u0015\t\u000bI\u000e\u0005\u0003\u0002\\\u0006\u0005hb\u0001\u0006\u0002^&\u0019\u0011q\u001c\u0004\u0002\rA\u0013X\rZ3g\u0013\u0011\t\u0019/!:\u0003\rM#(/\u001b8h\u0015\r\tyN\u0002\u0005\b9\u0005%G\u0011AAu)\u0019\tY/!<\u0002pB\u0019q#!3\t\u000f\u0005E\u0017q\u001da\u0001g!A\u0011Q[At\u0001\u0004\t9\u000eC\u0004\u0002t\u0006%g\u0011\u0001\t\u0002\u0007I,h\u000eC\u0005\u0002x\u0006%G\u0011\u0001\u0002\u0002z\u00069!/\u001e8m_>\u0004H#B\t\u0002|\n5\u0001\u0002CA\u007f\u0003k\u0004\r!a@\u0002\u0007M\u00148\r\u0005\u0003\u0003\u0002\t\u001dabA1\u0003\u0004%\u0019!Q\u0001\u0002\u0002\u001fA\u0014xnY3tg&sG/\u001a:oC2LAA!\u0003\u0003\f\tY\u0011J\u001c9viN#(/Z1n\u0015\r\u0011)A\u0001\u0005\t\u0005\u001f\t)\u00101\u0001\u0003\u0012\u0005\u0019Am\u001d;\u0011\t\t\u0005!1C\u0005\u0005\u0005+\u0011YA\u0001\u0007PkR\u0004X\u000f^*ue\u0016\fW\u000e\u0003\u0005\u0003\u001a\u0005%G\u0011\u0002B\u000e\u0003%Iw\u000eS1oI2,'\u000fF\u0002\u0012\u0005;A\u0001Ba\b\u0003\u0018\u0001\u0007!\u0011E\u0001\u0002KB!!\u0011\u0001B\u0012\u0013\u0011\u0011)Ca\u0003\u0003\u0017%{U\t_2faRLwN\u001c\u0004\b\u0005S\u0001\u0001A\u0001B\u0016\u0005)\u0001\u0016\u000e]3T_V\u00148-Z\n\u0005\u0005O\tY\u000fC\u0006\u00030\t\u001d\"\u0011!Q\u0001\n\tE\u0012!D2veJ,g\u000e^*pkJ\u001cW\r\u0005\u0004\u0003\u0002\tM\"qG\u0005\u0005\u0005k\u0011YAA\u0004Ts:\u001cg+\u0019:\u0011\t)Y\u0018q \u0005\f\u0005w\u00119C!A!\u0002\u0013\u0011i$\u0001\u0003qSB,\u0007\u0003\u0002B \u0005\u0007j!A!\u0011\u000b\u0007\u0005\u0015S%\u0003\u0003\u0003F\t\u0005#!\u0005)ja\u0016$w*\u001e;qkR\u001cFO]3b[\"Y!\u0011\nB\u0014\u0005\u0003%\u000b\u0011\u0002B&\u0003\u0015a\u0017MY3m!\u0011QA&!7\t\u000fq\u00119\u0003\"\u0001\u0003PQA!\u0011\u000bB*\u0005+\u00129\u0006E\u0002\u0018\u0005OA\u0001Ba\f\u0003N\u0001\u0007!\u0011\u0007\u0005\t\u0005w\u0011i\u00051\u0001\u0003>!I!\u0011\nB'\t\u0003\u0007!1\n\u0005\b\u0003g\u00149\u0003\"\u0012\u0011\r\u001d\u0011i\u0006\u0001\u0001\u0003\u0005?\u0012\u0001\u0002U5qKNKgn[\n\u0005\u00057\nY\u000fC\u0006\u0003<\tm#\u0011!Q\u0001\n\t\r\u0004\u0003\u0002B \u0005KJAAa\u001a\u0003B\t\u0001\u0002+\u001b9fI&s\u0007/\u001e;TiJ,\u0017-\u001c\u0005\f\u0005W\u0012YF!A!\u0002\u0013\u0011i'A\u0006dkJ\u0014XM\u001c;TS:\\\u0007C\u0002B\u0001\u0005g\u0011y\u0007\u0005\u0003\u000bw\nE\u0001b\u0003B%\u00057\u0012\t\u0011*A\u0005\u0005\u0017Bq\u0001\bB.\t\u0003\u0011)\b\u0006\u0005\u0003x\te$1\u0010B?!\r9\"1\f\u0005\t\u0005w\u0011\u0019\b1\u0001\u0003d!A!1\u000eB:\u0001\u0004\u0011i\u0007C\u0005\u0003J\tMD\u00111\u0001\u0003L!9\u00111\u001fB.\t\u000b\u0002ba\u0002BB\u0001\u0001\u0011!Q\u0011\u0002\r\tVlW.\u001f)s_\u000e,7o]\n\u0005\u0005\u0003K\u0001\rC\u0006\u00022\t\u0005%\u0011!S\u0001\n\t%\u0005c\u0001\u0006-_\"9AD!!\u0005\u0002\t5E\u0003\u0002BH\u0005#\u00032a\u0006BA\u0011%\t\tDa#\u0005\u0002\u0004\u0011I\tC\u0005\u0003\u0016\n\u0005\u0005\u0015!\u0003\u0003\u0018\u0006AQ\r_5u\u0007>$W\rE\u0002\u000b\u0005>Da!\u001cBA\t\u0003r\u0007BB6\u0003\u0002\u0012\u0005\u0003CB\u0004\u0003 \u0002\u0001!A!)\u0003\u001bMKW\u000e\u001d7f!J|7-Z:t'\u0011\u0011i*\u00031\t\u0017\t\u0015&Q\u0014B\u0001B\u0003%!qU\u0001\u0002aB!!\u0011\u0001BU\u0013\u0011\u0011YKa\u0003\u0003\u0011)\u0003&o\\2fgND!Ba,\u0003\u001e\n\u0005\t\u0015!\u0003\"\u0003-Ig\u000e];u)\"\u0014X-\u00193\t\u0017\tM&Q\u0014B\u0001B\u0003%!QW\u0001\u000e_V$\b/\u001e;UQJ,\u0017\rZ:\u0011\u000b\t]&QX\u0011\u000f\u0007)\u0011I,C\u0002\u0003<\u001a\tq\u0001]1dW\u0006<W-\u0003\u0003\u0003@\n\u0005'\u0001\u0002'jgRT1Aa/\u0007\u0011\u001da\"Q\u0014C\u0001\u0005\u000b$\u0002Ba2\u0003J\n-'Q\u001a\t\u0004/\tu\u0005\u0002\u0003BS\u0005\u0007\u0004\rAa*\t\u000f\t=&1\u0019a\u0001C!A!1\u0017Bb\u0001\u0004\u0011)\f\u0003\u0004n\u0005;#\tE\u001c\u0005\u0007W\nuE\u0011\t\t\u0007\u000f\tU\u0007A\u0001\u0002\u0003X\niA\u000b\u001b:fC\u0012\u0004&o\\2fgN\u001cBAa5\nA\"Q!1\u001cBj\u0005\u0003\u0005\u000b\u0011B\u0011\u0002\rQD'/Z1e\u0011-\u0011yNa5\u0003\u0002\u0003\u0006IA!9\u0002\u000fM,8mY3tgB)!\u0011\u0001B\u001ag!9ADa5\u0005\u0002\t\u0015HC\u0002Bt\u0005S\u0014Y\u000fE\u0002\u0018\u0005'DqAa7\u0003d\u0002\u0007\u0011\u0005\u0003\u0005\u0003`\n\r\b\u0019\u0001Bq\u0011\u0019i'1\u001bC!]\"11Na5\u0005BAq1!\u0019Bz\u0013\r\u0011)PA\u0001\b!J|7-Z:t\u0001")
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl.class */
public interface ProcessImpl {

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$AndProcess.class */
    public class AndProcess extends SequentialProcess {
        public AndProcess(Process$ process$, ProcessBuilder processBuilder, ProcessBuilder processBuilder2, ProcessIO processIO) {
            super(process$, processBuilder, processBuilder2, processIO, new ProcessImpl$AndProcess$$anonfun$$lessinit$greater$1(process$));
        }

        public /* synthetic */ Process$ scala$sys$process$ProcessImpl$AndProcess$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$BasicProcess.class */
    public abstract class BasicProcess implements Process {
        public final /* synthetic */ Process$ $outer;

        public BasicProcess(Process$ process$) {
            Objects.requireNonNull(process$);
            this.$outer = process$;
        }

        public /* synthetic */ Process$ scala$sys$process$ProcessImpl$BasicProcess$$$outer() {
            return this.$outer;
        }

        public abstract void start();
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$CompoundProcess.class */
    public abstract class CompoundProcess extends BasicProcess {
        private volatile byte bitmap$0;
        private Function0<BoxedUnit> destroyer;
        private Function0<Option<Object>> getExitValue;
        private Tuple2<Function0<Option<Object>>, Function0<BoxedUnit>> x$4;

        public CompoundProcess(Process$ process$) {
            super(process$);
        }

        private Function0 destroyer$lzycompute() {
            synchronized (this) {
                if (((byte) (this.bitmap$0 & 4)) == 0) {
                    this.destroyer = (Function0) x$4().mo268_2();
                    this.bitmap$0 = (byte) (this.bitmap$0 | 4);
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return this.destroyer;
        }

        private Function0 getExitValue$lzycompute() {
            synchronized (this) {
                if (((byte) (this.bitmap$0 & 2)) == 0) {
                    this.getExitValue = (Function0) x$4().mo269_1();
                    this.bitmap$0 = (byte) (this.bitmap$0 | 2);
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return this.getExitValue;
        }

        private /* synthetic */ Tuple2 x$4() {
            return ((byte) (this.bitmap$0 & 1)) == 0 ? x$4$lzycompute() : this.x$4;
        }

        private Tuple2 x$4$lzycompute() {
            synchronized (this) {
                if (((byte) (this.bitmap$0 & 1)) == 0) {
                    SyncVar syncVar = new SyncVar();
                    syncVar.set(None$.MODULE$);
                    ProcessImpl$Spawn$$anon$1 processImpl$Spawn$$anon$1 = new ProcessImpl$Spawn$$anon$1(scala$sys$process$ProcessImpl$CompoundProcess$$$outer().Spawn(), new ProcessImpl$CompoundProcess$$anonfun$1(this, syncVar));
                    processImpl$Spawn$$anon$1.setDaemon(false);
                    processImpl$Spawn$$anon$1.start();
                    ProcessImpl$Future$ Future = scala$sys$process$ProcessImpl$CompoundProcess$$$outer().Future();
                    ProcessImpl$CompoundProcess$$anonfun$3 processImpl$CompoundProcess$$anonfun$3 = new ProcessImpl$CompoundProcess$$anonfun$3(this, syncVar, processImpl$Spawn$$anon$1);
                    SyncVar syncVar2 = new SyncVar();
                    ProcessImpl$Spawn$$anon$1 processImpl$Spawn$$anon$12 = new ProcessImpl$Spawn$$anon$1(Future.$outer.Spawn(), new ProcessImpl$Future$$anonfun$apply$1(Future, processImpl$CompoundProcess$$anonfun$3, syncVar2));
                    processImpl$Spawn$$anon$12.setDaemon(false);
                    processImpl$Spawn$$anon$12.start();
                    Tuple2 tuple2 = new Tuple2(new ProcessImpl$Future$$anonfun$apply$4(Future, syncVar2), new ProcessImpl$CompoundProcess$$anonfun$2(this, processImpl$Spawn$$anon$1));
                    this.x$4 = new Tuple2<>(tuple2.mo269_1(), tuple2.mo268_2());
                    this.bitmap$0 = (byte) (this.bitmap$0 | 1);
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return this.x$4;
        }

        @Override // scala.sys.process.Process
        public void destroy() {
            destroyer().apply$mcV$sp();
        }

        public Function0<BoxedUnit> destroyer() {
            return ((byte) (this.bitmap$0 & 4)) == 0 ? destroyer$lzycompute() : this.destroyer;
        }

        @Override // scala.sys.process.Process
        public int exitValue() {
            Option<Object> apply = getExitValue().apply();
            if (!apply.isEmpty()) {
                return BoxesRunTime.unboxToInt(apply.get());
            }
            package$ package_ = package$.MODULE$;
            throw new RuntimeException("No exit code: process destroyed.");
        }

        public Function0<Option<Object>> getExitValue() {
            return ((byte) (this.bitmap$0 & 2)) == 0 ? getExitValue$lzycompute() : this.getExitValue;
        }

        public abstract Option<Object> runAndExitValue();

        public <T> Option<T> runInterruptible(Function0<T> function0, Function0<BoxedUnit> function02) {
            Some some;
            try {
                some = new Some(function0.apply());
            } catch (Throwable th) {
                processInternal$ processinternal_ = processInternal$.MODULE$;
                processInternal$$anonfun$onInterrupt$1 processinternal__anonfun_oninterrupt_1 = new processInternal$$anonfun$onInterrupt$1(new ProcessImpl$CompoundProcess$$anonfun$4(this, function02));
                if (!(th instanceof InterruptedException)) {
                    throw th;
                }
                some = (Option) processinternal__anonfun_oninterrupt_1.apply(th);
            }
            return some;
        }

        public /* synthetic */ Process$ scala$sys$process$ProcessImpl$CompoundProcess$$$outer() {
            return this.$outer;
        }

        @Override // scala.sys.process.ProcessImpl.BasicProcess
        public void start() {
            getExitValue();
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$DummyProcess.class */
    public class DummyProcess implements Process {
        public final /* synthetic */ Process$ $outer;
        private final Function0<Object> exitCode;

        public DummyProcess(Process$ process$, Function0<Object> function0) {
            Objects.requireNonNull(process$);
            this.$outer = process$;
            this.exitCode = process$.Future().apply(function0);
        }

        @Override // scala.sys.process.Process
        public void destroy() {
        }

        @Override // scala.sys.process.Process
        public int exitValue() {
            return this.exitCode.apply$mcI$sp();
        }

        public /* synthetic */ Process$ scala$sys$process$ProcessImpl$DummyProcess$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$OrProcess.class */
    public class OrProcess extends SequentialProcess {
        public OrProcess(Process$ process$, ProcessBuilder processBuilder, ProcessBuilder processBuilder2, ProcessIO processIO) {
            super(process$, processBuilder, processBuilder2, processIO, new ProcessImpl$OrProcess$$anonfun$$lessinit$greater$2(process$));
        }

        public /* synthetic */ Process$ scala$sys$process$ProcessImpl$OrProcess$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$PipeSink.class */
    public class PipeSink extends PipeThread {
        private final SyncVar<Option<OutputStream>> currentSink;
        private final PipedInputStream pipe;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PipeSink(Process$ process$, PipedInputStream pipedInputStream, SyncVar<Option<OutputStream>> syncVar, Function0<String> function0) {
            super(process$, true, function0);
            this.pipe = pipedInputStream;
            this.currentSink = syncVar;
        }

        /* JADX WARN: Finally extract failed */
        @Override // scala.sys.process.ProcessImpl.PipeThread, java.lang.Thread, java.lang.Runnable
        public final void run() {
            Option<OutputStream> option;
            while (true) {
                option = this.currentSink.get();
                if (!(option instanceof Some)) {
                    break;
                }
                try {
                    runloop(this.pipe, (OutputStream) ((Some) option).m362x());
                    this.currentSink.unset();
                } catch (Throwable th) {
                    this.currentSink.unset();
                    throw th;
                }
            }
            if (None$.MODULE$.equals(option)) {
                this.currentSink.unset();
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
                BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
                return;
            }
            throw new MatchError(option);
        }

        public /* synthetic */ Process$ scala$sys$process$ProcessImpl$PipeSink$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$PipeSource.class */
    public class PipeSource extends PipeThread {
        private final SyncVar<Option<InputStream>> currentSource;
        private final PipedOutputStream pipe;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PipeSource(Process$ process$, SyncVar<Option<InputStream>> syncVar, PipedOutputStream pipedOutputStream, Function0<String> function0) {
            super(process$, false, function0);
            this.currentSource = syncVar;
            this.pipe = pipedOutputStream;
        }

        /* JADX WARN: Finally extract failed */
        @Override // scala.sys.process.ProcessImpl.PipeThread, java.lang.Thread, java.lang.Runnable
        public final void run() {
            Option<InputStream> option;
            while (true) {
                option = this.currentSource.get();
                if (!(option instanceof Some)) {
                    break;
                }
                try {
                    runloop((InputStream) ((Some) option).m362x(), this.pipe);
                    this.currentSource.unset();
                } catch (Throwable th) {
                    this.currentSource.unset();
                    throw th;
                }
            }
            if (None$.MODULE$.equals(option)) {
                this.currentSource.unset();
                BasicIO$.MODULE$.close(this.pipe);
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
                BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
                return;
            }
            throw new MatchError(option);
        }

        public /* synthetic */ Process$ scala$sys$process$ProcessImpl$PipeSource$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$PipeThread.class */
    public abstract class PipeThread extends Thread {
        public final /* synthetic */ Process$ $outer;
        private final boolean isSink;
        private final Function0<String> labelFn;

        public PipeThread(Process$ process$, boolean z, Function0<String> function0) {
            this.isSink = z;
            this.labelFn = function0;
            Objects.requireNonNull(process$);
            this.$outer = process$;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public abstract void run();

        /* JADX WARN: Multi-variable type inference failed */
        public void runloop(InputStream inputStream, OutputStream outputStream) {
            try {
                BasicIO$.MODULE$.transferFully(inputStream, outputStream);
                BasicIO$ basicIO$ = BasicIO$.MODULE$;
                if (this.isSink) {
                    inputStream = outputStream;
                }
                basicIO$.close(inputStream);
            }
        }

        public /* synthetic */ Process$ scala$sys$process$ProcessImpl$PipeThread$$$outer() {
            return this.$outer;
        }

        public void scala$sys$process$ProcessImpl$PipeThread$$ioHandler(IOException iOException) {
            Predef$.MODULE$.println(new StringBuilder().append((Object) "I/O error ").append((Object) iOException.getMessage()).append((Object) " for process: ").append((Object) this.labelFn.apply()).toString());
            iOException.printStackTrace();
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$PipedProcesses.class */
    public class PipedProcesses extends CompoundProcess {
        private final ProcessIO defaultIO;
        public final ProcessBuilder scala$sys$process$ProcessImpl$PipedProcesses$$a;
        public final ProcessBuilder scala$sys$process$ProcessImpl$PipedProcesses$$b;
        private final boolean toError;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PipedProcesses(Process$ process$, ProcessBuilder processBuilder, ProcessBuilder processBuilder2, ProcessIO processIO, boolean z) {
            super(process$);
            this.scala$sys$process$ProcessImpl$PipedProcesses$$a = processBuilder;
            this.scala$sys$process$ProcessImpl$PipedProcesses$$b = processBuilder2;
            this.defaultIO = processIO;
            this.toError = z;
        }

        @Override // scala.sys.process.ProcessImpl.CompoundProcess
        public Option<Object> runAndExitValue() {
            SyncVar syncVar = new SyncVar();
            PipedOutputStream pipedOutputStream = new PipedOutputStream();
            new PipeSource(scala$sys$process$ProcessImpl$PipedProcesses$$$outer(), syncVar, pipedOutputStream, new ProcessImpl$PipedProcesses$$anonfun$5(this)).start();
            PipedInputStream pipedInputStream = new PipedInputStream(pipedOutputStream);
            SyncVar syncVar2 = new SyncVar();
            new PipeSink(scala$sys$process$ProcessImpl$PipedProcesses$$$outer(), pipedInputStream, syncVar2, new ProcessImpl$PipedProcesses$$anonfun$6(this)).start();
            ProcessIO withError = this.toError ? this.defaultIO.withError(new ProcessImpl$PipedProcesses$$anonfun$7(this, syncVar)) : this.defaultIO.withOutput(new ProcessImpl$PipedProcesses$$anonfun$8(this, syncVar));
            Process run = this.scala$sys$process$ProcessImpl$PipedProcesses$$b.run(this.defaultIO.withInput(new ProcessImpl$PipedProcesses$$anonfun$9(this, syncVar2)));
            Process run2 = this.scala$sys$process$ProcessImpl$PipedProcesses$$a.run(withError);
            try {
                Option<Object> runInterruptible = runInterruptible(new ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$3(this, syncVar, syncVar2, run, run2), new ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$4(this, run, run2));
                BasicIO$.MODULE$.close(pipedInputStream);
                BasicIO$.MODULE$.close(pipedOutputStream);
                return runInterruptible;
            } catch (Throwable th) {
                BasicIO$.MODULE$.close(pipedInputStream);
                BasicIO$.MODULE$.close(pipedOutputStream);
                throw th;
            }
        }

        public /* synthetic */ Process$ scala$sys$process$ProcessImpl$PipedProcesses$$$outer() {
            return this.$outer;
        }

        public final void scala$sys$process$ProcessImpl$PipedProcesses$$handleOutOrError$1(InputStream inputStream, SyncVar syncVar) {
            syncVar.put(new Some(inputStream));
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$ProcessSequence.class */
    public class ProcessSequence extends SequentialProcess {
        public ProcessSequence(Process$ process$, ProcessBuilder processBuilder, ProcessBuilder processBuilder2, ProcessIO processIO) {
            super(process$, processBuilder, processBuilder2, processIO, new ProcessImpl$ProcessSequence$$anonfun$$lessinit$greater$3(process$));
        }

        public /* synthetic */ Process$ scala$sys$process$ProcessImpl$ProcessSequence$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$SequentialProcess.class */
    public class SequentialProcess extends CompoundProcess {

        /* renamed from: a */
        private final ProcessBuilder f1638a;
        public final ProcessBuilder scala$sys$process$ProcessImpl$SequentialProcess$$b;

        /* renamed from: scala$sys$process$ProcessImpl$SequentialProcess$$evaluateSecondProcess */
        public final Function1<Object, Object> f1639x9d729591;
        public final ProcessIO scala$sys$process$ProcessImpl$SequentialProcess$$io;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SequentialProcess(Process$ process$, ProcessBuilder processBuilder, ProcessBuilder processBuilder2, ProcessIO processIO, Function1<Object, Object> function1) {
            super(process$);
            this.f1638a = processBuilder;
            this.scala$sys$process$ProcessImpl$SequentialProcess$$b = processBuilder2;
            this.scala$sys$process$ProcessImpl$SequentialProcess$$io = processIO;
            this.f1639x9d729591 = function1;
        }

        @Override // scala.sys.process.ProcessImpl.CompoundProcess
        public Option<Object> runAndExitValue() {
            None$ none$;
            Some some;
            Process run = this.f1638a.run(this.scala$sys$process$ProcessImpl$SequentialProcess$$io);
            Option runInterruptible = runInterruptible(new ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$1(this, run), new ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$2(this, run));
            ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5 processImpl$SequentialProcess$$anonfun$runAndExitValue$5 = new ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5(this);
            if (runInterruptible.isEmpty()) {
                none$ = None$.MODULE$;
            } else {
                int unboxToInt = BoxesRunTime.unboxToInt(runInterruptible.get());
                if (this.f1639x9d729591.apply$mcZI$sp(unboxToInt)) {
                    Process run2 = this.scala$sys$process$ProcessImpl$SequentialProcess$$b.run(this.scala$sys$process$ProcessImpl$SequentialProcess$$io);
                    some = runInterruptible(new C2595x510b85bf(processImpl$SequentialProcess$$anonfun$runAndExitValue$5, run2), new C2596x510b85c0(processImpl$SequentialProcess$$anonfun$runAndExitValue$5, run2));
                } else {
                    some = new Some(BoxesRunTime.boxToInteger(unboxToInt));
                }
                none$ = some;
            }
            return none$;
        }

        public /* synthetic */ Process$ scala$sys$process$ProcessImpl$SequentialProcess$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$SimpleProcess.class */
    public class SimpleProcess implements Process {
        public final /* synthetic */ Process$ $outer;
        private final Thread inputThread;
        private final List<Thread> outputThreads;

        /* renamed from: p */
        private final Process f1640p;

        public SimpleProcess(Process$ process$, Process process, Thread thread, List<Thread> list) {
            this.f1640p = process;
            this.inputThread = thread;
            this.outputThreads = list;
            Objects.requireNonNull(process$);
            this.$outer = process$;
        }

        @Override // scala.sys.process.Process
        public void destroy() {
            try {
                for (List<Thread> list = this.outputThreads; !list.isEmpty(); list = (List) list.tail()) {
                    list.head().interrupt();
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                }
                this.f1640p.destroy();
            } finally {
                this.inputThread.interrupt();
            }
        }

        /* JADX WARN: Finally extract failed */
        @Override // scala.sys.process.Process
        public int exitValue() {
            try {
                this.f1640p.waitFor();
                this.inputThread.interrupt();
                List<Thread> list = this.outputThreads;
                while (true) {
                    List<Thread> list2 = list;
                    if (list2.isEmpty()) {
                        return this.f1640p.exitValue();
                    }
                    list2.head().join();
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                    list = (List) list2.tail();
                }
            } catch (Throwable th) {
                this.inputThread.interrupt();
                throw th;
            }
        }

        public /* synthetic */ Process$ scala$sys$process$ProcessImpl$SimpleProcess$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$ThreadProcess.class */
    public final class ThreadProcess implements Process {
        private final SyncVar<Object> success;
        private final Thread thread;

        public ThreadProcess(Process$ process$, Thread thread, SyncVar<Object> syncVar) {
            this.thread = thread;
            this.success = syncVar;
        }

        @Override // scala.sys.process.Process
        public void destroy() {
            this.thread.interrupt();
        }

        @Override // scala.sys.process.Process
        public int exitValue() {
            this.thread.join();
            return !BoxesRunTime.unboxToBoolean(this.success.get()) ? 1 : 0;
        }
    }

    /* renamed from: scala.sys.process.ProcessImpl$class */
    /* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$class.class */
    public abstract class Cclass {
        public static void $init$(Process$ process$) {
        }
    }

    ProcessImpl$Future$ Future();

    ProcessImpl$Spawn$ Spawn();
}
