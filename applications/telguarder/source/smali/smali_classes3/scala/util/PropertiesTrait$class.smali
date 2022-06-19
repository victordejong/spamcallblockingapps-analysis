.class public abstract Lscala/util/PropertiesTrait$class;
.super Ljava/lang/Object;
.source "Properties.scala"


# direct methods
.method public static $init$(Lscala/util/PropertiesTrait;)V
    .locals 4

    .line 31
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lscala/util/PropertiesTrait;->propCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ".properties"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->scala$util$PropertiesTrait$_setter_$propFilename_$eq(Ljava/lang/String;)V

    const-string v0, "maven.version.number"

    .line 80
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->scalaPropOrNone(Ljava/lang/String;)Lscala/Option;

    move-result-object v1

    new-instance v2, Lscala/util/PropertiesTrait$$anonfun$1;

    invoke-direct {v2, p0}, Lscala/util/PropertiesTrait$$anonfun$1;-><init>(Lscala/util/PropertiesTrait;)V

    new-instance v3, Lscala/Option$WithFilter;

    invoke-direct {v3, v1, v2}, Lscala/Option$WithFilter;-><init>(Lscala/Option;Lscala/Function1;)V

    new-instance v1, Lscala/util/PropertiesTrait$$anonfun$2;

    invoke-direct {v1, p0}, Lscala/util/PropertiesTrait$$anonfun$2;-><init>(Lscala/util/PropertiesTrait;)V

    invoke-virtual {v3, v1}, Lscala/Option$WithFilter;->map(Lscala/Function1;)Lscala/Option;

    move-result-object v1

    .line 78
    invoke-interface {p0, v1}, Lscala/util/PropertiesTrait;->scala$util$PropertiesTrait$_setter_$releaseVersion_$eq(Lscala/Option;)V

    .line 94
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->scalaPropOrNone(Ljava/lang/String;)Lscala/Option;

    move-result-object v0

    .line 95
    new-instance v1, Lscala/util/PropertiesTrait$$anonfun$3;

    invoke-direct {v1, p0}, Lscala/util/PropertiesTrait$$anonfun$3;-><init>(Lscala/util/PropertiesTrait;)V

    new-instance v2, Lscala/Option$WithFilter;

    invoke-direct {v2, v0, v1}, Lscala/Option$WithFilter;-><init>(Lscala/Option;Lscala/Function1;)V

    .line 94
    new-instance v0, Lscala/util/PropertiesTrait$$anonfun$4;

    invoke-direct {v0, p0}, Lscala/util/PropertiesTrait$$anonfun$4;-><init>(Lscala/util/PropertiesTrait;)V

    invoke-virtual {v2, v0}, Lscala/Option$WithFilter;->flatMap(Lscala/Function1;)Lscala/Option;

    move-result-object v0

    .line 92
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->scala$util$PropertiesTrait$_setter_$developmentVersion_$eq(Lscala/Option;)V

    .line 107
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "version "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, "version.number"

    const-string v2, "(unknown)"

    invoke-interface {p0, v1, v2}, Lscala/util/PropertiesTrait;->scalaPropOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->scala$util$PropertiesTrait$_setter_$versionString_$eq(Ljava/lang/String;)V

    const-string v0, "copyright.string"

    const-string v1, "Copyright 2002-2013, LAMP/EPFL"

    .line 108
    invoke-interface {p0, v0, v1}, Lscala/util/PropertiesTrait;->scalaPropOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->scala$util$PropertiesTrait$_setter_$copyrightString_$eq(Ljava/lang/String;)V

    return-void
.end method

.method public static clearProp(Lscala/util/PropertiesTrait;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-static {p1}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodingString(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 2

    const-string v0, "file.encoding"

    const-string v1, "UTF-8"

    .line 119
    invoke-interface {p0, v0, v1}, Lscala/util/PropertiesTrait;->propOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static envOrElse(Lscala/util/PropertiesTrait;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lscala/Option$;->MODULE$:Lscala/Option$;

    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/Option$;->apply(Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    new-instance v0, Lscala/util/PropertiesTrait$$anonfun$envOrElse$1;

    invoke-direct {v0, p0, p2}, Lscala/util/PropertiesTrait$$anonfun$envOrElse$1;-><init>(Lscala/util/PropertiesTrait;Ljava/lang/String;)V

    invoke-virtual {p1}, Lscala/Option;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lscala/util/PropertiesTrait$$anonfun$envOrElse$1;->alt$1:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static envOrNone(Lscala/util/PropertiesTrait;Ljava/lang/String;)Lscala/Option;
    .locals 0

    .line 61
    sget-object p0, Lscala/Option$;->MODULE$:Lscala/Option$;

    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/Option$;->apply(Ljava/lang/Object;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static envOrSome(Lscala/util/PropertiesTrait;Ljava/lang/String;Lscala/Option;)Lscala/Option;
    .locals 1

    .line 63
    invoke-interface {p0, p1}, Lscala/util/PropertiesTrait;->envOrNone(Ljava/lang/String;)Lscala/Option;

    move-result-object p1

    new-instance v0, Lscala/util/PropertiesTrait$$anonfun$envOrSome$1;

    invoke-direct {v0, p0, p2}, Lscala/util/PropertiesTrait$$anonfun$envOrSome$1;-><init>(Lscala/util/PropertiesTrait;Lscala/Option;)V

    invoke-virtual {p1}, Lscala/Option;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lscala/util/PropertiesTrait$$anonfun$envOrSome$1;->alt$2:Lscala/Option;

    move-object p1, p0

    check-cast p1, Lscala/Option;

    :cond_0
    return-object p1
.end method

.method public static isAvian(Lscala/util/PropertiesTrait;)Z
    .locals 1

    .line 153
    invoke-interface {p0}, Lscala/util/PropertiesTrait;->javaVmName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Avian"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isJavaAtLeast(Lscala/util/PropertiesTrait;Ljava/lang/String;)Z
    .locals 4

    .line 187
    invoke-static {p0, p1}, Lscala/util/PropertiesTrait$class;->parts$1(Lscala/util/PropertiesTrait;Ljava/lang/String;)Lscala/Tuple2;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    invoke-interface {p0}, Lscala/util/PropertiesTrait;->javaSpecVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lscala/util/PropertiesTrait$class;->parts$1(Lscala/util/PropertiesTrait;Ljava/lang/String;)Lscala/Tuple2;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    new-instance v2, Lscala/collection/immutable/StringOps;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {v2, p0}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result p0

    new-instance v2, Lscala/collection/immutable/StringOps;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {v2, p1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result p1

    if-lt p0, p1, :cond_0

    new-instance p0, Lscala/collection/immutable/StringOps;

    sget-object p1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {p0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result p0

    new-instance p1, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {p1, v0}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 188
    :cond_1
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, p0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 187
    :cond_2
    new-instance p0, Lscala/MatchError;

    invoke-direct {p0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static isMac(Lscala/util/PropertiesTrait;)Z
    .locals 1

    .line 150
    invoke-interface {p0}, Lscala/util/PropertiesTrait;->osName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Mac OS X"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isWin(Lscala/util/PropertiesTrait;)Z
    .locals 1

    .line 146
    invoke-interface {p0}, Lscala/util/PropertiesTrait;->osName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Windows"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static javaClassPath(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 1

    const-string v0, "java.class.path"

    .line 126
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->propOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static javaHome(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 1

    const-string v0, "java.home"

    .line 127
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->propOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static javaSpecName(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 1

    const-string v0, "java.specification.name"

    .line 136
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->propOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static javaSpecVendor(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 1

    const-string v0, "java.specification.vendor"

    .line 135
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->propOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static javaSpecVersion(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 1

    const-string v0, "java.specification.version"

    .line 134
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->propOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static javaVendor(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 1

    const-string v0, "java.vendor"

    .line 128
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->propOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static javaVersion(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 1

    const-string v0, "java.version"

    .line 129
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->propOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static javaVmInfo(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 1

    const-string v0, "java.vm.info"

    .line 130
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->propOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static javaVmName(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 1

    const-string v0, "java.vm.name"

    .line 131
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->propOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static javaVmVendor(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 1

    const-string v0, "java.vm.vendor"

    .line 132
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->propOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static javaVmVersion(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 1

    const-string v0, "java.vm.version"

    .line 133
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->propOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static jdkHome(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 2

    .line 158
    invoke-interface {p0}, Lscala/util/PropertiesTrait;->javaHome()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JAVA_HOME"

    invoke-interface {p0, v1, v0}, Lscala/util/PropertiesTrait;->envOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JDK_HOME"

    invoke-interface {p0, v1, v0}, Lscala/util/PropertiesTrait;->envOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lineSeparator(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 2

    const-string v0, "line.separator"

    const-string v1, "\n"

    .line 123
    invoke-interface {p0, v0, v1}, Lscala/util/PropertiesTrait;->propOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static main(Lscala/util/PropertiesTrait;[Ljava/lang/String;)V
    .locals 2

    .line 194
    new-instance p1, Ljava/io/PrintWriter;

    sget-object v0, Lscala/Console$;->MODULE$:Lscala/Console$;

    invoke-virtual {v0}, Lscala/Console$;->err()Ljava/io/PrintStream;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 195
    invoke-interface {p0}, Lscala/util/PropertiesTrait;->versionMsg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static osName(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 1

    const-string v0, "os.name"

    .line 137
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->propOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final parts$1(Lscala/util/PropertiesTrait;Ljava/lang/String;)Lscala/Tuple2;
    .locals 3

    const/16 p0, 0x2e

    .line 183
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    .line 185
    new-instance v0, Lscala/Tuple2;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 184
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "Not a version: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static propIsSet(Lscala/util/PropertiesTrait;Ljava/lang/String;)Z
    .locals 0

    .line 50
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static propIsSetTo(Lscala/util/PropertiesTrait;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 51
    invoke-interface {p0, p1}, Lscala/util/PropertiesTrait;->propOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static propOrElse(Lscala/util/PropertiesTrait;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-static {p1, p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static propOrEmpty(Lscala/util/PropertiesTrait;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 53
    invoke-interface {p0, p1, v0}, Lscala/util/PropertiesTrait;->propOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static propOrFalse(Lscala/util/PropertiesTrait;Ljava/lang/String;)Z
    .locals 3

    .line 56
    invoke-interface {p0, p1}, Lscala/util/PropertiesTrait;->propOrNone(Ljava/lang/String;)Lscala/Option;

    move-result-object p0

    invoke-virtual {p0}, Lscala/Option;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object p1, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    sget-object p1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v0, "yes"

    const-string v1, "on"

    const-string v2, "true"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/Seq;->toList()Lscala/collection/immutable/List;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lscala/collection/immutable/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static propOrNone(Lscala/util/PropertiesTrait;Ljava/lang/String;)Lscala/Option;
    .locals 1

    .line 55
    sget-object v0, Lscala/Option$;->MODULE$:Lscala/Option$;

    invoke-interface {p0, p1}, Lscala/util/PropertiesTrait;->propOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/Option$;->apply(Ljava/lang/Object;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static propOrNull(Lscala/util/PropertiesTrait;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-interface {p0, p1, v0}, Lscala/util/PropertiesTrait;->propOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static quietlyDispose(Lscala/util/PropertiesTrait;Lscala/Function0;Lscala/Function0;)V
    .locals 0

    .line 44
    :try_start_0
    invoke-interface {p1}, Lscala/Function0;->apply$mcV$sp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :try_start_1
    invoke-interface {p2}, Lscala/Function0;->apply$mcV$sp()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-interface {p2}, Lscala/Function0;->apply$mcV$sp()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    throw p0
.end method

.method public static scala$util$PropertiesTrait$$versionFor(Lscala/util/PropertiesTrait;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 161
    invoke-interface {p0}, Lscala/util/PropertiesTrait;->versionString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lscala/util/PropertiesTrait;->copyrightString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lscala/collection/immutable/StringOps;

    const-string v2, "Scala %s %s -- %s"

    invoke-direct {v1, v2}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    const/4 p1, 0x2

    aput-object p0, v3, p1

    invoke-virtual {v2, v3}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p0

    invoke-virtual {v1, p0}, Lscala/collection/immutable/StringOps;->format(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static scalaCmd(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 0

    .line 164
    invoke-interface {p0}, Lscala/util/PropertiesTrait;->isWin()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "scala.bat"

    goto :goto_0

    :cond_0
    const-string p0, "scala"

    :goto_0
    return-object p0
.end method

.method public static scalaHome(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 1

    const-string v0, "scala.home"

    .line 138
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->propOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static scalaPropOrElse(Lscala/util/PropertiesTrait;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 66
    invoke-interface {p0, p1}, Lscala/util/PropertiesTrait;->scalaPropOrNone(Ljava/lang/String;)Lscala/Option;

    move-result-object p1

    new-instance v0, Lscala/util/PropertiesTrait$$anonfun$scalaPropOrElse$1;

    invoke-direct {v0, p0, p2}, Lscala/util/PropertiesTrait$$anonfun$scalaPropOrElse$1;-><init>(Lscala/util/PropertiesTrait;Ljava/lang/String;)V

    invoke-virtual {p1}, Lscala/Option;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lscala/util/PropertiesTrait$$anonfun$scalaPropOrElse$1;->alt$3:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static scalaPropOrEmpty(Lscala/util/PropertiesTrait;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 67
    invoke-interface {p0, p1, v0}, Lscala/util/PropertiesTrait;->scalaPropOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static scalaPropOrNone(Lscala/util/PropertiesTrait;Ljava/lang/String;)Lscala/Option;
    .locals 2

    .line 68
    sget-object v0, Lscala/Option$;->MODULE$:Lscala/Option$;

    invoke-interface {p0}, Lscala/util/PropertiesTrait;->scalaProps()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Option$;->apply(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "scala."

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/util/PropertiesTrait;->propOrNone(Ljava/lang/String;)Lscala/Option;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lscala/Option;

    :cond_0
    return-object v0
.end method

.method public static scalaProps(Lscala/util/PropertiesTrait;)Ljava/util/Properties;
    .locals 4

    .line 35
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 36
    invoke-interface {p0}, Lscala/util/PropertiesTrait;->pickJarBasedOn()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p0}, Lscala/util/PropertiesTrait;->propFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 38
    new-instance v2, Lscala/util/PropertiesTrait$$anonfun$scalaProps$1;

    invoke-direct {v2, p0, v0, v1}, Lscala/util/PropertiesTrait$$anonfun$scalaProps$1;-><init>(Lscala/util/PropertiesTrait;Ljava/util/Properties;Ljava/io/InputStream;)V

    new-instance v3, Lscala/util/PropertiesTrait$$anonfun$scalaProps$2;

    invoke-direct {v3, p0, v1}, Lscala/util/PropertiesTrait$$anonfun$scalaProps$2;-><init>(Lscala/util/PropertiesTrait;Ljava/io/InputStream;)V

    invoke-static {p0, v2, v3}, Lscala/util/PropertiesTrait$class;->quietlyDispose(Lscala/util/PropertiesTrait;Lscala/Function0;Lscala/Function0;)V

    :cond_0
    return-object v0
.end method

.method public static scalacCmd(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 0

    .line 165
    invoke-interface {p0}, Lscala/util/PropertiesTrait;->isWin()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "scalac.bat"

    goto :goto_0

    :cond_0
    const-string p0, "scalac"

    :goto_0
    return-object p0
.end method

.method public static setProp(Lscala/util/PropertiesTrait;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    invoke-static {p1, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sourceEncoding(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 2

    const-string v0, "file.encoding"

    const-string v1, "UTF-8"

    .line 113
    invoke-interface {p0, v0, v1}, Lscala/util/PropertiesTrait;->scalaPropOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sourceReader(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 2

    const-string v0, "source.reader"

    const-string v1, "scala.tools.nsc.io.SourceReader"

    .line 114
    invoke-interface {p0, v0, v1}, Lscala/util/PropertiesTrait;->scalaPropOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static tmpDir(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 1

    const-string v0, "java.io.tmpdir"

    .line 139
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->propOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static userDir(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 1

    const-string v0, "user.dir"

    .line 140
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->propOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static userHome(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 1

    const-string v0, "user.home"

    .line 141
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->propOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static userName(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 1

    const-string v0, "user.name"

    .line 142
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->propOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static versionMsg(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 1

    .line 163
    invoke-interface {p0}, Lscala/util/PropertiesTrait;->propCategory()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lscala/util/PropertiesTrait$class;->scala$util$PropertiesTrait$$versionFor(Lscala/util/PropertiesTrait;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static versionNumberString(Lscala/util/PropertiesTrait;)Ljava/lang/String;
    .locals 1

    const-string v0, "version.number"

    .line 102
    invoke-interface {p0, v0}, Lscala/util/PropertiesTrait;->scalaPropOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
