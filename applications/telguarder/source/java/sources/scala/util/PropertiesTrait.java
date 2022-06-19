package scala.util;

import com.facebook.internal.ServerProtocol;
import com.pubmatic.sdk.common.POBCommonConstants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Properties;
import scala.Console$;
import scala.Function0;
import scala.MatchError;
import scala.Option;
import scala.Option$;
import scala.Predef$;
import scala.Tuple2;
import scala.collection.immutable.List$;
import scala.collection.immutable.StringOps;
import scala.collection.mutable.StringBuilder;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u0005Eh\u0001C\u0001\u0003!\u0003\r\t\u0001\u0002\u0004\u0003\u001fA\u0013x\u000e]3si&,7\u000f\u0016:bSRT!a\u0001\u0003\u0002\tU$\u0018\u000e\u001c\u0006\u0002\u000b\u0005)1oY1mCN\u0011\u0001a\u0002\t\u0003\u0011%i\u0011\u0001B\u0005\u0003\u0015\u0011\u0011a!\u00118z%\u00164\u0007\"\u0002\u0007\u0001\t\u0003q\u0011A\u0002\u0013j]&$He\u0001\u0001\u0015\u0003=\u0001\"\u0001\u0003\t\n\u0005E!!\u0001B+oSRDQa\u0005\u0001\u0007\u0012Q\tA\u0002\u001d:pa\u000e\u000bG/Z4pef,\u0012!\u0006\t\u0003-eq!\u0001C\f\n\u0005a!\u0011A\u0002)sK\u0012,g-\u0003\u0002\u001b7\t11\u000b\u001e:j]\u001eT!\u0001\u0007\u0003\t\u000bu\u0001a\u0011\u0003\u0010\u0002\u001dAL7m\u001b&be\n\u000b7/\u001a3P]V\tq\u0004\r\u0002!KA\u0019a#I\u0012\n\u0005\tZ\"!B\"mCN\u001c\bC\u0001\u0013&\u0019\u0001!\u0011B\n\u000f\u0002\u0002\u0003\u0005)\u0011A\u0014\u0003\u0007}##'\u0005\u0002)WA\u0011\u0001\"K\u0005\u0003U\u0011\u0011qAT8uQ&tw\r\u0005\u0002\tY%\u0011Q\u0006\u0002\u0002\u0004\u0003:L\bbB\u0018\u0001\u0005\u0004%\t\u0002M\u0001\raJ|\u0007OR5mK:\fW.Z\u000b\u0002cA\u0011!gN\u0007\u0002g)\u0011A'N\u0001\u0005Y\u0006twMC\u00017\u0003\u0011Q\u0017M^1\n\u0005i\u0019\u0004BB\u001d\u0001A\u0003%\u0011'A\u0007qe>\u0004h)\u001b7f]\u0006lW\r\t\u0005\tw\u0001A)\u0019!C\ty\u0005Q1oY1mCB\u0013x\u000e]:\u0016\u0003u\u0002\"A\u0010!\u000e\u0003}R!aA\u001b\n\u0005\u0005{$A\u0003)s_B,'\u000f^5fg\"A1\t\u0001E\u0001B\u0003&Q(A\u0006tG\u0006d\u0017\r\u0015:paN\u0004\u0003\"B#\u0001\t\u00131\u0015AD9vS\u0016$H.\u001f#jgB|7/\u001a\u000b\u0004\u001f\u001dc\u0005B\u0002%E\t\u0003\u0007\u0011*\u0001\u0004bGRLwN\u001c\t\u0004\u0011){\u0011BA&\u0005\u0005!a$-\u001f8b[\u0016t\u0004BB'E\t\u0003\u0007\u0011*\u0001\u0005eSN\u0004xn]1m\u0011\u0015y\u0005\u0001\"\u0001Q\u0003%\u0001(o\u001c9JgN+G\u000f\u0006\u0002R)B\u0011\u0001BU\u0005\u0003'\u0012\u0011qAQ8pY\u0016\fg\u000eC\u0003V\u001d\u0002\u0007Q#\u0001\u0003oC6,\u0007\"B,\u0001\t\u0003A\u0016a\u00039s_BL5oU3u)>$2!U-[\u0011\u0015)f\u000b1\u0001\u0016\u0011\u0015Yf\u000b1\u0001\u0016\u0003\u00151\u0018\r\\;f\u0011\u0015i\u0006\u0001\"\u0001_\u0003)\u0001(o\u001c9Pe\u0016c7/\u001a\u000b\u0004c}\u0003\u0007\"B+]\u0001\u0004)\u0002\"B1]\u0001\u0004)\u0012aA1mi\")1\r\u0001C\u0001I\u0006Y\u0001O]8q\u001fJ,U\u000e\u001d;z)\t\tT\rC\u0003VE\u0002\u0007Q\u0003C\u0003h\u0001\u0011\u0005\u0001.\u0001\u0006qe>\u0004xJ\u001d(vY2$\"!M5\t\u000bU3\u0007\u0019A\u000b\t\u000b-\u0004A\u0011\u00017\u0002\u0015A\u0014x\u000e](s\u001d>tW\r\u0006\u0002naB\u0019\u0001B\\\u0019\n\u0005=$!AB(qi&|g\u000eC\u0003VU\u0002\u0007Q\u0003C\u0003s\u0001\u0011\u00051/A\u0006qe>\u0004xJ\u001d$bYN,GCA)u\u0011\u0015)\u0016\u000f1\u0001\u0016\u0011\u00151\b\u0001\"\u0001x\u0003\u001d\u0019X\r\u001e)s_B$2!\r=z\u0011\u0015)V\u000f1\u0001\u0016\u0011\u0015YV\u000f1\u0001\u0016\u0011\u0015Y\b\u0001\"\u0001}\u0003%\u0019G.Z1s!J|\u0007\u000f\u0006\u00022{\")QK\u001fa\u0001+!1q\u0010\u0001C\u0001\u0003\u0003\t\u0011\"\u001a8w\u001fJ,En]3\u0015\u000bE\n\u0019!!\u0002\t\u000bUs\b\u0019A\u000b\t\u000b\u0005t\b\u0019A\u000b\t\u000f\u0005%\u0001\u0001\"\u0001\u0002\f\u0005IQM\u001c<Pe:{g.\u001a\u000b\u0004[\u00065\u0001BB+\u0002\b\u0001\u0007Q\u0003C\u0004\u0002\u0012\u0001!\t!a\u0005\u0002\u0013\u0015tgo\u0014:T_6,G#B7\u0002\u0016\u0005]\u0001BB+\u0002\u0010\u0001\u0007Q\u0003C\u0004b\u0003\u001f\u0001\r!!\u0007\u0011\u0007!qW\u0003C\u0004\u0002\u001e\u0001!\t!a\b\u0002\u001fM\u001c\u0017\r\\1Qe>\u0004xJ]#mg\u0016$R!FA\u0011\u0003GAa!VA\u000e\u0001\u0004)\u0002BB1\u0002\u001c\u0001\u0007Q\u0003C\u0004\u0002(\u0001!\t!!\u000b\u0002!M\u001c\u0017\r\\1Qe>\u0004xJ]#naRLHcA\u000b\u0002,!1Q+!\nA\u0002UAq!a\f\u0001\t\u0003\t\t$A\btG\u0006d\u0017\r\u0015:pa>\u0013hj\u001c8f)\u0011\tI\"a\r\t\rU\u000bi\u00031\u0001\u0016\u0011%\t9\u0004\u0001b\u0001\n\u0003\tI$\u0001\bsK2,\u0017m]3WKJ\u001c\u0018n\u001c8\u0016\u0005\u0005e\u0001\u0002CA\u001f\u0001\u0001\u0006I!!\u0007\u0002\u001fI,G.Z1tKZ+'o]5p]\u0002B\u0011\"!\u0011\u0001\u0005\u0004%\t!!\u000f\u0002%\u0011,g/\u001a7pa6,g\u000e\u001e,feNLwN\u001c\u0005\t\u0003\u000b\u0002\u0001\u0015!\u0003\u0002\u001a\u0005\u0019B-\u001a<fY>\u0004X.\u001a8u-\u0016\u00148/[8oA!1\u0011\u0011\n\u0001\u0005\u0002Q\t1C^3sg&|gNT;nE\u0016\u00148\u000b\u001e:j]\u001eD\u0001\"!\u0014\u0001\u0005\u0004%\t\u0001M\u0001\u000em\u0016\u00148/[8o'R\u0014\u0018N\\4\t\u000f\u0005E\u0003\u0001)A\u0005c\u0005qa/\u001a:tS>t7\u000b\u001e:j]\u001e\u0004\u0003\u0002CA+\u0001\t\u0007I\u0011\u0001\u000b\u0002\u001f\r|\u0007/\u001f:jO\"$8\u000b\u001e:j]\u001eDq!!\u0017\u0001A\u0003%Q#\u0001\td_BL(/[4iiN#(/\u001b8hA!1\u0011Q\f\u0001\u0005\u0002Q\tab]8ve\u000e,WI\\2pI&tw\r\u0003\u0004\u0002b\u0001!\t\u0001F\u0001\rg>,(oY3SK\u0006$WM\u001d\u0005\u0007\u0003K\u0002A\u0011\u0001\u0019\u0002\u001d\u0015t7m\u001c3j]\u001e\u001cFO]5oO\"1\u0011\u0011\u000e\u0001\u0005\u0002A\nQ\u0002\\5oKN+\u0007/\u0019:bi>\u0014\bBBA7\u0001\u0011\u0005\u0001'A\u0007kCZ\f7\t\\1tgB\u000bG\u000f\u001b\u0005\u0007\u0003c\u0002A\u0011\u0001\u0019\u0002\u0011)\fg/\u0019%p[\u0016Da!!\u001e\u0001\t\u0003\u0001\u0014A\u00036bm\u00064VM\u001c3pe\"1\u0011\u0011\u0010\u0001\u0005\u0002A\n1B[1wCZ+'o]5p]\"1\u0011Q\u0010\u0001\u0005\u0002A\n!B[1wCZk\u0017J\u001c4p\u0011\u0019\t\t\t\u0001C\u0001a\u0005Q!.\u0019<b-6t\u0015-\\3\t\r\u0005\u0015\u0005\u0001\"\u00011\u00031Q\u0017M^1W[Z+g\u000eZ8s\u0011\u0019\tI\t\u0001C\u0001a\u0005i!.\u0019<b-64VM]:j_:Da!!$\u0001\t\u0003\u0001\u0014a\u00046bm\u0006\u001c\u0006/Z2WKJ\u001c\u0018n\u001c8\t\r\u0005E\u0005\u0001\"\u00011\u00039Q\u0017M^1Ta\u0016\u001cg+\u001a8e_JDa!!&\u0001\t\u0003\u0001\u0014\u0001\u00046bm\u0006\u001c\u0006/Z2OC6,\u0007BBAM\u0001\u0011\u0005\u0001'\u0001\u0004pg:\u000bW.\u001a\u0005\u0007\u0003;\u0003A\u0011\u0001\u0019\u0002\u0013M\u001c\u0017\r\\1I_6,\u0007BBAQ\u0001\u0011\u0005\u0001'\u0001\u0004u[B$\u0015N\u001d\u0005\u0007\u0003K\u0003A\u0011\u0001\u0019\u0002\u000fU\u001cXM\u001d#je\"1\u0011\u0011\u0016\u0001\u0005\u0002A\n\u0001\"^:fe\"{W.\u001a\u0005\u0007\u0003[\u0003A\u0011\u0001\u0019\u0002\u0011U\u001cXM\u001d(b[\u0016Dq!!-\u0001\t\u0003\t\u0019,A\u0003jg^Kg.F\u0001R\u0011\u001d\t9\f\u0001C\u0001\u0003g\u000bQ![:NC\u000eD\u0001\"a/\u0001\t\u0003!\u00111W\u0001\bSN\fe/[1o\u0011\u0019\ty\f\u0001C\u0001a\u00059!\u000eZ6I_6,\u0007\u0002CAb\u0001\u0001&I!!2\u0002\u0015Y,'o]5p]\u001a{'\u000fF\u0002\u0016\u0003\u000fDq!!3\u0002B\u0002\u0007Q#A\u0004d_6l\u0017M\u001c3\t\r\u00055\u0007\u0001\"\u0001\u0015\u0003)1XM]:j_:l5o\u001a\u0005\u0007\u0003#\u0004A\u0011\u0001\u0019\u0002\u0011M\u001c\u0017\r\\1D[\u0012Da!!6\u0001\t\u0003\u0001\u0014!C:dC2\f7mQ7e\u0011\u001d\tI\u000e\u0001C\u0001\u00037\fQ\"[:KCZ\f\u0017\t\u001e'fCN$HcA)\u0002^\"9\u0011q\\Al\u0001\u0004)\u0012a\u0002<feNLwN\u001c\u0005\b\u0003G\u0004A\u0011AAs\u0003\u0011i\u0017-\u001b8\u0015\u0007=\t9\u000f\u0003\u0005\u0002j\u0006\u0005\b\u0019AAv\u0003\u0011\t'oZ:\u0011\t!\ti/F\u0005\u0004\u0003_$!!B!se\u0006L\b")
/* loaded from: classes3-dex2jar.jar:scala/util/PropertiesTrait.class */
public interface PropertiesTrait {

    /* renamed from: scala.util.PropertiesTrait$class */
    /* loaded from: classes3-dex2jar.jar:scala/util/PropertiesTrait$class.class */
    public abstract class Cclass {
        public static void $init$(PropertiesTrait propertiesTrait) {
            propertiesTrait.scala$util$PropertiesTrait$_setter_$propFilename_$eq(new StringBuilder().append((Object) "/").append((Object) propertiesTrait.propCategory()).append((Object) ".properties").toString());
            propertiesTrait.scala$util$PropertiesTrait$_setter_$releaseVersion_$eq(new Option.WithFilter(propertiesTrait.scalaPropOrNone("maven.version.number"), new PropertiesTrait$$anonfun$1(propertiesTrait)).map(new PropertiesTrait$$anonfun$2(propertiesTrait)));
            propertiesTrait.scala$util$PropertiesTrait$_setter_$developmentVersion_$eq(new Option.WithFilter(propertiesTrait.scalaPropOrNone("maven.version.number"), new PropertiesTrait$$anonfun$3(propertiesTrait)).flatMap(new PropertiesTrait$$anonfun$4(propertiesTrait)));
            propertiesTrait.scala$util$PropertiesTrait$_setter_$versionString_$eq(new StringBuilder().append((Object) "version ").append((Object) propertiesTrait.scalaPropOrElse("version.number", "(unknown)")).toString());
            propertiesTrait.scala$util$PropertiesTrait$_setter_$copyrightString_$eq(propertiesTrait.scalaPropOrElse("copyright.string", "Copyright 2002-2013, LAMP/EPFL"));
        }

        public static String clearProp(PropertiesTrait propertiesTrait, String str) {
            return System.clearProperty(str);
        }

        public static String encodingString(PropertiesTrait propertiesTrait) {
            return propertiesTrait.propOrElse("file.encoding", POBCommonConstants.URL_ENCODING);
        }

        public static String envOrElse(PropertiesTrait propertiesTrait, String str, String str2) {
            Option apply = Option$.MODULE$.apply(System.getenv(str));
            return (String) (apply.isEmpty() ? new PropertiesTrait$$anonfun$envOrElse$1(propertiesTrait, str2).alt$1 : apply.get());
        }

        public static Option envOrNone(PropertiesTrait propertiesTrait, String str) {
            return Option$.MODULE$.apply(System.getenv(str));
        }

        public static Option envOrSome(PropertiesTrait propertiesTrait, String str, Option option) {
            Option<String> envOrNone = propertiesTrait.envOrNone(str);
            PropertiesTrait$$anonfun$envOrSome$1 propertiesTrait$$anonfun$envOrSome$1 = new PropertiesTrait$$anonfun$envOrSome$1(propertiesTrait, option);
            Option<String> option2 = envOrNone;
            if (envOrNone.isEmpty()) {
                option2 = propertiesTrait$$anonfun$envOrSome$1.alt$2;
            }
            return option2;
        }

        public static boolean isAvian(PropertiesTrait propertiesTrait) {
            return propertiesTrait.javaVmName().contains("Avian");
        }

        public static boolean isJavaAtLeast(PropertiesTrait propertiesTrait, String str) {
            boolean z;
            Tuple2 parts$1 = parts$1(propertiesTrait, str);
            if (parts$1 != null) {
                Tuple2 tuple2 = new Tuple2(parts$1.mo269_1(), parts$1.mo268_2());
                String str2 = (String) tuple2.mo269_1();
                String str3 = (String) tuple2.mo268_2();
                Tuple2 parts$12 = parts$1(propertiesTrait, propertiesTrait.javaSpecVersion());
                if (parts$12 == null) {
                    throw new MatchError(parts$12);
                }
                Tuple2 tuple22 = new Tuple2(parts$12.mo269_1(), parts$12.mo268_2());
                String str4 = (String) tuple22.mo269_1();
                String str5 = (String) tuple22.mo268_2();
                Predef$ predef$ = Predef$.MODULE$;
                int i = new StringOps(str4).toInt();
                Predef$ predef$2 = Predef$.MODULE$;
                if (i >= new StringOps(str2).toInt()) {
                    Predef$ predef$3 = Predef$.MODULE$;
                    int i2 = new StringOps(str5).toInt();
                    Predef$ predef$4 = Predef$.MODULE$;
                    if (i2 >= new StringOps(str3).toInt()) {
                        z = true;
                        return z;
                    }
                }
                z = false;
                return z;
            }
            throw new MatchError(parts$1);
        }

        public static boolean isMac(PropertiesTrait propertiesTrait) {
            return propertiesTrait.osName().startsWith("Mac OS X");
        }

        public static boolean isWin(PropertiesTrait propertiesTrait) {
            return propertiesTrait.osName().startsWith("Windows");
        }

        public static String javaClassPath(PropertiesTrait propertiesTrait) {
            return propertiesTrait.propOrEmpty("java.class.path");
        }

        public static String javaHome(PropertiesTrait propertiesTrait) {
            return propertiesTrait.propOrEmpty("java.home");
        }

        public static String javaSpecName(PropertiesTrait propertiesTrait) {
            return propertiesTrait.propOrEmpty("java.specification.name");
        }

        public static String javaSpecVendor(PropertiesTrait propertiesTrait) {
            return propertiesTrait.propOrEmpty("java.specification.vendor");
        }

        public static String javaSpecVersion(PropertiesTrait propertiesTrait) {
            return propertiesTrait.propOrEmpty("java.specification.version");
        }

        public static String javaVendor(PropertiesTrait propertiesTrait) {
            return propertiesTrait.propOrEmpty("java.vendor");
        }

        public static String javaVersion(PropertiesTrait propertiesTrait) {
            return propertiesTrait.propOrEmpty("java.version");
        }

        public static String javaVmInfo(PropertiesTrait propertiesTrait) {
            return propertiesTrait.propOrEmpty("java.vm.info");
        }

        public static String javaVmName(PropertiesTrait propertiesTrait) {
            return propertiesTrait.propOrEmpty("java.vm.name");
        }

        public static String javaVmVendor(PropertiesTrait propertiesTrait) {
            return propertiesTrait.propOrEmpty("java.vm.vendor");
        }

        public static String javaVmVersion(PropertiesTrait propertiesTrait) {
            return propertiesTrait.propOrEmpty("java.vm.version");
        }

        public static String jdkHome(PropertiesTrait propertiesTrait) {
            return propertiesTrait.envOrElse("JDK_HOME", propertiesTrait.envOrElse("JAVA_HOME", propertiesTrait.javaHome()));
        }

        public static String lineSeparator(PropertiesTrait propertiesTrait) {
            return propertiesTrait.propOrElse("line.separator", "\n");
        }

        public static void main(PropertiesTrait propertiesTrait, String[] strArr) {
            new PrintWriter((OutputStream) Console$.MODULE$.err(), true).println(propertiesTrait.versionMsg());
        }

        public static String osName(PropertiesTrait propertiesTrait) {
            return propertiesTrait.propOrEmpty("os.name");
        }

        private static final Tuple2 parts$1(PropertiesTrait propertiesTrait, String str) {
            int indexOf = str.indexOf(46);
            if (indexOf >= 0) {
                return new Tuple2(str.substring(0, indexOf), str.substring(indexOf + 1, str.length()));
            }
            throw new NumberFormatException(new StringBuilder().append((Object) "Not a version: ").append((Object) str).toString());
        }

        public static boolean propIsSet(PropertiesTrait propertiesTrait, String str) {
            return System.getProperty(str) != null;
        }

        public static boolean propIsSetTo(PropertiesTrait propertiesTrait, String str, String str2) {
            String propOrNull = propertiesTrait.propOrNull(str);
            return propOrNull != null ? propOrNull.equals(str2) : str2 == null;
        }

        public static String propOrElse(PropertiesTrait propertiesTrait, String str, String str2) {
            return System.getProperty(str, str2);
        }

        public static String propOrEmpty(PropertiesTrait propertiesTrait, String str) {
            return propertiesTrait.propOrElse(str, "");
        }

        public static boolean propOrFalse(PropertiesTrait propertiesTrait, String str) {
            boolean z;
            Option<String> propOrNone = propertiesTrait.propOrNone(str);
            if (!propOrNone.isEmpty()) {
                String str2 = propOrNone.get();
                List$ list$ = List$.MODULE$;
                if (Predef$.MODULE$.wrapRefArray(new String[]{"yes", "on", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE}).toList().contains(str2.toLowerCase())) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        }

        public static Option propOrNone(PropertiesTrait propertiesTrait, String str) {
            return Option$.MODULE$.apply(propertiesTrait.propOrNull(str));
        }

        public static String propOrNull(PropertiesTrait propertiesTrait, String str) {
            return propertiesTrait.propOrElse(str, null);
        }

        private static void quietlyDispose(PropertiesTrait propertiesTrait, Function0 function0, Function0 function02) {
            try {
                function0.apply$mcV$sp();
                try {
                    function02.apply$mcV$sp();
                } catch (IOException e) {
                }
            } catch (Throwable th) {
                try {
                    function02.apply$mcV$sp();
                } catch (IOException e2) {
                }
                throw th;
            }
        }

        public static String scala$util$PropertiesTrait$$versionFor(PropertiesTrait propertiesTrait, String str) {
            return new StringOps("Scala %s %s -- %s").format(Predef$.MODULE$.genericWrapArray(new Object[]{str, propertiesTrait.versionString(), propertiesTrait.copyrightString()}));
        }

        public static String scalaCmd(PropertiesTrait propertiesTrait) {
            return propertiesTrait.isWin() ? "scala.bat" : "scala";
        }

        public static String scalaHome(PropertiesTrait propertiesTrait) {
            return propertiesTrait.propOrEmpty("scala.home");
        }

        public static String scalaPropOrElse(PropertiesTrait propertiesTrait, String str, String str2) {
            Option<String> scalaPropOrNone = propertiesTrait.scalaPropOrNone(str);
            return scalaPropOrNone.isEmpty() ? new PropertiesTrait$$anonfun$scalaPropOrElse$1(propertiesTrait, str2).alt$3 : scalaPropOrNone.get();
        }

        public static String scalaPropOrEmpty(PropertiesTrait propertiesTrait, String str) {
            return propertiesTrait.scalaPropOrElse(str, "");
        }

        public static Option scalaPropOrNone(PropertiesTrait propertiesTrait, String str) {
            Option<String> apply = Option$.MODULE$.apply(propertiesTrait.scalaProps().getProperty(str));
            Option<String> option = apply;
            if (apply.isEmpty()) {
                option = propertiesTrait.propOrNone(new StringBuilder().append((Object) "scala.").append((Object) str).toString());
            }
            return option;
        }

        public static Properties scalaProps(PropertiesTrait propertiesTrait) {
            Properties properties = new Properties();
            InputStream resourceAsStream = propertiesTrait.pickJarBasedOn().getResourceAsStream(propertiesTrait.propFilename());
            if (resourceAsStream != null) {
                quietlyDispose(propertiesTrait, new PropertiesTrait$$anonfun$scalaProps$1(propertiesTrait, properties, resourceAsStream), new PropertiesTrait$$anonfun$scalaProps$2(propertiesTrait, resourceAsStream));
            }
            return properties;
        }

        public static String scalacCmd(PropertiesTrait propertiesTrait) {
            return propertiesTrait.isWin() ? "scalac.bat" : "scalac";
        }

        public static String setProp(PropertiesTrait propertiesTrait, String str, String str2) {
            return System.setProperty(str, str2);
        }

        public static String sourceEncoding(PropertiesTrait propertiesTrait) {
            return propertiesTrait.scalaPropOrElse("file.encoding", POBCommonConstants.URL_ENCODING);
        }

        public static String sourceReader(PropertiesTrait propertiesTrait) {
            return propertiesTrait.scalaPropOrElse("source.reader", "scala.tools.nsc.io.SourceReader");
        }

        public static String tmpDir(PropertiesTrait propertiesTrait) {
            return propertiesTrait.propOrEmpty("java.io.tmpdir");
        }

        public static String userDir(PropertiesTrait propertiesTrait) {
            return propertiesTrait.propOrEmpty("user.dir");
        }

        public static String userHome(PropertiesTrait propertiesTrait) {
            return propertiesTrait.propOrEmpty("user.home");
        }

        public static String userName(PropertiesTrait propertiesTrait) {
            return propertiesTrait.propOrEmpty("user.name");
        }

        public static String versionMsg(PropertiesTrait propertiesTrait) {
            return scala$util$PropertiesTrait$$versionFor(propertiesTrait, propertiesTrait.propCategory());
        }

        public static String versionNumberString(PropertiesTrait propertiesTrait) {
            return propertiesTrait.scalaPropOrEmpty("version.number");
        }
    }

    String clearProp(String str);

    String copyrightString();

    Option<String> developmentVersion();

    String encodingString();

    String envOrElse(String str, String str2);

    Option<String> envOrNone(String str);

    Option<String> envOrSome(String str, Option<String> option);

    boolean isAvian();

    boolean isJavaAtLeast(String str);

    boolean isMac();

    boolean isWin();

    String javaClassPath();

    String javaHome();

    String javaSpecName();

    String javaSpecVendor();

    String javaSpecVersion();

    String javaVendor();

    String javaVersion();

    String javaVmInfo();

    String javaVmName();

    String javaVmVendor();

    String javaVmVersion();

    String jdkHome();

    String lineSeparator();

    void main(String[] strArr);

    String osName();

    Class<?> pickJarBasedOn();

    String propCategory();

    String propFilename();

    boolean propIsSet(String str);

    boolean propIsSetTo(String str, String str2);

    String propOrElse(String str, String str2);

    String propOrEmpty(String str);

    boolean propOrFalse(String str);

    Option<String> propOrNone(String str);

    String propOrNull(String str);

    Option<String> releaseVersion();

    void scala$util$PropertiesTrait$_setter_$copyrightString_$eq(String str);

    void scala$util$PropertiesTrait$_setter_$developmentVersion_$eq(Option option);

    void scala$util$PropertiesTrait$_setter_$propFilename_$eq(String str);

    void scala$util$PropertiesTrait$_setter_$releaseVersion_$eq(Option option);

    void scala$util$PropertiesTrait$_setter_$versionString_$eq(String str);

    String scalaCmd();

    String scalaHome();

    String scalaPropOrElse(String str, String str2);

    String scalaPropOrEmpty(String str);

    Option<String> scalaPropOrNone(String str);

    Properties scalaProps();

    String scalacCmd();

    String setProp(String str, String str2);

    String sourceEncoding();

    String sourceReader();

    String tmpDir();

    String userDir();

    String userHome();

    String userName();

    String versionMsg();

    String versionNumberString();

    String versionString();
}
