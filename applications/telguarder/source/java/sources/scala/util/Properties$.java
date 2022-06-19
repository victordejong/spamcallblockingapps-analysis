package scala.util;

import java.util.Properties;
import java.util.jar.Attributes;
import scala.Option;
import scala.runtime.BoxedUnit;
import scala.util.PropertiesTrait;
/* loaded from: classes3-dex2jar.jar:scala/util/Properties$.class */
public final class Properties$ implements PropertiesTrait {
    public static final Properties$ MODULE$ = null;
    private final Attributes.Name ScalaCompilerVersion = new Attributes.Name("Scala-Compiler-Version");
    private volatile boolean bitmap$0;
    private final String copyrightString;
    private final Option<String> developmentVersion;
    private final String propFilename;
    private final Option<String> releaseVersion;
    private final Properties scalaProps;
    private final String versionString;

    static {
        new Properties$();
    }

    private Properties$() {
        MODULE$ = this;
        PropertiesTrait.Cclass.$init$(this);
    }

    private Properties scalaProps$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                this.scalaProps = PropertiesTrait.Cclass.scalaProps(this);
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.scalaProps;
    }

    public Attributes.Name ScalaCompilerVersion() {
        return this.ScalaCompilerVersion;
    }

    @Override // scala.util.PropertiesTrait
    public String clearProp(String str) {
        return PropertiesTrait.Cclass.clearProp(this, str);
    }

    @Override // scala.util.PropertiesTrait
    public String copyrightString() {
        return this.copyrightString;
    }

    @Override // scala.util.PropertiesTrait
    public Option<String> developmentVersion() {
        return this.developmentVersion;
    }

    @Override // scala.util.PropertiesTrait
    public String encodingString() {
        return PropertiesTrait.Cclass.encodingString(this);
    }

    @Override // scala.util.PropertiesTrait
    public String envOrElse(String str, String str2) {
        return PropertiesTrait.Cclass.envOrElse(this, str, str2);
    }

    @Override // scala.util.PropertiesTrait
    public Option<String> envOrNone(String str) {
        return PropertiesTrait.Cclass.envOrNone(this, str);
    }

    @Override // scala.util.PropertiesTrait
    public Option<String> envOrSome(String str, Option<String> option) {
        return PropertiesTrait.Cclass.envOrSome(this, str, option);
    }

    @Override // scala.util.PropertiesTrait
    public boolean isAvian() {
        return PropertiesTrait.Cclass.isAvian(this);
    }

    @Override // scala.util.PropertiesTrait
    public boolean isJavaAtLeast(String str) {
        return PropertiesTrait.Cclass.isJavaAtLeast(this, str);
    }

    @Override // scala.util.PropertiesTrait
    public boolean isMac() {
        return PropertiesTrait.Cclass.isMac(this);
    }

    @Override // scala.util.PropertiesTrait
    public boolean isWin() {
        return PropertiesTrait.Cclass.isWin(this);
    }

    @Override // scala.util.PropertiesTrait
    public String javaClassPath() {
        return PropertiesTrait.Cclass.javaClassPath(this);
    }

    @Override // scala.util.PropertiesTrait
    public String javaHome() {
        return PropertiesTrait.Cclass.javaHome(this);
    }

    @Override // scala.util.PropertiesTrait
    public String javaSpecName() {
        return PropertiesTrait.Cclass.javaSpecName(this);
    }

    @Override // scala.util.PropertiesTrait
    public String javaSpecVendor() {
        return PropertiesTrait.Cclass.javaSpecVendor(this);
    }

    @Override // scala.util.PropertiesTrait
    public String javaSpecVersion() {
        return PropertiesTrait.Cclass.javaSpecVersion(this);
    }

    @Override // scala.util.PropertiesTrait
    public String javaVendor() {
        return PropertiesTrait.Cclass.javaVendor(this);
    }

    @Override // scala.util.PropertiesTrait
    public String javaVersion() {
        return PropertiesTrait.Cclass.javaVersion(this);
    }

    @Override // scala.util.PropertiesTrait
    public String javaVmInfo() {
        return PropertiesTrait.Cclass.javaVmInfo(this);
    }

    @Override // scala.util.PropertiesTrait
    public String javaVmName() {
        return PropertiesTrait.Cclass.javaVmName(this);
    }

    @Override // scala.util.PropertiesTrait
    public String javaVmVendor() {
        return PropertiesTrait.Cclass.javaVmVendor(this);
    }

    @Override // scala.util.PropertiesTrait
    public String javaVmVersion() {
        return PropertiesTrait.Cclass.javaVmVersion(this);
    }

    @Override // scala.util.PropertiesTrait
    public String jdkHome() {
        return PropertiesTrait.Cclass.jdkHome(this);
    }

    @Override // scala.util.PropertiesTrait
    public String lineSeparator() {
        return PropertiesTrait.Cclass.lineSeparator(this);
    }

    @Override // scala.util.PropertiesTrait
    public void main(String[] strArr) {
        PropertiesTrait.Cclass.main(this, strArr);
    }

    @Override // scala.util.PropertiesTrait
    public String osName() {
        return PropertiesTrait.Cclass.osName(this);
    }

    @Override // scala.util.PropertiesTrait
    public Class<Option<?>> pickJarBasedOn() {
        return Option.class;
    }

    @Override // scala.util.PropertiesTrait
    public String propCategory() {
        return "library";
    }

    @Override // scala.util.PropertiesTrait
    public String propFilename() {
        return this.propFilename;
    }

    @Override // scala.util.PropertiesTrait
    public boolean propIsSet(String str) {
        return PropertiesTrait.Cclass.propIsSet(this, str);
    }

    @Override // scala.util.PropertiesTrait
    public boolean propIsSetTo(String str, String str2) {
        return PropertiesTrait.Cclass.propIsSetTo(this, str, str2);
    }

    @Override // scala.util.PropertiesTrait
    public String propOrElse(String str, String str2) {
        return PropertiesTrait.Cclass.propOrElse(this, str, str2);
    }

    @Override // scala.util.PropertiesTrait
    public String propOrEmpty(String str) {
        return PropertiesTrait.Cclass.propOrEmpty(this, str);
    }

    @Override // scala.util.PropertiesTrait
    public boolean propOrFalse(String str) {
        return PropertiesTrait.Cclass.propOrFalse(this, str);
    }

    @Override // scala.util.PropertiesTrait
    public Option<String> propOrNone(String str) {
        return PropertiesTrait.Cclass.propOrNone(this, str);
    }

    @Override // scala.util.PropertiesTrait
    public String propOrNull(String str) {
        return PropertiesTrait.Cclass.propOrNull(this, str);
    }

    @Override // scala.util.PropertiesTrait
    public Option<String> releaseVersion() {
        return this.releaseVersion;
    }

    @Override // scala.util.PropertiesTrait
    public void scala$util$PropertiesTrait$_setter_$copyrightString_$eq(String str) {
        this.copyrightString = str;
    }

    @Override // scala.util.PropertiesTrait
    public void scala$util$PropertiesTrait$_setter_$developmentVersion_$eq(Option option) {
        this.developmentVersion = option;
    }

    @Override // scala.util.PropertiesTrait
    public void scala$util$PropertiesTrait$_setter_$propFilename_$eq(String str) {
        this.propFilename = str;
    }

    @Override // scala.util.PropertiesTrait
    public void scala$util$PropertiesTrait$_setter_$releaseVersion_$eq(Option option) {
        this.releaseVersion = option;
    }

    @Override // scala.util.PropertiesTrait
    public void scala$util$PropertiesTrait$_setter_$versionString_$eq(String str) {
        this.versionString = str;
    }

    @Override // scala.util.PropertiesTrait
    public String scalaCmd() {
        return PropertiesTrait.Cclass.scalaCmd(this);
    }

    @Override // scala.util.PropertiesTrait
    public String scalaHome() {
        return PropertiesTrait.Cclass.scalaHome(this);
    }

    @Override // scala.util.PropertiesTrait
    public String scalaPropOrElse(String str, String str2) {
        return PropertiesTrait.Cclass.scalaPropOrElse(this, str, str2);
    }

    @Override // scala.util.PropertiesTrait
    public String scalaPropOrEmpty(String str) {
        return PropertiesTrait.Cclass.scalaPropOrEmpty(this, str);
    }

    @Override // scala.util.PropertiesTrait
    public Option<String> scalaPropOrNone(String str) {
        return PropertiesTrait.Cclass.scalaPropOrNone(this, str);
    }

    @Override // scala.util.PropertiesTrait
    public Properties scalaProps() {
        return this.bitmap$0 ? this.scalaProps : scalaProps$lzycompute();
    }

    @Override // scala.util.PropertiesTrait
    public String scalacCmd() {
        return PropertiesTrait.Cclass.scalacCmd(this);
    }

    @Override // scala.util.PropertiesTrait
    public String setProp(String str, String str2) {
        return PropertiesTrait.Cclass.setProp(this, str, str2);
    }

    @Override // scala.util.PropertiesTrait
    public String sourceEncoding() {
        return PropertiesTrait.Cclass.sourceEncoding(this);
    }

    @Override // scala.util.PropertiesTrait
    public String sourceReader() {
        return PropertiesTrait.Cclass.sourceReader(this);
    }

    @Override // scala.util.PropertiesTrait
    public String tmpDir() {
        return PropertiesTrait.Cclass.tmpDir(this);
    }

    @Override // scala.util.PropertiesTrait
    public String userDir() {
        return PropertiesTrait.Cclass.userDir(this);
    }

    @Override // scala.util.PropertiesTrait
    public String userHome() {
        return PropertiesTrait.Cclass.userHome(this);
    }

    @Override // scala.util.PropertiesTrait
    public String userName() {
        return PropertiesTrait.Cclass.userName(this);
    }

    @Override // scala.util.PropertiesTrait
    public String versionMsg() {
        return PropertiesTrait.Cclass.versionMsg(this);
    }

    @Override // scala.util.PropertiesTrait
    public String versionNumberString() {
        return PropertiesTrait.Cclass.versionNumberString(this);
    }

    @Override // scala.util.PropertiesTrait
    public String versionString() {
        return this.versionString;
    }
}
