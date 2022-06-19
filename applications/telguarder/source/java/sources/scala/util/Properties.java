package scala.util;

import java.util.jar.Attributes;
import scala.Option;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u00019;Q!\u0001\u0002\t\u0002\u001d\t!\u0002\u0015:pa\u0016\u0014H/[3t\u0015\t\u0019A!\u0001\u0003vi&d'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001A\u0011\u0001\"C\u0007\u0002\u0005\u0019)!B\u0001E\u0001\u0017\tQ\u0001K]8qKJ$\u0018.Z:\u0014\u0007%a\u0001\u0003\u0005\u0002\u000e\u001d5\tA!\u0003\u0002\u0010\t\t1\u0011I\\=SK\u001a\u0004\"\u0001C\t\n\u0005I\u0011!a\u0004)s_B,'\u000f^5fgR\u0013\u0018-\u001b;\t\u000bQIA\u0011A\u000b\u0002\rqJg.\u001b;?)\u00059\u0001\"B\f\n\t#A\u0012\u0001\u00049s_B\u001c\u0015\r^3h_JLX#A\r\u0011\u0005iyR\"A\u000e\u000b\u0005qi\u0012\u0001\u00027b]\u001eT\u0011AH\u0001\u0005U\u00064\u0018-\u0003\u0002!7\t11\u000b\u001e:j]\u001eDQAI\u0005\u0005\u0012\r\na\u0002]5dW*\u000b'OQ1tK\u0012|e.F\u0001%!\rQReJ\u0005\u0003Mm\u0011Qa\u00117bgN\u0004$\u0001K\u0017\u0011\u00075I3&\u0003\u0002+\t\t1q\n\u001d;j_:\u0004\"\u0001L\u0017\r\u0001\u0011Ia&IA\u0001\u0002\u0003\u0015\ta\f\u0002\u0004?\u0012\n\u0014C\u0001\u00194!\ti\u0011'\u0003\u00023\t\t9aj\u001c;iS:<\u0007CA\u00075\u0013\t)DAA\u0002B]fDqaN\u0005C\u0002\u0013\u0005\u0001(\u0001\u000bTG\u0006d\u0017mQ8na&dWM\u001d,feNLwN\\\u000b\u0002sA\u0011!(\u0013\b\u0003w\u0019s!\u0001P\"\u000f\u0005u\u0012eB\u0001 B\u001b\u0005y$B\u0001!\u0007\u0003\u0019a$o\\8u}%\ta$\u0003\u0002\u0004;%\u0011A)R\u0001\u0004U\u0006\u0014(BA\u0002\u001e\u0013\t9\u0005*\u0001\u0006BiR\u0014\u0018NY;uKNT!\u0001R#\n\u0005)[%\u0001\u0002(b[\u0016T!a\u0012%\t\r5K\u0001\u0015!\u0003:\u0003U\u00196-\u00197b\u0007>l\u0007/\u001b7feZ+'o]5p]\u0002\u0002")
/* loaded from: classes3-dex2jar.jar:scala/util/Properties.class */
public final class Properties {
    public static Attributes.Name ScalaCompilerVersion() {
        return Properties$.MODULE$.ScalaCompilerVersion();
    }

    public static String clearProp(String str) {
        return Properties$.MODULE$.clearProp(str);
    }

    public static String copyrightString() {
        return Properties$.MODULE$.copyrightString();
    }

    public static Option<String> developmentVersion() {
        return Properties$.MODULE$.developmentVersion();
    }

    public static String encodingString() {
        return Properties$.MODULE$.encodingString();
    }

    public static String envOrElse(String str, String str2) {
        return Properties$.MODULE$.envOrElse(str, str2);
    }

    public static Option<String> envOrNone(String str) {
        return Properties$.MODULE$.envOrNone(str);
    }

    public static Option<String> envOrSome(String str, Option<String> option) {
        return Properties$.MODULE$.envOrSome(str, option);
    }

    public static boolean isJavaAtLeast(String str) {
        return Properties$.MODULE$.isJavaAtLeast(str);
    }

    public static boolean isMac() {
        return Properties$.MODULE$.isMac();
    }

    public static boolean isWin() {
        return Properties$.MODULE$.isWin();
    }

    public static String javaClassPath() {
        return Properties$.MODULE$.javaClassPath();
    }

    public static String javaHome() {
        return Properties$.MODULE$.javaHome();
    }

    public static String javaSpecName() {
        return Properties$.MODULE$.javaSpecName();
    }

    public static String javaSpecVendor() {
        return Properties$.MODULE$.javaSpecVendor();
    }

    public static String javaSpecVersion() {
        return Properties$.MODULE$.javaSpecVersion();
    }

    public static String javaVendor() {
        return Properties$.MODULE$.javaVendor();
    }

    public static String javaVersion() {
        return Properties$.MODULE$.javaVersion();
    }

    public static String javaVmInfo() {
        return Properties$.MODULE$.javaVmInfo();
    }

    public static String javaVmName() {
        return Properties$.MODULE$.javaVmName();
    }

    public static String javaVmVendor() {
        return Properties$.MODULE$.javaVmVendor();
    }

    public static String javaVmVersion() {
        return Properties$.MODULE$.javaVmVersion();
    }

    public static String jdkHome() {
        return Properties$.MODULE$.jdkHome();
    }

    public static String lineSeparator() {
        return Properties$.MODULE$.lineSeparator();
    }

    public static void main(String[] strArr) {
        Properties$.MODULE$.main(strArr);
    }

    public static String osName() {
        return Properties$.MODULE$.osName();
    }

    public static String propFilename() {
        return Properties$.MODULE$.propFilename();
    }

    public static boolean propIsSet(String str) {
        return Properties$.MODULE$.propIsSet(str);
    }

    public static boolean propIsSetTo(String str, String str2) {
        return Properties$.MODULE$.propIsSetTo(str, str2);
    }

    public static String propOrElse(String str, String str2) {
        return Properties$.MODULE$.propOrElse(str, str2);
    }

    public static String propOrEmpty(String str) {
        return Properties$.MODULE$.propOrEmpty(str);
    }

    public static boolean propOrFalse(String str) {
        return Properties$.MODULE$.propOrFalse(str);
    }

    public static Option<String> propOrNone(String str) {
        return Properties$.MODULE$.propOrNone(str);
    }

    public static String propOrNull(String str) {
        return Properties$.MODULE$.propOrNull(str);
    }

    public static Option<String> releaseVersion() {
        return Properties$.MODULE$.releaseVersion();
    }

    public static String scalaCmd() {
        return Properties$.MODULE$.scalaCmd();
    }

    public static String scalaHome() {
        return Properties$.MODULE$.scalaHome();
    }

    public static String scalaPropOrElse(String str, String str2) {
        return Properties$.MODULE$.scalaPropOrElse(str, str2);
    }

    public static String scalaPropOrEmpty(String str) {
        return Properties$.MODULE$.scalaPropOrEmpty(str);
    }

    public static Option<String> scalaPropOrNone(String str) {
        return Properties$.MODULE$.scalaPropOrNone(str);
    }

    public static java.util.Properties scalaProps() {
        return Properties$.MODULE$.scalaProps();
    }

    public static String scalacCmd() {
        return Properties$.MODULE$.scalacCmd();
    }

    public static String setProp(String str, String str2) {
        return Properties$.MODULE$.setProp(str, str2);
    }

    public static String sourceEncoding() {
        return Properties$.MODULE$.sourceEncoding();
    }

    public static String sourceReader() {
        return Properties$.MODULE$.sourceReader();
    }

    public static String tmpDir() {
        return Properties$.MODULE$.tmpDir();
    }

    public static String userDir() {
        return Properties$.MODULE$.userDir();
    }

    public static String userHome() {
        return Properties$.MODULE$.userHome();
    }

    public static String userName() {
        return Properties$.MODULE$.userName();
    }

    public static String versionMsg() {
        return Properties$.MODULE$.versionMsg();
    }

    public static String versionNumberString() {
        return Properties$.MODULE$.versionNumberString();
    }

    public static String versionString() {
        return Properties$.MODULE$.versionString();
    }
}
